clc;
opts = statset('Display','final');
sse=1:20;

for i=1:20
    disp(i);
    [idx,C,sumd,D]  = kmeans(newfeature,i,'Replicates',5,'Options',opts);
    sse(i)=sum(sumd);
end


%[idx,C,sumd,D]  = kmeans(newfeature,9,'Replicates',5,'Options',opts);

% figure;
% plot3(newfeature(idx==1,1),newfeature(idx==1,2),newfeature(idx==1,3),'y.','MarkerSize',4)
% hold on
% plot3(newfeature(idx==2,1),newfeature(idx==2,2),newfeature(idx==2,3),'m.','MarkerSize',4)
% plot3(newfeature(idx==3,1),newfeature(idx==3,2),newfeature(idx==3,3),'c.','MarkerSize',4)
% plot3(newfeature(idx==4,1),newfeature(idx==4,2),newfeature(idx==4,3),'k.','MarkerSize',4)
% plot3(newfeature(idx==5,1),newfeature(idx==5,2),newfeature(idx==5,3),'r.','MarkerSize',4)
% plot3(newfeature(idx==6,1),newfeature(idx==6,2),newfeature(idx==6,3),'g.','MarkerSize',4)
% plot3(newfeature(idx==7,1),newfeature(idx==7,2),newfeature(idx==7,3),'b.','MarkerSize',4)
% plot3(newfeature(idx==8,1),newfeature(idx==8,2),newfeature(idx==8,3),'m.','MarkerSize',4)
% plot3(newfeature(idx==9,1),newfeature(idx==9,2),newfeature(idx==9,3),'y.','MarkerSize',4)
% 
% plot3(C(:,1),C(:,2),C(:,3),'kx',...
%      'MarkerSize',8,'LineWidth',3)
% legend('Cluster 1','Cluster 2','Centroids',...
%        'Location','NW')
% title 'Cluster Assignments and Centroids'
% hold off