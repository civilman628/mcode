clc;
maxdwomen=zeros(32,1);

for i = 1:32
    
    maxdist =0;
    label = labels(i);
    feature = womenfeature(womenlabel==label,:);
    [m,n]=size(feature);
    
    mu = mean(feature);
    invcov=cov(feature);
    
%     for j=1:m
%         v=feature(j,:);
%         dist= sqrt( (v-mu) / invcov *((v-mu)')   );
%         maxdist=max(maxdist,dist);
%         disp(maxdist);
%     end
%     
%     maxdwomen(i)=maxdist;
        
    demufeaure = feature -mu;
    disp(i);
    test = sqrt( diag(  demufeaure/invcov* demufeaure'  ));
    disp(max(test));
    maxdwomen(i)=max(test);
end


