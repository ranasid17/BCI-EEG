% Plot change in laterality v. change in ARAT

% alpha/beta/delta_band_laterality script
% Plot alpha/beta/delta REST ratios
close all
clc

ARATchange = [12.5, 0.5, 8, 6, 2, 6, 1, 7, 13.5, 5.5]; %arat scores
Fit_medAllPts_Difference = zeros(2, 8);

% Concatenate DIFFERENCE ratios
allPts_Difference(:,:,1) = ratio_RestDifference_alpha(:,:);
allPts_Difference(:,:,2) = ratio_MoveDifference_alpha(:,:);
allPts_Difference(:,:,3) = ratio_RestDifference_beta(:,:);
allPts_Difference(:,:,4) = ratio_MoveDifference_beta(:,:);
allPts_Difference(:,:,5) = ratio_RestDifference_delta(:,:);
allPts_Difference(:,:,6) = ratio_MoveDifference_delta(:,:);
allPts_Difference(:,:,7) = ratio_RestDifference_ftfreq(:,:);
allPts_Difference(:,:,8) = ratio_MoveDifference_ftfreq(:,:);

%This is the array plotted: median values of change in alpha/beta/delta/ft
medAllPts_Difference = nanmedian(allPts_Difference);
%remove singleton dim from med calc
medAllPts_Difference = squeeze(medAllPts_Difference);
%tpose arat matrix for calc purposes
ARATposed = ARATchange'; 
%Corr coeff + p value calc
[rho, pval] = corr(medAllPts_Difference, ARATposed,'type', 'spearman');

% [r,m,b] = regression(medAllPts_Difference, ARATchange); 

titles = {'Change in Rest Median Lateralities, Alpha Band';
    'Change in Move Median Lateralities, Alpha Band';
    'Change in Rest Median Lateralities, Beta Band';
    'Change in Move Median Lateralities, Beta Band';
    'Change in Rest Median Lateralities, Delta Band';
    'Change in Move Median Lateralities, Delta Band';
    'Change in Rest Median Lateralities, Ft. Frq';
    'Change in Move Median Lateralities, Ft. Frq'};

for i =1:8
    subplot(4,2,i)
    scatter(medAllPts_Difference(:,i), ARATchange(:,:))
    title(titles{i})
    xlim([-0.8, 2.0]) %uniform x axis
    %LSRL calc
    h = lsline;
    Fit_medAllPts_Difference(:,i) = polyfit(h(1).XData, h(1).YData, 1);     
end


