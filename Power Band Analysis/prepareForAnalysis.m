%   Must run this script prior to PB_A.m or PB_FF_A.m 
%   Goal: Pre-process Rest and Task data to remove empty cells

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

% Parameter definitions 
Fs = 256; %sampling frequency
T = 1/Fs; %sampling frequency
L = 2000; %length of signal
t = (0:L-1)*T; %time vector

% Motor scores
ARATchange = [12.5 0.5 8 6 2 6 1 7 13.5 5.5];
% Define ipsi/contralesional electrodes
ipsi = [2,1,2,2,2,1,1,1,2,1];
contra = [1,2,1,1,1,2,2,2,1,2];
