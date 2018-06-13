clc;
parfor i=1:890249
    url=cellstr(hstable(diff(i)));
    
    disp(i);
    try
        img=imread(url{1});
        filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all_diff/',num2str(diff(i)),'.jpg');
        imwrite(img,filename,'jpg','Quality',90);
    catch
            
    end
    
end