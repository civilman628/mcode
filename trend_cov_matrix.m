clc;
labels=unique(womenlabel);

for i =1:32
    label = labels(i);
    feature = womenfeature(womenlabel==label,:);
    cmd1=strcat("muwomen",num2str(i),'=mean(feature);');
    eval(cmd1);
    disp(label);
    cmd2=strcat("invcovwomen",num2str(i),"=eye(2048)/cov(feature);");
    eval(cmd2);
    
end