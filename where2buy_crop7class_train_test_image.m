%str = '{"name":"North Carolina","capital":"Raleigh","population":"9,752,073"}';
%wheretobuy=textread('C:\Users\ming\Downloads\meta\meta\json\train_pairs_bags.json','%s')
clc;
path='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/where2buy_7classes_json/';
imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/tensorflow/Faster-RCNN_TF/data/VOCdevkit/VOC2007/where2buy_all/';
totaldiff=zeros(1,11);
output_imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/where2_buy_crop_image/';

%b=a(randperm(length(a)));

listing = dir(path);

for i=3:numel(listing);
    fname=listing(i).name;
    [a ,b]= strread(fname, '%s %s', 'delimiter','.');
    [trainortest ,d, cname]=strread(a{1}, '%s %s %s', 'delimiter','_');
    classname=cname{1};
    fid = fopen(strcat(path,fname));
    raw = fread(fid,inf);
    str = char(raw');
    fclose(fid);
    data = JSON.parse(str);
    
    
    countvalidfile=0;
    totalfilesinjson=numel(data);
    parfor i =1:totalfilesinjson
        filename = data{i}.photo;
        fullname = strcat(imagepath,num2str(filename),'.jpg');
        if exist(fullname,'file')
            countvalidfile=countvalidfile+1;
            image=imread(fullname);
            [height ,width ,depth]=size(image);
            bbox=data{i}.bbox;
            if bbox.width< 50 || bbox.height<50
                continue;
            end
            xmin=bbox.left;
            ymin=bbox.top;
            xmax=xmin+bbox.width;
            ymax=ymin+bbox.height;
            
            if xmin==0
                xmin=1;
            end
            
            if ymin==0
                ymin=1;
            end
            
            if xmax==width
                xmax=width-1;
            end
            
            if ymax==height
                ymax=height-1;
            end
            
            part = imcrop(image,[xmin ymin bbox.width bbox.height]);
%             imshow(part);
            
%             image_file_name=strcat(output_imagepath,num2str(filename),'.jpg');
            
            image_file_name=strcat(output_imagepath,char(classname),'/',num2str(filename),'.jpg');
            
            if ~exist(image_file_name,'file')
                 imwrite(part, image_file_name);
                 
            else
                image_file_name=strcat(output_imagepath,char(classname),'/',num2str(filename),'_',num2str(i),'.jpg');
                imwrite(part, image_file_name); 
            end
            
           
            
%             if ~exist(xmlfile,'file')
%                 createxmldocwheretobuy(xmlfile,filename,classname,width,height,depth,xmin,ymin,xmax,ymax);
%             else
%                 xmldoc = xmlread(xmlfile);
%                 addnode(xmlfile,xmldoc,classname ,xmin,ymin,xmax,ymax);
%                 disp(filename);
%             end
%         else
%             x=[classname,num2str(filename)];
            % disp (x);
        end
    end
    
%     diff=totalfilesinjson-countvalidfile;
%     showdiff=['total diff ', classname, num2str(diff)];
%     disp(showdiff)    
%     totaldiff(i)=diff;
    
end

%disp(totaldiff);
