clc;
list  = topslist;
count=numel(list);

genderindex=ones(count,1);

for i =1:count
    
    [pathstr,name,ext] = fileparts(char(list(i))) ;
    row =strsplit(name,'_');
    rownumber=double(string(row{2}));
    
    if t.gender(rownumber)=="F"
        genderindex(i)=0;
    end
end