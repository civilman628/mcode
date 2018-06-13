

% allwomenfiles = string(1:66187);
% 
% for i=1:66187
%     sample = trendwomenscoreimagepart(i);
%     a=strsplit(sample,'/');
%     allwomenfiles(i)=a(12);
%     
% end

allmenscore = ones(747,2);


for i =1:747
    index = ismember( allmenfiles,mensamplefiles(i));
    
    if max(index)==0
        continue
    end
    
    v=menfeature(index,:);
    
    class= menlabel(index);
    
    feature = menfeature(menlabel==class(1),:);
    
    mu = mean (feature);
    
    currentmax = maxdwomen(labelsmen==class(1));
    
    dist = sqrt(  (v-mu) /cov(feature)  * ((v-mu)')   );
    allmenscore(i,1)=dist;
    allmenscore(i,2)=currentmax;
    disp(dist);
    
end