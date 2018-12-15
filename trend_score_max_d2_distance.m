clc;
maxd2women=zeros(32,1);
meanwomen=zeros(32,2048);

for i = 1:32
    
    maxdist =0;
    label = labels(i);
    feature = womenfeature(womenlabel==label,:);
    [m,n]=size(feature);
    
    mu = mean(feature);
    meanwomen(i,:)=mu;
    %invcov=cov(feature);
    
    for j=1:m
        v=feature(j,:);
        dist= norm(v-mu);
        maxdist=max(maxdist,dist);
        %disp(maxdist);
    end
    
    maxd2women(i)=maxdist;
        
    %disp(max(test));
    
end