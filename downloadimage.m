clc;
parfor i=1:23762
    try
        image=char(url(i,2));
        img=imread(image);
        %fileid=num2str(id(i));
        fileid=url(i,1);
        name=char(strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_missing_image/',fileid,'.jpg'));
        imwrite(img,name,'Quality',100);
    catch e
        %disp(e)
        %throw(error);
        disp(i)
    end
   
    %disp(i);
end


% parfor i=1:269648
%     try
%         url=nus_url{i,4};
%         img=imread(url);
%         imwrite(img,strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/nus_image_data_middle/',nus_url{i,2},'.jpg'),'jpg','Quality',90);
%         disp(i);
%     catch
%         %disp('error');
%     end
%     
% end

% for i=1:1959457
%     
%     filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all/',num2str(id(i)),'.jpg');
%     if exist(filename, 'file')
%         disp(id(i));
%         continue;
%     else
%         try
%             url=urllist{i};
%             img=imread(url);
%             imwrite(img,strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all_diff/',num2str(id(i)),'jpg'),'Quality',90);
%             disp(i);
%         catch
%             %disp('error');
%         end
%     end
%     
% endl




