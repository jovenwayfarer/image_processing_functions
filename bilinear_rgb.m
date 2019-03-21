function I_new = bilinear_rgb( I, ratio )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    redChannel = I(:,:,1); % Red channel
    greenChannel = I(:,:,2); % Green channel
    blueChannel = I(:,:,3); % Blue channel
   
    [h, w] = size(redChannel)
    H = floor(ratio * h);
    W = floor(ratio * w);
    redChannel_new=zeros(H, W, 'uint8');
    hs = (h/H);
    ws = (w/W);
        for i=1:H
          y = (hs * i) ;
            for j=1:W
               x = (ws * j) ;
          %// Any values out of acceptable range
              x(x < 1) = 1;
              x(x > h - 0.001) = h - 0.001;
              x1 = floor(x);
              x2 = x1 + 1;
              y(y < 1) = 1;
              y(y > w - 0.001) = w - 0.001;
              y1 = floor(y);
              y2 = y1 + 1;
          %// 4 Neighboring Pixels
              NP1 = redChannel(y1,x1);
              NP2 = redChannel(y1,x2);
              NP3 = redChannel(y2,x1); 
              NP4 = redChannel(y2,x2);
          %// 4 Pixels Weights
              PW1 = (y2-y)*(x2-x);
              PW2 = (y2-y)*(x-x1);
              PW3 = (x2-x)*(y-y1);
              PW4 = (y-y1)*(x-x1);
              redChannel_new(i,j) = (PW1 * NP1 + PW2 * NP2 + PW3 * NP3 + PW4 * NP4)/((x2-x1)*(y2-y1));
            end
        end
        
    
             
    [h, w] = size(blueChannel);
    H = floor(ratio * h);
    W = floor(ratio * w);
    blueChannel_new = zeros(H, W, 'uint8');
    hs = (h/H);
    ws = (w/W);
        for i=1:H
          y = (hs * i) ;
            for j=1:W
               x = (ws * j) ;
          %// Any values out of acceptable range
              x(x < 1) = 1;
              x(x > h - 0.001) = h - 0.001;
              x1 = floor(x);
              x2 = x1 + 1;
              y(y < 1) = 1;
              y(y > w - 0.001) = w - 0.001;
              y1 = floor(y);
              y2 = y1 + 1;
          %// 4 Neighboring Pixels
              NP1 = blueChannel(y1,x1);
              NP2 = blueChannel(y1,x2);
              NP3 = blueChannel(y2,x1); 
              NP4 = blueChannel(y2,x2);
          %// 4 Pixels Weights
              PW1 = (y2-y)*(x2-x);
              PW2 = (y2-y)*(x-x1);
              PW3 = (x2-x)*(y-y1);
              PW4 = (y-y1)*(x-x1);
              blueChannel_new(i,j) = (PW1 * NP1 + PW2 * NP2 + PW3 * NP3 + PW4 * NP4)/((x2-x1)*(y2-y1));              
            end
        end
        
              
    [h, w] = size(greenChannel)
    H = floor(ratio * h);
    W = floor(ratio * w);
    greenChannel_new = zeros(H, W, 'uint8');
    hs = (h/H);
    ws = (w/W);
        for i=1:H
          y = (hs * i) ;
            for j=1:W
               x = (ws * j) ;
          %// Any values out of acceptable range
              x(x < 1) = 1;
              x(x > h - 0.001) = h - 0.001;
              x1 = floor(x);
              x2 = x1 + 1;
              y(y < 1) = 1;
              y(y > w - 0.001) = w - 0.001;
              y1 = floor(y);
              y2 = y1 + 1;
          %// 4 Neighboring Pixels
              NP1 = greenChannel(y1,x1);
              NP2 = greenChannel(y1,x2);
              NP3 = greenChannel(y2,x1); 
              NP4 = greenChannel(y2,x2);
          %// 4 Pixels Weights
              PW1 = (y2-y)*(x2-x);
              PW2 = (y2-y)*(x-x1);
              PW3 = (x2-x)*(y-y1);
              PW4 = (y-y1)*(x-x1);
              greenChannel_new(i,j) = (PW1 * NP1 + PW2 * NP2 + PW3 * NP3 + PW4 * NP4)/((x2-x1)*(y2-y1));  
            end
        end
     I_new= cat(3, redChannel_new, greenChannel_new, blueChannel_new);
end

