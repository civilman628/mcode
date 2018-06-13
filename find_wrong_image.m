class='footwear';
clc;

%M = textscan('/home/scopeserver/Documents/MATLAB/2D_labels_suites_to_outwear_(dress_top).csv','%s');

A = importdata('/home/scopeserver/Documents/MATLAB/2D_labels_outwear_(tops_dresses).csv');
lables=string(A.textdata(2:end,4));
unique_lable=unique(lables)
wrong_file=outerwear_file(find(lables=='tops'));

destpath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/wrong_fashion_images/suites/';

[rows,coll]=size(wrong_file);

for i=1:rows
    [pathstr,name,ext] = fileparts(char(wrong_file(i)));
    copyfile(char(wrong_file(i)),strcat(destpath,name,ext));
end
