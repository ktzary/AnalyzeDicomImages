function [Area] = pixelsToCentimeters(totalPixels, ImageCalcLength)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function is to convert the area in pixels to an equivalent area in
% centimeters. 
%
% This script currently only supports measured centimeters of 2 and 2.5
%
% Inputs: total Pixels in ROI, pixels per CM based on 1050 X 1400 image
%
% Outputs: Area in centimeters
% 
% Created by: Kelsey Zary in Matlab R2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First initialize the variable being manipulated
pixelsPerCM = 0;

% Use switch cases to determine the amount of pixels per CM^2 based on the
% centimeter input

switch(ImageCalcLength);
    case 2
        pixelsPerCM = 34969; % this is 187 squared
    case 2.5
        pixelsPerCM = 32400; % this is 180 squared
    otherwise
        disp('Error has occured, please check your inputs to the pixelsToCentimeters function');
end

% Calculate the area in centimeters squared
Area = totalPixels/pixelsPerCM;
end
    