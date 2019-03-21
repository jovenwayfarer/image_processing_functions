function  new_image  = bilinear_black_and_white( I,ratio )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    
    [h, w] = size(I);
    H = floor(ratio * h);
    W = floor(ratio * w);
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
              NP1 = I(y1,x1);
              NP2 = I(y1,x2);
              NP3 = I(y2,x1); 
              NP4 = I(y2,x2);
          %// 4 Pixels Weights
              PW1 = (y2-y)*(x2-x);
              PW2 = (y2-y)*(x-x1);
              PW3 = (x2-x)*(y-y1);
              PW4 = (y-y1)*(x-x1);
              new_image(i,j) = (PW1 * NP1 + PW2 * NP2 + PW3 * NP3 + PW4 * NP4)/((x2-x1)*(y2-y1));


            end
        end

end

