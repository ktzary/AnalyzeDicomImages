%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This code is written to analyze dicom images by selecting a region of
% interest (ROI), determining the area of that region, and comparing the
% number calculated to the area calculated in another program.
%
% Inputs:
% 
% Outputs:
%
% Created by Kelsey Zary in MATLAB R2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Import Images

% Import the image by allowing the user to select the file they wish to use
% Image is then read in and displayed to ensure it is the correct image
% selected
Filename = input('What is the file you wish to use','s');
Image = dicomread(Filename);
imshow(Image);

% This allows the user to input the number of centimeters that the length
% of the image is for later conversion of pixels to centimeters
Centimeters = input('How many centimeters are shown on the right side of the image?');

%% Create ROI Mask

% A region of interest (ROI) is created to measure the area

processedImage = roipoly(Image);
maskImage = Image;
maskImage(processedImage) = 0;
roiPixel = processedImage(:,:,1) < 1;
Pixelcount = sum(sum(roiPixel == 0));
