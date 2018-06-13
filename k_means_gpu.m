clc;

device = gpuDevice(1);

features=footwear_afterPCA;

g=gpuArray(features(:,1:10));

%for i = 3:15
    %disp(i);
    [idx,c] = kmeans(g,4,'MaxIter',500,'Replicates',3);
    idxcpu=gather(idx);
    centercpu=gather(c);
    %sumdcpu=gather(sumd);
    %alldiff=sum(sumdcpu);
    %disp(alldiff);
%end
reset(device);

%reset(device);