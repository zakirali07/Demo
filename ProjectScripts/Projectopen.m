% This script will check if the folder paths are correct for the project.
% If the folders doesnot exist then it will create them


%% Clear workspace
clc;
clear all;

%% Get current Project
p = slproject.getCurrentProject;


%% Get Project root
projectRoot = p.RootFolder;

%% Set Location for different folders
myDataFolder = fullfile(projectRoot, 'MBD/dataFiles');
myModelFolder = fullfile(projectRoot, 'MBD/ModelFiles');
myRequirementsFolder = fullfile(projectRoot, 'MBD/RequirementsFiles');
myCodeGenFolder = fullfile(projectRoot, 'MBD/CodeGenFiles');
myMILTestFolder = fullfile(projectRoot, 'MBD/MILTestFiles');
mySILTestFolder = fullfile(projectRoot, 'MBD/SILTestFiles');
myHILTestFolder = fullfile(projectRoot, 'MBD/HILTestFiles');

%% Check if the folders are already present, If not make the directories
if ~exist(myDataFolder,'dir')
    mkdir(myDataFolder);
end
if ~exist(myModelFolder,'dir')
    mkdir(myModelFolder);
end
if ~exist(myRequirementsFolder,'dir')
    mkdir(myRequirementsFolder)
end
if ~exist(myCodeGenFolder,'dir')
    mkdir(myCodeGenFolder);
end
if ~exist(myMILTestFolder,'dir')
    mkdir(myMILTestFolder);
end
if ~exist(mySILTestFolder,'dir')
    mkdir(mySILTestFolder);
end
if ~exist(myHILTestFolder,'dir')
    mkdir(myHILTestFolder);
end

%% Load Call backs, Configuration Files, CAN Database, Calibrations
% CAN_Database(.dbc file) - Vector db++ editor
% Third party files




