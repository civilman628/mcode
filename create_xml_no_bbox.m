
imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_detect_training/';
xmlpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_where2buy_merge_training_xml/';
negative_xml_path='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_negtive_case/';
negative_image_path='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_negtive_image/';
listing = dir(xmlpath);
%filelist=listing(:,1);

for i=3:numel(listing)
    filename=listing(i).name;
    [path, name, ext]=fileparts(filename);
    imagefile=strcat(negative_image_path,name,ext);
    %xmlfile=strcat(xmlpath,name,'.xml');
    
    %if ~exist(xmlfile,'file')
         image=imread(imagefile);
%          movefile(imagefile, strcat(negative_image_path,name,ext));
         [height ,width ,depth]=size(image);
         
         new_xmlfile=strcat(negative_xml_path,name,'.xml');
         
         create_zero_object_xml(new_xmlfile,name,width,height,depth);
    %end
    
    
end