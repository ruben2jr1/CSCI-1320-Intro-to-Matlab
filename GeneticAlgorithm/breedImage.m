function [Child] = breedImage(Parent1,Parent2)
%Get sizes of both parents.
[~,~,~] = size(Parent1);
[R2,C2,PTwo] = size(Parent2);
%Convert to doubles, so i dont have to break 
%my head about what data types i have.
Parent1 = double(Parent1);
Parent2 = double(Parent2);
%%
%{
%First method is to split the parents evenly
%and distribute their DNA half and half:
Child = zeros(R1,C1,POne);
Child(:,1:floor(C1/2),:) = P1(:,1:floor(C1/2),:);
Child(:,ceil(C2/2):C2,:) = P2(:,ceil(C2/2):C2,:);
%}
%%

%Second Method is to randomly exchange DNA 
%With each parent o produce child.
IndexRow = randi([1,R2],1,randi([1,R2]));
IndexCol = randi([1,C2],1,length(IndexRow));
IndexPage = randi([1,PTwo],1,length(IndexRow));
Parent2(IndexRow,IndexCol,IndexPage) = Parent1(IndexRow,IndexCol,IndexPage);
Child = Parent2;

