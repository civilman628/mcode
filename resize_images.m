imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/BEGAN-tensorflow/data/dresses/splits/train/';
listing = dir(imagepath);

parfor i=3:numel(listing)
    filename=listing(i).name;
    fullname =strcat(imagepath, filename);
    fullname_new= strcat(imagepath, 'm_',filename);
    img = imread(fullname);
    img_new=img(:,end:-1:1,:);
%     [x, y, z] = size(img);
    
%     if x>=y
%         img=imresize(img,[256 NaN], 'method', 'bicubic');
%     else
%          img=imresize(img,[NaN 256], 'method', 'bicubic');
%     end
    
    imwrite(img_new, fullname_new);
    disp(i);
    
end