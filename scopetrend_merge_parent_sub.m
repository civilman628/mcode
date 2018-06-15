
clc;

for i =1:418748
    
    [filepath, name, ext] = fileparts(menlabelprob.trendmenimagepart(i));
    
    parts=strsplit(name,'_');
    id=str2double(parts(3));
    label = strrep(recordmen.label(id), " ","");
    filename = recordmen.filename(id);
    labellist(i)=label;
    filelist(i)=filename;
    %womenlabelprob.parentfile(i)=filename;
    %womenlabelprob.parentlabel(i)=label;
    disp(i);
end