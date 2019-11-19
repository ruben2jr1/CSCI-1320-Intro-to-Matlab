clear;
clc;

%1. Define Target.
TS = 'Hello Tony';
%2. Generate initial Population.
X = buildPopulation(100,TS);

Flag = 0;
Found = 0;
generation = 0;
GenerationLimit = inf;
fitness = [];
generationx = [];

while Found~= 1 && Flag~=1
    %a) Calculate Fitness.
    Y = calculateFitness(X,TS);
        %i) Print the max fit member
        % as well as generation number.
        generation = generation + 1;
        if generation == GenerationLimit
            Flag = 1;
        end
        fprintf('Max Fit Member: %s\n',X{1,find(Y==max(Y),1)});
        fprintf('Generation Number: %f\n',generation);
    %b) Build Mating pool.
    Z = buildMatingPool(Y);
    %c Breed a new Population.
    XX = cell(1,length(X));
    i = 0;
    while Found~=1 && i<length(X)
        i = i + 1;
        %i) Randomly select two parents
        % from mating pool.
        %Random indices 1 and 2.
        RI1 = randi(length(Z),1);
        RI2 = randi(length(Z),1);
        %Parents 1 and 2
        P1 = X{1,Z(1,RI1)};
        P2 = X{1,Z(1,RI2)};
        
        %ii) Breed Child from parents.
        Child = breed(P1,P2);
        %iii) Cause Mutation.
        Child = causeMutation(Child);
        %If found The Chosen One.
        if strcmp(TS,Child)
            Found = 1;
            fprintf('We have found Neo: %s\n',Child);
            fprintf('Generation Number: %f\n',generation + 1);
        end
        %iv) Replace old Pop with children 
        % until new generation is built.
        XX{1,i} = Child;
    end
    X = XX;
end

plot(generationx,fitness);