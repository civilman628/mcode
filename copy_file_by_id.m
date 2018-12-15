
source_folder ="/home/scopeserver/RaidDisk/Filter_Full/tops/";
target_folder ="/home/scopeserver/RaidDisk/Filter_Full/tops_women/";


for i =1:25573
    id=tops(i);
    sourcefile =strcat(source_folder,num2str(id),'.jpg'); 
    targetfile=strcat(target_folder,num2str(id),'.jpg'); 
    copyfile(char(sourcefile),char(targetfile));
    disp(i);
end