
clc;

list  = topslistmen;
count=numel(list);
parentlist=ones(count,1);

for i =1:count
    [pathstr,name,ext] = fileparts(char(list(i))) ;
    row =strsplit(name,'_');
    parentid=double(string(row{1}));
    parentlist(i)=parentid;
    
end