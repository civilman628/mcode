clc;
count=0;
for i=1:424840
    
    if fileindex(i)==1
    
        try
            image=imread(photos{i});
            filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/wheretobuy/' ,num2str(i), '.jpg');
            imwrite(image,filename)
            disp(i);
            
        catch
            %disp(i);
            count=count+1;
        end
    end
    %print(i);
end
