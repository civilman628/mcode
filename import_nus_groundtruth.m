clc;
path='C:\Users\ming\Downloads\NUS_Groundtruth\AllLabels\';

listing =struct2cell(dir(path));

tagindex=ones(269648,81);

for i=1:81
    filename=strcat(path,listing(1,i+2));
    a = importdata(filename{1});
    tagindex(:,i)=a;
end