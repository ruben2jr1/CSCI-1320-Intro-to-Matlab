%Child is single population member.

function [Y] = causeMutationImage(Child)
%Get dimensions Of child:
[R,C,P] = size(Child);
Child = double(Child);
%Mutation Range;
mutation_Range = 30;
%Mutation Rate;
mutation_Rate = 1/4;

for i = 1:R
    for j = 1:C
        for k = 1:P
            RANDOM = rand();
            if RANDOM <= mutation_Rate
                Child(i,j,k) = Child(i,j,k) - randi([-(mutation_Range),(mutation_Range)]);
                if (Child(i,j,k) < 0)
                    Child(i,j,k) = 0;
                elseif (Child(i,j,k) > 255)
                    Child(i,j,k) = 255;
                end
            end
        end
    end
end
%Result is Mutated Child
Y = uint8(Child);