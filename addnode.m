function [  ] = addnode( xmlfile1,docNode,classname1,xmin1,ymin1,xmax1,ymax1)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    annotation= docNode.getDocumentElement;
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
        xmin.appendChild(docNode.createTextNode(num2str(xmin1)));

        ymin=docNode.createElement('ymin');
        ymin.appendChild(docNode.createTextNode(num2str(ymin1)));

        xmax=docNode.createElement('xmax');
        xmax.appendChild(docNode.createTextNode(num2str(xmax1)));

        ymax=docNode.createElement('ymax');
        ymax.appendChild(docNode.createTextNode(num2str(ymax1)));

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
    
    xmlwrite(xmlfile1,docNode);


end

