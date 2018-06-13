folder = '/home/scopeserver/RaidDisk/SocialMediaImages/';
for i =1:142735
    
    oldfile=strcat(folder,char(wrongimage(i)));
    newfile=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/wrong_image/','w',num2str(i),'.jpg');
    copyfile(oldfile,newfile);
    
end

