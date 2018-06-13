clc;
A = importdata('/home/scopeserver/Documents/MATLAB/2D_labels_top.csv');
lables=string(A.textdata(2:end,4));
%unique_lable=unique(lables)
%wrong_tag=tag_outerwear(find(lables=='tops'),:);

[num,col]=size(lables);
[rows,col2]=size(tag_tops);

if num~=rows
    disp('error');
end

for i=1:num
    if (lables(i)=='null')
        continue;
    else
        oldstring=string(tag_tops{i,1});
        newstring=strrep(oldstring,'tops',lables(i));
        tag_tops{i,1}=newstring;
    end

end