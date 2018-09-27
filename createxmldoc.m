function xml = createxmldoc(myarray,filename1,classname1,width1,height1,depth1)

clc;

%% annotation
docNode = com.mathworks.xml.XMLUtils.createDocument('annotation');
annotation= docNode.getDocumentElement;

%% folder
folder= docNode.createElement('folder');
folder.appendChild(docNode.createTextNode('VOC2007'));
annotation.appendChild(folder);

%% filename
filename=docNode.createElement('filename');
filename.appendChild(docNode.createTextNode(strcat(filename1,'.jpg')));
annotation.appendChild(filename);

%% source
source=docNode.createElement('source');
annotation.appendChild(source);

    database=docNode.createElement('database');
    database.appendChild(docNode.createTextNode('The VOC2007 Database'));

    annotations=docNode.createElement('annotation');
    annotations.appendChild(docNode.createTextNode('PASCAL VOC2007'));

    image=docNode.createElement('image');
    image.appendChild(docNode.createTextNode('image'));

    flickrid=docNode.createElement('flickrid');
    flickrid.appendChild(docNode.createTextNode('0'));

    source.appendChild(database);
    source.appendChild(annotations);
    source.appendChild(image);
    source.appendChild(flickrid);
    

%% owner
owner=docNode.createElement('owner');
annotation.appendChild(owner);

    flickrid=docNode.createElement('flickrid');
    flickrid.appendChild(docNode.createTextNode('NA'));
    
    name=docNode.createElement('name');
    name.appendChild(docNode.createTextNode('NA'));

    owner.appendChild(flickrid);
    owner.appendChild(name);



%% size
imgsize=docNode.createElement('size');
annotation.appendChild(imgsize);

    width=docNode.createElement('width');
    width.appendChild(docNode.createTextNode(num2str(width1)));

    height=docNode.createElement('height');
    height.appendChild(docNode.createTextNode(num2str(height1)));

    depth=docNode.createElement('depth');
    depth.appendChild(docNode.createTextNode(num2str(depth1)));
   
imgsize.appendChild(width);
imgsize.appendChild(height);
imgsize.appendChild(depth);

%% segmented
segmented=docNode.createElement('segmented');
segmented.appendChild(docNode.createTextNode('0'));
annotation.appendChild(segmented);

%% objects
%=size(myarray);
for i =1:size(myarray,1)
    object=docNode.createElement('object');

    classname=docNode.createElement('name');
    classname.appendChild(docNode.createTextNode(classname1));
    
    pose=docNode.createElement('pose');
    pose.appendChild(docNode.createTextNode('Unspecified'));
    
    truncated=docNode.createElement('truncated');
    truncated.appendChild(docNode.createTextNode('0'));
    
    difficult=docNode.createElement('difficult');
    difficult.appendChild(docNode.createTextNode('0'));
    
    bndbox=docNode.createElement('bndbox');
    
        xmin=docNode.createElement('xmin');
        xmin.appendChild(docNode.createTextNode(num2str(myarray(i,1))));

        ymin=docNode.createElement('ymin');
        ymin.appendChild(docNode.createTextNode(num2str(myarray(i,2))));

        xmax=docNode.createElement('xmax');
        xmax.appendChild(docNode.createTextNode(num2str(myarray(i,1)+myarray(i,3))));

        ymax=docNode.createElement('ymax');
        ymax.appendChild(docNode.createTextNode(num2str(myarray(i,2)+myarray(i,4))));
        
    bndbox.appendChild(xmin);
    bndbox.appendChild(ymin);
    bndbox.appendChild(xmax);
    bndbox.appendChild(ymax);
    
    
    object.appendChild(classname);
    object.appendChild(pose);
    object.appendChild(truncated);
    object.appendChild(difficult);
    object.appendChild(bndbox);
    
    annotation.appendChild(object);
end

%% write xml doc

xmlfilename=strcat(filename1,'.xml');
xmlwrite(xmlfilename,docNode);
%type(xmlfilename);

end