function [Difference] = percentDif (Num1, Num2)
% This function is to compare two numbers and calculate the percent
% difference between the two based on the smaller of the 2 numbers
% 
% Inputs: First number, Second number
%
% Outputs: The percent difference between the two numbers; Difference 
%
% Created by Kelsey Zary in MATLAB R2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First initialize the output variable
Difference = 1;

% Next determine which number is the smallest and which is the largest and
% calculate the percent difference
% Percent difference is always set to be calculated based on the smaller of
% the 2 numbers
if Num1 > Num2
    smallest = Num2;
    largest = Num1;
    Difference = (1 - smallest/largest) * 100;
elseif Num1 < Num2
    smallest = Num1;
    largest = Num2;
    Difference = (1 - smallest/largest) * 100;
elseif Num1 == Num2;
    Difference = 0;
else
    disp('Error has occurred, please check your inputs to the percentDif function');
end