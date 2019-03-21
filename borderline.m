function border = borderline( image )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
    I = im2bw(image,0.5)
    [y, x]=size(I)
    border=zeros(y,x,'logical')
    border1=uint8(border)
    for j=2:x-1
        for i=2:y-1
            if  I(i-1,j) ~= I(i,j) || I(i+1,j) ~=I(i,j) ||...
                I(i,j-1) ~= I(i,j) || I(i+1,j+1) ~=I(i,j)
                border(i,j)=1

            elseif I(i-1,j-1) ~= I(i,j) || I(i+1,j-1) ~=I(i,j) ||...
               I(i-1,j+1) ~= I(i,j) || I(i+1,j+1) ~=I(i,j)
               border(i,j)=1
            end
        end
    end
end

