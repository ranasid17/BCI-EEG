%% Step 1: createArrayForPCA
clc
close all

% load data 
% load('D:\Sid\Data\MotorRest.mat') % Uncomment if on PC 
% load('D:\Sid\Data\MotorTask.mat') % " " 
% load('/Users/Sid/Downloads/EEG Data/MotorRest.mat') % Uncomment if on Mac
% load('/Users/Sid/Downloads/EEG Data/MotorTask.mat') % " " 

% Remove empty cells from REST condition data
emptyCell = false(numel(MotorRest),1); 
for i = 1:numel(MotorRest)
    if isempty(MotorRest{i})
        emptyCell(i) = true;
    end
end
MotorRest(emptyCell) = [];

% Remove empty cells from TASK condition data
emptyCell = false(numel(MotorTask),1);
for i = 1:numel(MotorTask)
    if isempty(MotorTask{i})
        emptyCell(i) = true;
    end
end
MotorTask(emptyCell) = [];

goodCell = ~emptyCell;
ptID = find(goodCell);
