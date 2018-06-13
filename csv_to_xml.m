clc;
xmlpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/detect_xml_scope/';



parfor i = 1:692417
    
    if strcmp(list(i,3),'null')
        continue;
    end
    
    imagefile = strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all/',list(i,1),'.jpg');
    img=imread(imagefile{1});
    [height,width,depth]=size(img);
    
    xmlfile=strcat(xmlpath,list{i,1},'.xml');
    
    filename=str2num(list{i,1});
    classname=list(i,3);
    xmin=list{i,6};
    ymin=list{i,7};
    
    xmax=xmin+list{i,8};
    ymax=ymin+list{i,9};
    
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
    
    if ~exist(xmlfile,'file')
        createxmldocwheretobuy(xmlfile,filename,classname,width,height,depth,xmin,ymin,xmax,ymax);
    else
        xmldoc = xmlread(xmlfile);
        addnode(xmlfile,xmldoc,classname ,xmin,ymin,xmax,ymax);
        disp(filename);
    end

    
end