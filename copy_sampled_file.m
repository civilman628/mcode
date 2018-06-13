parentpath= "/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholerperson_parts_7classes/subclassmen/";

list = tops1 ;

pfolder = list.oldlabel(i);

subclasses = unique(list.newlabel);

for j =1:numel(subclasses)
    temp=list(list.newlabel==subclasses(j),:);
    
    count = numel(temp.parentlist);
    
    if count < 3000
        for i = 1:count
            newfolder = strcat(parentpath, list.oldlabel(1), "/", temp.newlabel(i), "/");
            copyfile(char( temp.filename(i)), char(newfolder));
            %disp(i);
        end
    else
        temp2=datasample(temp,3000,'Replace', false);
         for i = 1:3000
            newfolder = strcat(parentpath, list.oldlabel(1), "/", temp.newlabel(i), "/");
            copyfile(char( temp2.filename(i)), char(newfolder));
            %disp(i);
         end
    end
end