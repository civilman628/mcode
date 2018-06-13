imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/medical_image/polyp/';
listing = dir(imagepath);

for i=3:numel(listing)
    filename=listing(i).name;
    fullname =strcat(imagepath, filename);
    fullname_new= strcat(imagepath, 'r90_',filename);
    img = imread(fullname);
    img_new=imrotate(img,90);
%     [x, y, z] = size(img);
    
%     if x>=y
%         img=imresize(img,[256 NaN], 'method', 'bicubic');
%     else
%          img=imresize(img,[NaN 256], 'method', 'bicubic');
%     end
    
    imwrite(img_new, fullname_new);
    disp(i);
    
end