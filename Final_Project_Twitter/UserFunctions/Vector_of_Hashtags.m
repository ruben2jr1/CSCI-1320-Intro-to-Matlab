%Produces Vector of hashtags Within data. Row direction Assumed
function [V] = Vector_of_Hashtags(raw,Initial_Row,Initial_Col)
[r1,~,~] = size(raw);
%This add trailing blank at end of tweets.
for i = Initial_Row:r1
    raw{i,Initial_Col} = trailBlank(raw{i,Initial_Col});
end
%{
---------------------------------------------------------------------------
Imortant!!! --> In this case r1 - 1. because
row 1 is the title row.
same for within the for loop (j - 1)
%}
%This section finds the greatest number of
%hashtags in the data set.
greatest_vec = zeros(1,(r1-1));
for j = Initial_Row:r1
    greatest_vec(1,j-1) = length(findHashtags(raw{j,Initial_Col}));
end
Omega = max(greatest_vec);
%--------------------------------------------------------------------------
%{ 
We know have to form a (Omega) by (r1) matrix
containing these hastags... once this is done 
we can repmat to morf this matrix into 
a vector containing all hashtags.
%}
H_matrix = cell((r1-1),Omega);
for i = Initial_Row:r1
    
    X = findHashtags(raw{i,Initial_Col});
    hashtags = cell(1,Omega);
    
    if ~isempty(X)
        for j = 1:length(findHashtags(raw{i,Initial_Col}))
            hashtags(1,j) = {X(1,j)};
        end
     elseif isempty(X)
         hashtags(1,:) = {[]};
    end
    
    for k = 1:Omega
    H_matrix(i,k) = hashtags(1,k);
    end
end
%{
Success! now we must turn this matrix
into a vector.
%}
[r,c,~] = size(H_matrix);
H_Vector = reshape(H_matrix,[1,r*c]);
H2_Vector = cell(1,r*c);
i = 0;
for l = 1:r*c
    if ~isempty(H_Vector{1,l})
        i = i + 1;
        H2_Vector(1,i) = H_Vector(1,l);
    end
end
%I could only think of this.
%Can only do it manually.
%Using user function: lastNotEmpty
H3_Vector = cell(1,lastNotEmpty(H2_Vector));
 for i = 1:lastNotEmpty(H2_Vector)
     H3_Vector(1,i) = H2_Vector(1,i);
 end
 V = H3_Vector;
 %{
 Now we have the final vector of all
 possible hashtags...
 With this we can compare
 %}
 clear hashtags i j k l X
end
