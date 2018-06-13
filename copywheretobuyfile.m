
folder= '/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholeperson_merge_3/';
newfolder='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholeperson_no_gender/';




for i=1:17813
    %fileid=bags{i,1};
    %filename=strcat(folder,num2str(fileid),'.jpg');
    name=num2str(nogender_local(i));
    oldfilename=strcat(folder,name,'.jpg');
    
    if ~exist(oldfilename,'file')
        disp(i);
        continue;
    end
    
    newfilename=strcat(newfolder,name,'.jpg');
    copyfile(oldfilename,newfilename);
    
end
