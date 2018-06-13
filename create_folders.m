

parentfolder = "/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholerperson_parts_7classes/subclassmen/";

temp = tops1;
list =unique(temp.newlabel);

for i =1:numel(list)
    
    
    newfolder = strcat(parentfolder,"tops/",list(i));
    mkdir(char(newfolder));

end