%{
This function will make a mating pool out of the members
Within the Image popluation, such that the fittest are more likely
to survive.
%}
function [Y] = buildMatingPoolImage(Fitness)
%Of course the other mating pool works
%but i just want the names to agree so Copy paste lol.
%We normalize the Data again.
Fitness = Fitness./max(Fitness);
%First create Mating factor:
MF = 10;
%Implement Mating factor to population.
%Result is Tickets.
Tickets = round(Fitness.*MF);
%Create the pool from which to select.
Pool = zeros(1,(sum(Tickets)));
%Fill in pool with tickets.
%Count
count = 0;
for i = 1:length(Fitness)
    if Tickets(i) ~= 0
        for j = 1:Tickets(i)
            count = count + 1;
            Pool(count) = i;
        end
    end
end
    %Cutting last zeros off.
    %indexOfFirstZero = find(Pool==0,1);
    %Pool = Pool(1,1:(indexOfFirstZero-1));
%Built Pool (double Data type)
Y = Pool;

end