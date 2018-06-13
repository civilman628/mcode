%%
featurelist=mensamplefeature;
rows=length(featurelist)/2048;

featurelist=reshape(featurelist,2048,rows);
featurelist=featurelist';
%csvwrite('fashion_complete_3.csv',featurelist);

%feature=cat(1,featurelist1,featurelist2,featlurelist3);

%%

% for i =1:66187
%     a=strsplit( trendwomenscoreimagepart(i),'/');
%     womenlabel(i)=a(11);
% end