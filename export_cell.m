% fileid=fopen('class_id_2dbox.csv','w');
% formatSpec='%s\n';
% for i=1:692417
%     fprintf(fileid,formatSpec,cord{i,:});
% end


fileid=fopen('where2buy_plus_scopestyle_2D_int.csv','w');
formatSpec='%d, %d\n';
for i=1:729805
    fprintf(fileid,formatSpec,newxy(i,:));
end