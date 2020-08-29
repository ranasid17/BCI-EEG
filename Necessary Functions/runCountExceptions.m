
% exceptions for runs to count in early vs late analyses
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