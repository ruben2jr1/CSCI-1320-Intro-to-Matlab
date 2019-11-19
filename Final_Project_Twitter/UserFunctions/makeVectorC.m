function [V] = makeVectorC(M,row)
[~,cmax,~] = size(M);
c1 = 1;
V_temp = cell(1,cmax);
while ~isempty(M{row,c1})
    V_temp{1,c1} = M{row,c1};
    c1 = c1 + 1;
end
c1 = c1 - 1;
V = cell(1,c1);
for i = 1:c1
    V{1,i} = V_temp{1,i};
end
end