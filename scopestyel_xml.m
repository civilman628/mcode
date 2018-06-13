%str = '{"name":"North Carolina","capital":"Raleigh","population":"9,752,073"}';
%wheretobuy=textread('C:\Users\ming\Downloads\meta\meta\json\train_pairs_bags.json','%s')
clc;
%path='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/where2buy_7classes_json/';
imagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all/';
copytoimagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_detect_training/';
totaldiff=zeros(1,11);
xmlpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_xml/';

%b=a(randperm(length(a)));

parfor i =1:303519
    tag = strcat(alltags{i,1},',',alltags{i,2},',',alltags{i,3},',',alltags{i,4},',',alltags{i,5},',',alltags{i,6});
    tag=strrep(tag,"'",'"');
    data = JSON.parse(char(tag));
    
    filename=data.id;
    destfilename=strcat('s',filename);
    image_fullname=strcat(imagepath,filename,'.jpg');
    dest_imagefullname=strcat(copytoimagepath,destfilename,'.jpg');
    
    if ~exist(dest_imagefullname,'file')
        copyfile(image_fullname,dest_imagefullname);
    end
    
    classname=string(data.name);
    %disp(classname);
    
    if classname=='wrong'
        continue;
    end
    
    if classname=='suites'
        classname='outerwear';
    end
    
    image=imread(image_fullname);
    [height ,width ,depth]=size(image);
    xmin=data.x;
    ymin=data.y;
    xmax=xmin+data.w;
    ymax=ymin+data.h;
    
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

    
    xmlfile=strcat(xmlpath,destfilename,'.xml');
    if ~exist(xmlfile,'file')
        createxmldocwheretobuy(xmlfile,destfilename,classname,width,height,depth,xmin,ymin,xmax,ymax);
    else
        xmldoc = xmlread(xmlfile);
        addnode(xmlfile,xmldoc,classname ,xmin,ymin,xmax,ymax);
        disp(destfilename);
    end
end
% listing = dir(path);

% for i=3:numel(listing);
%     parfor i =1:totalfilesinjson
%         filename = data{i}.photo;
%         fullname = strcat(imagepath,num2str(filename),'.jpg');
%         if exist(fullname,'file')
%             countvalidfile=countvalidfile+1;
%             image=imread(fullname);
%             [height ,width ,depth]=size(image);
%             bbox=data{i}.bbox;
%             xmin=bbox.left;
%             ymin=bbox.top;
%             xmax=xmin+bbox.width;
%             ymax=ymin+bbox.height;
%             
%             if bbox.width< 50 || bbox.height<50
%                 continue;
%             end
% 
%             if xmin==0
%                 xmin=1;
%             end
%             
%             if ymin==0
%                 ymin=1;
%             end
%             
%             if xmax==width
%                 xmax=width-1;
%             end
%             
%             if ymax==height
%                 ymax=height-1;
%             end
%             
%             
%             xmlfile=strcat(xmlpath,num2str(filename),'.xml');
%             if ~exist(xmlfile,'file')
%                 createxmldocwheretobuy(xmlfile,filename,classname,width,height,depth,xmin,ymin,xmax,ymax);
%             else
%                 xmldoc = xmlread(xmlfile);
%                 addnode(xmlfile,xmldoc,classname ,xmin,ymin,xmax,ymax);
%                 disp(filename);
%             end
%         else
%             x=[classname,num2str(filename)];
%             % disp (x);
%         end
%     end
%     
% %     diff=totalfilesinjson-countvalidfile;
% %     showdiff=['total diff ', classname, num2str(diff)];
% %     disp(showdiff)    
% %     totaldiff(i)=diff;
%     
% end

%disp(totaldiff);