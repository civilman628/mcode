
clc;

parentfolder = "/home/scopeserver/RaidDisk/SocialMediaImages/Crop2/";
targetfolder = "/home/scopeserver/RaidDisk/SocialMediaImages/Crop2/SocialMedia/verify_image/";

for i = 1:1108
    filename = strcat(parentfolder,f35.filename(i));
    %imshow(filename);
    copyfile(filename,targetfolder);
end