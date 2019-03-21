function I_new = nearest_neighbor_rgb( I, ratio )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    redChannel = I(:,:,1); % Red channel
    greenChannel = I(:,:,2); % Green channel
    blueChannel = I(:,:,3); % Blue channel

    

   
    
   
   
    [h, w] = size(redChannel)
    redChannel_new=zeros(floor(ratio*size(I, 1)), floor(ratio*size(I, 2)), 'uint8');
   
    
    for J = 1 : w*ratio
        for K = 1 : h*ratio
            if round(J/ratio)==0 | round(K/ratio)==0
               redChannel_new(round(J),round(K))=125;
            else
               redChannel_new(round(J),round(K))=redChannel(round(J/ratio),round(K/ratio)); 
            end
        end
    end
    
   
    [h, w] = size(blueChannel)
    blueChannel_new=zeros(floor(ratio*size(I, 1)), floor(ratio*size(I, 2)), 'uint8');;
    
    
    for J = 1 : w*ratio
        for K = 1 : h*ratio
            if round(J/ratio)==0 | round(K/ratio)==0
               blueChannel_new(round(J),round(K))=125;
            else
               blueChannel_new(round(J),round(K))=blueChannel(round(J/ratio),round(K/ratio)); 
            end
        end
    end
    
    
    [h, w] = size(greenChannel)
    greenChannel_new=zeros(floor(ratio*size(I, 1)), floor(ratio*size(I, 2)), 'uint8');;
    
    for J = 1 : w*ratio
        for K = 1 : h*ratio
            if round(J/ratio)==0 | round(K/ratio)==0
               greenChannel_new(round(J),round(K))=125;
            else
               greenChannel_new(round(J),round(K))=greenChannel(round(J/ratio),round(K/ratio)); 
            end
        end
    end
    
    
    I_new= cat(3, redChannel_new, greenChannel_new, blueChannel_new);
   


end

