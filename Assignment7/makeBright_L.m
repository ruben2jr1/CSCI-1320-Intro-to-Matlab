function [ outImg ] = makeBright_L( inImg, brightness )
x = inImg;
for y = 1:3
    if brightness>0
        x(:,:,y) = x(:,:,y) + 255*brightness/255;
    elseif brightness<=0
        x(:,:,y) = x(:,:,y).*(1 + 1*brightness/255);
    end
end
outImg = x;
end