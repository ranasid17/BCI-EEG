function runsToCount = getRuns2Count(cur_subj,ptData)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


% initialize runsToCount

% finding the last valid trial
goodTrial = false(size(ptData,4),1);
for trial = 1:numel(goodTrial)
    sA = sum(ptData(:, :, 1, trial)); SA = sum(sA, 2); %sum cols then rows
    sB = sum(ptData(:, :, 1, trial)); SB = sum(sB, 2); %sum cols then rows
    if (SA == 0) || (SB == 0)
    else
        goodTrial(trial) = true;
    end
end
goodTrialInd = find(goodTrial);
goodTrialLastInd = goodTrialInd(end-4:end);

runsToCount = nan(1,10);
runsToCount(1:5) = [1,2,3,4,5];
runsToCount(6:10) = goodTrialLastInd;

if cur_subj == 1
    runsToCount(1:5) = [1,3,4,5,6];
elseif cur_subj == 9
    runsToCount(1:5) = [1,2,3,5,6];
elseif cur_subj == 11
    runsToCount(1:5) = [1,3,4,6,7];
elseif cur_subj == 12
    runsToCount(6:10) = [58,59,60,61,63];
elseif cur_subj == 17
    runsToCount(6:10) = [69,70,71,72,74];
end

end
