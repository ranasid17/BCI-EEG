%%Remove runs of all 0s
a =0;
i = size(Cell1a,4); 
while (a < 5)
    sA = sum(Cell1a(:, :, 1, i)); SA = sum(sA, 2); %sum cols then rows
    sB = sum(Cell1b(:, :, 1, i)); SB = sum(sB, 2); %sum cols then rows
    if (SA == 0) || (SB == 0)
        fprintf('Run %d in Subject %d Removed - all zeros in Motor electrode\n', i, 1)
        i = i-1;
    else
        
        A(:,:,1, 5-a) = FullRawRestMat{1}(:,:,1,i);
        B(:,:,1, 5-a) = FullRawTaskMat{1}(:,:,1,i);
        i = i-1;
        a = a+1;
    end
end