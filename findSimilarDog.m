queryid=15916; %15916
top=30;

%% find similar images

tic
[IDX,D]=knnsearch(features,features(queryid,:),'k',top,'Distance','euclidean');
toc

for i=1:top
    subplot(top/10, 10 ,i),imshow(filelist{IDX(i)})
end