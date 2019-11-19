%{
Build a mating pool.
Must have: Mating factor. (Raffle tickets)
Must return: Indexes of the corrseponding
chosen parents... Not entire copies.
%}

function [Y] = buildMatingPool(X)
%We normalize the Data again.
X = X./max(X);
%First create Mating factor:
MF = 10;
%Implement Mating factor to population.
%Result is Tickets.
Tickets = round(X.*MF);
%Create the pool from which to select.
Pool = zeros(1,sum(Tickets));
%Fill in pool with tickets.
%Count set
count = 0;
for i = 1:length(X)
    if Tickets(i) ~= 0
        for j = 1:Tickets(i)
            %Must count tickets manually
            count = count + 1;
            Pool(count) = i;
        end
    end
end
%Built Pool (double Data type)
Y = Pool;

end
