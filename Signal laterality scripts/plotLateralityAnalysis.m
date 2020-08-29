% Plot change in laterality v. change in ARAT

% alpha/beta/delta_band_laterality script
% Plot alpha/beta/delta REST ratios
% close all
clc

ARATchange = [12.5, 0.5, 8, 6, 2, 6, 1, 7, 13.5, 5.5]; %arat scores
Fit_medAllPts_Difference = zeros(150, 150);

% Concatenate DIFFERENCE ratios
allPts_Difference(:,:,1) = ratio_RestDifference_alpha(:,:);
allPts_Difference(:,:,2) = ratio_MoveDifference_alpha(:,:);
allPts_Difference(:,:,3) = ratio_RestDifference_beta(:,:);
allPts_Difference(:,:,4) = ratio_MoveDifference_beta(:,:);
allPts_Difference(:,:,5) = ratio_RestDifference_delta(:,:);
allPts_Difference(:,:,6) = ratio_MoveDifference_delta(:,:);
allPts_Difference(:,:,7) = ratio_RestDifference_ftfreq(:,:);
allPts_Difference(:,:,8) = ratio_MoveDifference_ftfreq(:,:);
allPts_Difference(:,:,9) = ratio_RestDifference_theta(:,:);
allPts_Difference(:,:,10) = ratio_MoveDifference_theta(:,:);

%This is the array plotted: median values of change in alpha/beta/delta/ft
medAllPts_Difference = nanmedian(allPts_Difference);
%remove singleton dim from med calc
medAllPts_Difference = squeeze(medAllPts_Difference);
%tpose arat matrix for calc purposes
ARATposed = ARATchange';
%Corr coeff + p value calc
[rho, p] = corr(medAllPts_Difference, ARATposed,'type', 'spearman');

% [r,m,b] = regression(medAllPts_Difference, ARATchange);

titles = {'Change in Rest Median Lateralities, Alpha Band';
    'Change in Move Median Lateralities, Alpha Band';
    'Change in Rest Median Lateralities, Beta Band';
    'Change in Move Median Lateralities, Beta Band';
    'Change in Rest Median Lateralities, Delta Band';
    'Change in Move Median Lateralities, Delta Band';
    'Change in Rest Median Lateralities, Ft. Frq';
    'Change in Move Median Lateralities, Ft. Frq';
    'Change in Rest Median Lateralities, Theta Band';
    'Change in Move Median Lateralities, Theta Band'};

% Modified from 'Resting Power Panel Fig' (Joey)
% Plot change in Contralateral:Ipsilateral ratio of signal from FIRST ... 
% five trials vs. LAST five trials
% TOP ROW: Change in Contra:Ispilat ratio when in REST state
% BOTTOM ROW: "                                 " TASK state
% Each column: Band frequency (alpha, beta, delta, feat, theta)

% Motor - UPDATES FOR PAPER
close all

%define colors
rd = [0.7 0.1 0.1];
% blu = [0 0.447 0.741];
blu = [0.301 0.745 0.933]; %actually cyan
grn = [0.466 0.674 0.188];
% oj = [0.85 0.325 0.098];
oj = [0.494 0.184 0.556]; %actually purple

figure

%ALPHA REST med change
subplot(2,5,3)
[r p] = corr(medAllPts_Difference(:,1), ARATposed,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,1), ARATposed,'.','Color',blu,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Alpha Band, r = %5.4f, p = %5.4f',r,p))

conditional_lsline;

%ALPHA MOVE med change
subplot(2,5,8)
[r p] = corr(medAllPts_Difference(:,2), ARATposed,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,2),ARATposed,'.','Color',rd,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Alpha Band, r = %5.4f, p = %5.4f',r,p))

conditional_lsline;

%BETA REST med change
subplot(2,5,4)
[r p] = corr(medAllPts_Difference(:,3), ARATposed,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,3),ARATposed,'.','Color',blu,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Beta Band, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%BETA MOVE med change 
subplot(2,5,9)
[r p] = corr(medAllPts_Difference(:,4), ARATposed,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,4), ARATposed,'.','Color',rd,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Beta Band, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%DELTA REST med change
subplot(2,5,1)
[r p] = corr(medAllPts_Difference(:,5), ARATposed,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,5), ARATposed,'.','Color',blu,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Delta Band, r = %5.4f, p = %5.4f',r,p))
xlabel('Rest state Contralateral:Ipsilateral Signal Change')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%DELTA MOVE med change
subplot(2,5,6)
[r p] = corr(medAllPts_Difference(:,6), ARATposed,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,6), ARATposed,'.','Color',rd,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Delta Band, r = %5.4f, p = %5.4f',r,p))
xlabel('Task state Contralateral:Ipsilateral Signal Change')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%FT FRQ REST med change
subplot(2,5,5)
[r p] = corr(medAllPts_Difference(:,7), ARATposed,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,7), ARATposed, '.','Color',blu,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Feat. Freq, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%FT FRQ MOVE med change
subplot(2,5,10)
[r p] = corr(medAllPts_Difference(:,8), ARATposed,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,8), ARATposed,'.','Color',rd,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Feat. Freq, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%THETA REST med change
subplot(2,5,2)
[r p] = corr(medAllPts_Difference(:,9), ARATposed,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,9), ARATposed, '.','Color',blu,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Theta Band, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%THETA MOVE med change
subplot(2,5,7)
[r p] = corr(medAllPts_Difference(:,10), ARATposed,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(medAllPts_Difference(:,10), ARATposed,'.','Color',rd,'MarkerSize',24)
ylim([0, 14])
title(sprintf('Theta Band, r = %5.4f, p = %5.4f',r,p))
conditional_lsline;
