parfor i=1:16210
    image=imread(filelist{i});
    [row, col, ch]=size(image);
    if row<=col
        image = imresize(image, [256 NaN]);
    else
        image = imresize(image, [NaN 256]);
    end
    
    imwrite(image,filelist{i});
    
end
