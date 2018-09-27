%% input parameters
queryid=43893;
top=50;

%% find similar images
%queryimage=strcat('C:\Users\ming\Downloads\aimer\product (',num2str(queryid),').jpg');

%index = ht(queryimage);
tic
[IDX,D]=knnsearch(feature,feature(queryid,:),'k',top,'Distance','euclidean'); %,'p',2);
toc

for i=1:top
    subplot(top/10, 10 ,i),imshow(list{IDX(i)})
end