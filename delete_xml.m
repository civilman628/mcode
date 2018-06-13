xmlpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/detect_xml_scope/';

for i = 1:692417
    disp(i);
    if strcmp(list(i,3),'null')
        filename=str2num(list{i,1});
        xmlfile=strcat(xmlpath,num2str(filename),'.xml');
        
        if exist(xmlfile,'file')
            delete(xmlfile);
        end
    end
end