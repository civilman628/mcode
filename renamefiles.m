clc;

for i=1:269648
    filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/nus_image_data/',num2str(i),'.jpg');
    if exist(filename,'file')
        newfilename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/nus_image_byid/',NUSWIDEurls{i,2},'.jpg');
        movefile(filename,newfilename,'f');
        disp(i);
    end
end