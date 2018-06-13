clc;


dest_path = '/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_wholerperson_parts_7classes/subclass/';

current_table=skirts_table;
current_label="skirts"; 

rows = height(current_table);

samples=int32(rows*0.1);


y = datasample(current_table,samples, 'Replace',false);

for i =1:samples
    sourcefile= table2cell(y(i,1));    %y.dresseslist(i);
    subclassid= table2cell(y(i,2));  %y.dresses_idxcpu(i);
    [pathstr,name,ext] = fileparts(char(sourcefile{1}));
    dest_filename = fullfile(dest_path, char(strcat(current_label, num2str(subclassid{1}))) ,[name ext]);
    %disp(dest_filename);
    copyfile(char(sourcefile{1}), dest_filename );
    
    
end