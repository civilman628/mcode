
clc;
fileid = fopen('tops_men_list.txt','w');
fprintf(fileid,'%s\n',topslistmen);
fclose(fileid);