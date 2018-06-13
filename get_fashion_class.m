clc;

labels{692417,1}='n';

for i=1:692417
    [a1,a2,a3,a4,a5,a6,a7,a8,class]=strread(c{i}, '%s %s %s %s %s %s %s %s %s','delimiter','/');
    labels{i}=class;
end