%{
This function will show an image which has not
been divided by 255 or scaled to the 0 - 1 magnitude usually 
required by other imaging functions.
%}
function [] = imageRHT(X)
image(X./255);
end