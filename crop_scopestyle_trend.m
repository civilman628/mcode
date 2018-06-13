clc;

parent_folder = "/home/scopeserver/RaidDisk/SocialMediaImages/ScopeStyle/";
crop_image_folder = "/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_trend_women/";


parfor i =1:893394
    filename = strcat(parent_folder,recordwomen.filename(i));
    if ~exist (filename, 'file')
        disp(["no file", i]);
        continue
    end
    c = strsplit(recordwomen.filename(i),'/');
    im = imread(char(filename));
    x=recordwomen.x(i);
    y=recordwomen.y(i);
    w=recordwomen.w(i);
    h=recordwomen.h(i);
    label = recordwomen.label(i);
    brand=c(1,1);
    
    [row ,col ,layer] = size(im);
    
    if x>col || y>row || x+w>col || y+h>row
        disp(["error box", i]);
        continue
    end
    
    crop = imcrop (im, [x y w h]);
    cropname = strcat(crop_image_folder, strtrim(label),'/',brand,'_',label,'_',num2str(i),'.jpg');
    imwrite(crop, char(cropname) ,'Quality', 85);
    
    
end