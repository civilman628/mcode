clc;
% index(50000,1)=0;
tic
for i =1:1
    name = 'C:\sharefolder\download2.jpg';
    disp([num2str(i)]);
%     try
        
%         image = imread(name);
%         
%         if size(image,3) == 1
%             index(i)=5;
%             continue;
%         end
%         
%     catch
%         index(i)=1;
%         continue;
%     end
    image = imread(name);
    
    if size(image,3) == 1
        image=cat(3,image,image,image);
%     else
%         continue;
    end

    [row, col, channel] =size (image);
    
    if row <= col
        newimage = imresize (image, [256 NaN]);
    else
        newimage = imresize (image, [NaN 256]);
    end
    
    [row, col, channel] =size (newimage);
    
    if row == 257 || col ==257
        newimage = imcrop(newimage, [1 1 255 255]);
        imwrite(newimage, name);
        continue;
    end
    
    if row ==256 && col == 256
        imwrite(newimage, name);
        continue;
    end
    
    if col >256
        newimage = imcrop(newimage, [fix(col/2-128) 1 255 255]);
    end
    if row >256
        newimage = imcrop(newimage, [1 fix(row/2-128) 255 255]);
    end
    
    [row, col, channel] =size (newimage);
    
    if row ~= 256 || col ~= 256
        break;
    end
    
    imwrite(newimage, name);
    
end
toc