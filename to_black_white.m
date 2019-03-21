function new_image = to_black_white( I, treshold)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    new_image = I
    new_image(I>120)=255
    new_image(I<=120)=0
end

