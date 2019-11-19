%{
This Function adds a Blank space at 
The end any String.
%}

function [S] = trailBlank(String)
S = blanks(length(String)+1);
S(1:length(String)) = String;
end