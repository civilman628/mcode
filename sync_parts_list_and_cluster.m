clc;

list = tops_idxcpu;
filelist = topslist;


len= length(list);
label=label;


for i =1:len
    
    [pathstr,name,ext] = fileparts(char(filelist(i)));
    
    ids=split(name,"_");
    rownumber=str2double(ids{2});
    oldclassname=oldlabel(rownumber);
    %disp(oldclassname);
    newclass=strcat(oldclassname,num2str(list(i)));
    %newlabel=strcat()
    label(rownumber)=newclass;
    disp(newclass);
    
end


    