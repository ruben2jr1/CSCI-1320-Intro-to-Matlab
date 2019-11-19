function [outImg] = meanfilter2(II)
%Read in the size from image.
[H,L,D] = size(II);
%Convert to data type or else ya fucked up m8.
II = double(II);
r = double(2:3:H);
c = double(2:3:L);
p = double(1:D);
% Chopping off the last row or column
%depending on which is longer.
if (max(r) + 1 > H) || (max(c) + 1 > L)
    II = II(1:H-1,1:L-1,:);
    %Do this again
    [H,L,D] = size(II);
    %Convert to data type or else ya fucked up m8.
    II = double(II);
    r = double(2:3:H);
    c = double(2:3:L);
    p = double(1:D);
end
%try and average them some how.
average = round((II(r-1,c-1,p)+II(r-1,c,p)+...
    II(r-1,c+1,p)+II(r,c-1,p)+II(r,c,p)+...
    II(r,c+1,p)+II(r+1,c-1,p)+II(r+1,c,p)+...
    II(r+1,c+1,p))/9);
%now try and carry that box all the way through.
%Think something like II(
outImg = uint8(repelem(average,3,3));
