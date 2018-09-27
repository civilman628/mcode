% C:\Downloads\FlickrLogos-32_dataset_v2\bbox

clc;
alltextfile=dir('C:\Downloads\FlickrLogos-32_dataset_v2\bbox');

ht=containers.Map(logo32dataset(:,2),logo32dataset(:,1));

for i=3:length(alltextfile)
    filename1 = alltextfile(i).name(1:end-15);
  
    textfile=strcat('C:\Downloads\FlickrLogos-32_dataset_v2\bbox\',filename1,'.jpg.bboxes.txt');
    fileID = fopen(textfile);
    
    formatSpec = '%s';
    N = 4;
    text = textscan(fileID,formatSpec,N,'Delimiter',' ');
    myarray = cell2mat(textscan(fileID,'%f %f %f %f'));
    fclose(fileID);
    
    imgpath = strcat ( 'C:\Downloads\FlickrLogos-32_dataset_v2\All_logo\',filename1,'.jpg');
    img =imread(imgpath);
    
    width1 = size(img,2);
    height1 = size(img,1);
    depth1 = size(img,3);
    
    classname1=ht(strcat(filename1,'.jpg')); % object.name
    

    createxmldoc(myarray,filename1,classname1,width1,height1,depth1);

end