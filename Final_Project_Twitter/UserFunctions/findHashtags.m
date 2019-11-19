%{
This function finds any Hashtags within 
a string. Convenient to use the 
function trailBlank before this function
to pad the string.
%}

function [V] = findHashtags(string)
S = string;
SF = strfind(string,'#');
V = cell(1,length(SF));
for j = 1:length(SF)
    W = blanks(50);
    i = 0;
    while (S(SF(j)+(i)) ~= ' ') && (S(SF(j)+(i+1)) ~= '#')
        i = i + 1;
        W(i) = S(SF(j)+(i-1));
    end
    W = deblank(W);
    V(1,j) = {W};
end
end