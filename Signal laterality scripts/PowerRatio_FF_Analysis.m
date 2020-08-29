% Script overview:
%   1) Merge 'createArrayForPCA', 'PCAFunction', 'centroidCalculation'
%   2) Run PCA on early and late MR, MT data for Patients 1-10 
%   3) Calculate average centroids from PCA results " " 
%   4) Calculate change in avg centroid location " " 
%   5) Constrict to ALPHA BAND only

% Define center frq and wavelet width
cf = [15,16,19,11,11,9,15,11,11,17];
fwhm = 1;

% Find wavelet span (in time domain)
[span] = fwhm2span(cf, fwhm); %fwhm2span.m
[fwhm] = span2fwhm(cf, span); %span2fwhm.m

% Preallocate outside loop to previde overriding w 0s
ratio_RestFirst_ftfreq= zeros(150,10);
ratio_RestLast_ftfreq = zeros(150,10);
ratio_MoveFirst_ftfreq = zeros(150, 10);
ratio_MoveLast_ftfreq = zeros(150, 10);

%purpose: prep data (ipsi, contra), wavelet analysis, median calcs
%(first/last + rest/move, ipsi, contra)
for i = 1:10
    % Step 1: Data Prep
    %%CreateArrayforPCA -> PCA -> CalcCentroid for 10 patients (unpooled data)
    Cell1a = FullRawRestMat{i}; % 30x2000x2x260
    Cell1b = FullRawTaskMat{i}; % 30x2000x2x260
    % exceptions for runs to count in early vs late analyses
    cur_subj = ptID(i);
    runsToCount = getRuns2Count(cur_subj,Cell1a);
    %%constrain cell1 to FIRST 5 sessions, ipsi + contra
    ipsiA = Cell1a(:, :, ipsi(i), runsToCount(1:5)); %First 5 REST sessions w no 0s, ipsi
    ipsiB = Cell1b(:, :, ipsi(i), runsToCount(1:5)); %"     " TASK "                    "
    %%constrain cell to LAST 5 sessions, ipsi + contra
    ipsiC = Cell1a(:, :, ipsi(i), runsToCount(6:10)); %Last 5 REST sessions w no 0s, ipsi
    ipsiD = Cell1b(:, :, ipsi(i), runsToCount(6:10)); %"    " TASK "                          "
    
    %%remove singleton dim, change data order, FFT for IPSILATERAL HEMISPHERE
    ipsiA = squeeze(ipsiA); ipsiA = permute(ipsiA,[2 1 3]); %fftIpsiA = fft(ipsiA);
    ipsiB = squeeze(ipsiB); ipsiB = permute(ipsiB, [2 1 3]); %fftIpsiB = fft(ipsiB);
    ipsiC = squeeze(ipsiC); ipsiC = permute(ipsiC, [2 1 3]); %fftIpsiC = fft(ipsiC);
    ipsiD = squeeze(ipsiD); ipsiD = permute(ipsiD, [2 1 3]); %fftIpsiD = fft(ipsiD);
    
    %%allocate memory
    dataFirstIpsi = zeros(2000, 300);
    dataLastIpsi = zeros(2000, 300);
    % Step 1b: fill array w FFT data
    a = 1;
    while (a<=300)
        for j = 1:5
            %Fill REST sessions (FIRST + LAST), ipsi
            dataFirstIpsi(:, a:a+29) = ipsiA(:, :, j);
            dataLastIpsi(:, a:a+29) = ipsiC(:, :, end-5+j);
            a = a + 30;
        end
        for j = 1:5
            % Fill MOVE 5 sessions (FIRST + LASTT), ipsI
            dataFirstIpsi(:, a:a+29, :) = ipsiB(:, :, j);
            dataLastIpsi(:, a:a+29) = ipsiD(:, :, end-5+j);
            a = a + 30;
        end
    end
    % Step 2: Wavelet analysis + median calc
    % Gabor wavelet function, ipsi (output is complex signal)
    [gabor_responseFirst_ipsi] = gabor_response_span(dataFirstIpsi, cf, span, Fs);
    [gabor_responseLast_ipsi] = gabor_response_span(dataLastIpsi, cf, span, Fs);
    %Power envolope, ipsi
    power_envFirst_ipsi = squeeze(abs(gabor_responseFirst_ipsi).^2);
    power_envLast_ipsi = squeeze(abs(gabor_responseLast_ipsi).^2);
    
    %%Separate alpha power data into REST and MOVE (FIRST 5 sessions, ipsi)
    REST_DataFirst_ipsi = power_envFirst_ipsi(:, 1:150);
    MOVE_DataFirst_ipsi = power_envFirst_ipsi(:, 151:300);
    %%Calc median of each REST and MOVE COLUMN
    medianRestF_ipsi = median(REST_DataFirst_ipsi);
    medianMoveF_ipsi = median(MOVE_DataFirst_ipsi);
    
    %%REPEAT for LAST 5 sessions, ipsi
    %%Separate alpha power data into REST and MOVE (LAST 5)
    restDataLast_ipsi = power_envLast_ipsi(:, 1:150);
    moveDataLast_ipsi = power_envLast_ipsi(:, 151:300);
    %Calc median of each REST and MOVE column
    medianRestL_ipsi = median(restDataLast_ipsi);
    medianMoveL_ipsi = median(moveDataLast_ipsi);
    % END MEDIAN REST/MOVE CALCULATION FOR FIRST AND LAST 5 TRIALS
    
    %% REPEAT FOR CONTRA DATA
    
    % Step 1: Data Prep
    %%CreateArrayforPCA -> PCA -> CalcCentroid for 10 patients (unpooled data)
    Cell2a = FullRawRestMat{i}; % 30x2000x2x260
    Cell2b = FullRawTaskMat{i}; % 30x2000x2x260
    % exceptions for runs to count in early vs late analyses
    cur_subj = ptID(i);
    runsToCount = getRuns2Count(cur_subj,Cell2a);
    %%constrain cell1 to FIRST 5 sessions, contra
    contraA = Cell2a(:, :, contra(i), runsToCount(1:5)); %First 5 REST sessions w no 0s, contra
    contraB = Cell2b(:, :, contra(i), runsToCount(1:5)); %"     " TASK "                "
    %%constrain cell to LAST 5 sessions, contra
    contraC = Cell2a(:, :, contra(i), runsToCount(6:10)); %Last 5 REST sessions w no 0s, contra
    contraD = Cell2a(:, :, contra(i), runsToCount(6:10)); %"    " TASK "                      "
    
    %%remove singleton dim, change data order, FFT for CONTRALATERAL HEMISPHERE
    
    contraA = squeeze(contraA); contraA = permute(contraA,[2 1 3]); %fftContraA = fft(contraA);
    contraB = squeeze(contraB); contraB = permute(contraB,[2 1 3]); %fftContraB = fft(contraB);
    contraC = squeeze(contraC); contraC = permute(contraC,[2 1 3]); %fftContraC = fft(contraC);
    contraD = squeeze(contraD); contraD = permute(contraD, [2 1 3]); %fftontraD = fft(contraD);
    %%allocate memory
    dataFirstContra = zeros(2000,300);
    dataLastContra = zeros(2000, 300);
    % Step 2: fill array w FFT data
    a = 1;
    while (a<=300)
        for j = 1:5
            %Fill FIRST 5 sessions (REST + MOVE), contra
            dataFirstContra(:, a:a+29) = contraA(:, :, j);
            dataLastContra(:, a:a+29) = contraC(:, :, end-5+j);
            a = a + 30;
        end
        for j = 1:5
            %Fill LAST 5 sessions (REST + MOVE), contra
            dataFirstContra(:, a:a+29, :) = contraB(:, :, j);
            dataLastContra(:, a:a+29) = contraD(:, :, end-5+j);
            a = a + 30;
        end
    end
    % Step 3: Wavelet analysis + median calc
    %Gabor wavelet function, contra
    [gabor_responseFirst_contra] = gabor_response_span(dataFirstContra, cf, span, Fs);
    [gabor_responseLast_contra] = gabor_response_span(dataLastContra, cf, span, Fs);
    %Power envelope, contra
    alpha_power_envFirst_contra = squeeze(abs(gabor_responseFirst_contra).^2);
    alpha_power_envLast_contra = squeeze(abs(gabor_responseLast_contra).^2);
    
    %%Separate alpha power data into REST and MOVE (FIRST 5 sessions, contra)
    REST_DataFirst_contra = alpha_power_envFirst_contra(:, 1:150);
    MOVE_DataFirst_contra = alpha_power_envFirst_contra(:, 151:300);
    %%Calc median of each REST and MOVE COLUMN
    medianRestF_contra = median(REST_DataFirst_contra);
    medianMoveF_contra = median(MOVE_DataFirst_contra);
    
    %%REPEAT Lines 175-179 for LAST 5 sessions, contra
    %%Separate alpha power data into REST and MOVE (LAST 5)
    REST_DataLast_contra = power_envLast_contra(:, 1:150);
    MOVE_DataLast_contra = power_envLast_contra(:, 151:300);
    %Calc median of each REST and MOVE column
    medianRestL_contra = median(REST_DataLast_contra);
    medianMoveL_contra = median(MOVE_DataLast_contra);
    % END CONTRA CALCS
    
    %% Calc contra:ipsi power ratio for each trial (FIRST + LAST)
    ratio_RestFirst_ContraIpsi = medianRestF_contra./medianRestF_ipsi;
    ratio_RestLast_ContraIpsi = medianRestL_contra./medianRestL_ipsi;
    ratio_MoveFirst_ContraIpsi = medianMoveF_contra./medianMoveF_ipsi;
    ratio_MoveLast_ContraIpsi = medianMoveL_contra./medianMoveL_ipsi;
    
    % Store ratios in array
    ratio_RestFirst_ftfreq(:, i) = ratio_RestFirst_ContraIpsi(1, :);
    ratio_RestLast_ftfreq(:, i) = ratio_RestLast_ContraIpsi(1, :);
    ratio_MoveFirst_ftfreq(:, i) = ratio_MoveFirst_ContraIpsi(1, :);
    ratio_MoveLast_ftfreq(:, i) = ratio_MoveLast_ContraIpsi(1, :);
end
%% Calc difference in early - late medians
ratio_RestDifference_ftfreq = ratio_RestLast_ftfreq - ratio_RestFirst_ftfreq;
ratio_MoveDifference_ftfreq = ratio_MoveLast_ftfreq - ratio_MoveFirst_ftfreq;

