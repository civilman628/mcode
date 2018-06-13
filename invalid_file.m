clc;
fileindex=zeros(424840,1);
for i=1:424840
    
    filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/wheretobuy/' ,num2str(i), '.jpg');
    if ~exist (filename,'file')
        fileindex(i)=1;
        disp(i);
        %disp(filename);
    end
    
%     try
%         image=imread(photos{i});
%         
%         imwrite(image,filename)
%     catch
%         i;
%     end
    %print(i);
end