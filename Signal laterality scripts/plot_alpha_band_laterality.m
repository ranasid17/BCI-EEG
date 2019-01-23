% alpha/beta/delta_band_laterality script
% Plot alpha/beta/delta REST ratios
%close all
clc
% Concatenate REST (Early + Late) ratios 
allPts_Rest = zeros(150, 10, 8);
allPts_Rest(:,:,1) = ratio_RestFirst_alpha(:,:); 
allPts_Rest(:,:,2) = ratio_RestLast_alpha(:,:);
allPts_Rest(:,:,3) = ratio_RestFirst_beta(:,:); 
allPts_Rest(:,:,4) = ratio_RestLast_beta(:,:);
allPts_Rest(:,:,5) = ratio_RestFirst_delta(:,:); 
allPts_Rest(:,:,6) = ratio_RestLast_delta(:,:);
allPts_Rest(:,:,7) = ratio_RestLast_ftfreq(:,:);
allPts_Rest(:,:,8) = ratio_RestLast_ftfreq(:,:);

% Concatenate TASK (Early + Late) ratios 
allPts_Task = zeros(150, 10, 8);
allPts_Task(:,:,1) = ratio_MoveFirst_alpha(:,:);
allPts_Task(:,:,2) = ratio_MoveLast_alpha(:,:);
allPts_Task(:,:,3) = ratio_MoveFirst_beta(:,:); 
allPts_Task(:,:,4) = ratio_MoveLast_beta(:,:);
allPts_Task(:,:,5) = ratio_MoveFirst_delta(:,:);
allPts_Task(:,:,6) = ratio_MoveLast_delta(:,:); 
allPts_Task(:,:,7) = ratio_MoveLast_ftfreq(:,:);
allPts_Task(:,:,8) = ratio_MoveLast_ftfreq(:,:);

% Concatenate DIFFERENCE ratios
allPts_Difference = zeros(150, 10, 8);
allPts_Difference(:,:,1) = ratio_RestDifference_alpha(:,:);
allPts_Difference(:,:,2) = ratio_MoveDifference_alpha(:,:);
allPts_Difference(:,:,3) = ratio_RestDifference_beta(:,:);
allPts_Difference(:,:,4) = ratio_MoveDifference_beta(:,:);
allPts_Difference(:,:,5) = ratio_RestDifference_delta(:,:); 
allPts_Difference(:,:,6) = ratio_MoveDifference_delta(:,:);
allPts_Difference(:,:,7) = ratio_MoveDifference_ftfreq(:,:);
allPts_Difference(:,:,8) = ratio_MoveDifference_ftfreq(:,:);

% Plot REST subplots
titles = {'Early Rest Median Lateralities, Alpha Band'; 
    'Late Rest Median Lateralities, Alpha Band';
    'Early Rest Median Lateralities, Beta Band';
    'Late Rest Median Lateralities, Beta Band';
    'Early Rest Median Lateralities, Delta Band'; 
    'Late Rest Median Lateralities, Delta Band';
    'Early Rest Ft. Frq Median Lateralities, Ft. Frq';
    'Late Rest Ft. Frq Median Lateralities, Ft. Frq'}; 
figure()
for i = 1:8
    subplot(5,2,i);
    boxplot(allPts_Rest(:,:,i))
    title(titles{i})
    ylim([0, 5])
end
% Plot MOVE subplots
titles = {'Early Move Median Lateralities, Alpha Band'; 
    'Late Move Median Lateralities, Alpha Band';
    'Early Move Median Lateralities, Beta Band';
    'Late Move Median Lateralities, Beta Band';
    'Early Move Median Lateralities, Delta Band'; 
    'Late Move Median Lateralities, Delta Band';
    'Early Move Median Lateralities, Ft. Frq';
    'Late Move Median Lateralities, Ft. Frq'}; 
figure()
for i = 1:8
    subplot(5,2,i)
    boxplot(allPts_Task(:,:,i))
    title(titles{i})
    ylim([0,5])
end
% Plot DIFFERENCE subplots
titles = {'Change in Rest Median Lateralities, Alpha Band'; 
    'Change in Move Median Lateralities, Alpha Band';
    'Change in Rest Median Lateralities, Beta Band';
    'Change in Move Median Lateralities, Beta Band';
    'Change in Rest Median Lateralities, Delta Band'; 
    'Change in Move Median Lateralities, Delta Band';
    'Change in Rest Median Lateralities, Ft. Frq';
    'Change in Move Median Lateralities, Ft. Frq'}; 
figure()
for i = 1:8
    subplot(5,2,i);
    boxplot(allPts_Difference(:,:,i))
    title(titles{i})
    ylim([-5, 5])
end
