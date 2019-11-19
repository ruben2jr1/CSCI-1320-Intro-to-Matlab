% Ruben Hinojosa Torres, Jianai Zhao, CSCI 1320
%==========================================================================
%{
This task should be executed before 
all other tasks like so:
[raw] = task1(Filename);
%}
%==========================================================================
function [Raw] = task1(Filename)

%Read in file.
[~,~,raw] = xlsread(Filename);
[r,c,~] = size(raw);
%{
Column for states: 14
Column for country: 13
%}
%Cleaning data so as to data is
%Within the US
for i = 2:r
    %for j = 1:49
        L = ~isnan(raw{i,13});
        if ~isempty(raw{i,13}) && (L(1)==1)
            if ~contains(raw{i,13},'US')
                for k = 1:c
                    raw{i,k} = [];
                end
            end
            
        end
    %end
end
%Cleaning data so as to data is
%Within the english language.
for i = 2:r
    %for j = 1:49
        L = ~isnan(raw{i,19});
        if ~isempty(raw{i,19}) && (L(1)==1)
            if ~contains(raw{i,19},'en')
                for k = 1:c
                    raw{i,k} = [];
                end
            end
            
        end
    %end
end
%Cleaning data so as to data is
%Within Continental US
for i = 2:r
    %for j = 1:49
        L = ~isnan(raw{i,14});
        if ~isempty(raw{i,14}) && (L(1)==1)
            %Here i changed to does contain
            %hawaii or alaska. 'HA' or 'AK'
            if contains(raw{i,14},'HA') || contains(raw{i,14},'AK')
                for k = 1:c
                    raw{i,k} = [];
                end
            end
            
        end
    %end --> Check raw{1594,14}
end
%--------------------------------------------------------------------------
%for is not a number.
for ib = 1:r
    if isnan(raw{ib,14})
        for jb = 1:c
            raw{ib,jb} = [];
        end
    end
end
for ib = 1:r
    if isnan(raw{ib,16})
        for jb = 1:c
            raw{ib,jb} = [];
        end
    end
end
%--------------------------------------------------------------------------  
%deleting empty rows.
new_raw = cell(r,c);
j = 0;
for i = 1:r
    if ~isempty(raw{i,1})
        j = j + 1;
        for k = 1:c
            new_raw{j,k} = raw{i,k};
        end
    end
end
%Trimming
new_new_raw = cell(j,c);
for i = 1:j
    for k = 1:c
        new_new_raw{i,k} = new_raw{i,k};
    end
end
fprintf('There are %.d tweets remaining, all from the Continental US, all using the English language.\n',j);
Raw = new_new_raw;
save('raw.mat','Raw');
end