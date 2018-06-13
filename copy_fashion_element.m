
parentpath= "/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholerperson_parts_7classes/subclass/";


for i =1:91059
    if strcmp(label(i), "unassigned"  )
        continue
    else
        currentlabel = strtrim(label(i));
        currentfolder = char(strcat(parentpath,currentlabel));
        copyfile(char(dresseswomenlist(i)),currentfolder);
        
    end

end