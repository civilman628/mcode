clc;

%gpuDevice(3);
%g=gpuArray(dresses_afterPCA);

tic
%eval_footwear = evalclusters(footwear,'kmeans','gap','KList',[5:15], 'ReferenceDistribution','uniform');%
%eval_pants = evalclusters(pants,'kmeans','gap','KList',[5:15]);
eval = evalclusters(skirts_afterPCA(:,1:3),'kmeans', 'gap', 'KList', [2:5],  'ReferenceDistribution','uniform');

toc