clear;
clc;
%Define Target (Image)
TargetImage = imread('36x36monalisa.jpg');

%Generate Initial Population. Sequence Start.
Population = buildPopulationImage(15,TargetImage);

%keep breeding until reached max gen
MaxGen = 500;
Generation = 0;
while (Generation <= MaxGen)
    % a) Calculate Fitness.
    