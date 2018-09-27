% for i=1:41
%     
%     img=imread(filelist{i});
%     [x y z]= size(img);
%     if x>=y
%         img = imresize(img, [60 NaN]);
%     else
%         img = imresize(img, [NaN 60]);
%     end
%     imwrite(img,filelist{i});
%     
%     disp(i);
% end