function  image_new  = nearest_neighbor_black_and_white( I,ratio )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
    [h, w] = size(I)
    image_new = 255*ones(round(h*ratio),round(w*ratio),'uint8')

    for J = 1 : w*ratio
        for K = 1 : h*ratio
            if round(J/ratio)==0 | round(K/ratio)==0
               image_new(round(J),round(K))=125;
            else
               image_new(round(J),round(K))=I(round(J/ratio),round(K/ratio)); 
            end
        end
    end
    


end

