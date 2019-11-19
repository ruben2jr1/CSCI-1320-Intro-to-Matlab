function [ outImg ] = meanFilter( inImg )
%Size of initial image
[row,col,~] = size(inImg);
%Seperating color sheets to work in 2-dimensions.
red = inImg(:,:,1);
green = inImg(:,:,2);
blue = inImg(:,:,3);
%average out individual color sheets.
for r = 2:3:(row)
    for c = 2:3:(col)
        A = (red(r,c)+red(r+1,c)+red(r-1,c)+red(r,c+1)+red(r,c-1)+red(r-1,c+1)+red(r-1,c-1)+red(r+1,c+1)+red(r+1,c-1))/9;
        red(r,c) = A;
        red(r+1,c) = A;
        red(r-1,c) = A;
        red(r,c+1) = A;
        red(r,c-1) = A;
        red(r-1,c+1) = A;
        red(r-1,c-1) = A;
        red(r+1,c+1) = A;
        red(r+1,c-1) = A;
    end
end
for r = 2:3:(row)
    for c = 2:3:(col)
        A = (green(r,c)+green(r+1,c)+green(r-1,c)+green(r,c+1)+green(r,c-1)+green(r-1,c+1)+green(r-1,c-1)+green(r+1,c+1)+green(r+1,c-1))/9;
        green(r,c) = A;
        green(r+1,c) = A;
        green(r-1,c) = A;
        green(r,c+1) = A;
        green(r,c-1) = A;
        green(r-1,c+1) = A;
        green(r-1,c-1) = A;
        green(r+1,c+1) = A;
        green(r+1,c-1) = A;
    end
end
for r = 2:3:(row)
    for c = 2:3:(col)
        A = (blue(r,c)+blue(r+1,c)+blue(r-1,c)+blue(r,c+1)+blue(r,c-1)+blue(r-1,c+1)+blue(r-1,c-1)+blue(r+1,c+1)+blue(r+1,c-1))/9;
        blue(r,c) = A;
        blue(r+1,c) = A;
        blue(r-1,c) = A;
        blue(r,c+1) = A;
        blue(r,c-1) = A;
        blue(r-1,c+1) = A;
        blue(r-1,c-1) = A;
        blue(r+1,c+1) = A;
        blue(r+1,c-1) = A;
    end
end
%Add average unto original color sheets.
%out image was to dark so i assumed
%my code didnt work properly.
outImg(:,:,1) = (red+inImg(:,:,1));
outImg(:,:,2) = (blue+inImg(:,:,2));
outImg(:,:,3) = (blue+inImg(:,:,3));
            