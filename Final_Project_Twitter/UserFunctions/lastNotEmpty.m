function [Y] = lastNotEmpty(V)
LV = cellfun('isempty',V);
for j = 1:length(LV)
    if LV(1,j)==0
        LV(1,j) = 1;
    elseif LV(1,j)==1
        LV(1,j) = 0;
    end
end
i = 0;
while LV(1,i+1) == 1
    i = i+1;
end
Y = i;
end