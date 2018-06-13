
clc;
% womensamplelabel=string(1:1582);
distsamplewomen=zeros(1,1582);
% 
for i =1:1582
    v=womensample(i,:);
    currentlabel=womensamplelabel(i);
    
    feature=womenfeature(lower(womenlabel)==currentlabel,:);
    
    [m,n]=size(feature);
    
    if m<2048
        continue
    end
    
    mu=mean(feature);
    
    dist = sqrt(  (v-mu) /cov(feature)  * ((v-mu)')   );
    disp(dist);
    distsamplewomen(i)=dist;
    
end


