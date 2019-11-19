%Run
[~,~,raw] = xlsread('parsed_tweets_small.xlsx');
[r,~,~] = size(raw);
%%
% %little test to see what the max number
% %tweets is:
% for i = 2:r
%     raw{i,8} = trailBlank(raw{i,8});
% end
% greatest_vec = zeros(1,r);
% for j = 2:r
%     greatest_vec(1,j-1) = length(findHashtags(raw{j,8}));
% end
% max(greatest_vec)
%%
% %%
% %confirming something
% for i = 2:r
%     O = ~isempty(strfind(raw{i,8},'Audrina'));
%     if O == 1
%         fprintf('%.f,%.f \n',i,8);
%     end
% end
% %Results in 1844,8 --> state is CA
% %This # is specific to CA
%%
% raw{1594,14} = 'NY';
% tic
% count = uint8(0);
% for i = 2:r
%     count = count + uint8(contains(raw{i,14},'NY'));
% end
% toc
% tic
% count1 = uint8(0);
% for i = 2:r
%     SF = strfind(raw{i,14},'GY');
%     count1 = count1 + uint8(~isempty(SF));
% end
% toc