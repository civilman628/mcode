clc;
sourceimagepath = '/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholeperson_merge_3/';

destpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholerperson_parts_7classes'; 

index=ones(679484,1);

for i = 1:14
    i=wrongid(i);
    filename = strcat(sourceimagepath,num2str(fileid(i)),'.jpg');
    %disp(i);
    
     if exist(filename,'file')
         img =imread(filename);
         x=xywh(i,1);
         y=xywh(i,2);
         w=xywh(i,3);
         h=xywh(i,4);
         
         try
             
             part = imcrop(img,[x  y  w h]);
             part_name=strcat(num2str(fileid(i)),'_',num2str(i),'.jpg');

             new_filename= fullfile(destpath, char(label(i)) , part_name);

             imwrite(part, new_filename,'Quality',90)
             
         catch
             index(i)=0;
             disp(i);
             
         end
      
         
     else
         index(i)=0;
         
     end
    
    
end