clc;
parfor i=1:118
    disp (i);
    folder=dog118{i};
    source=strcat('C:\Users\ming\Downloads\animals272_train\',folder);
    %file=filelist{i};
    movefile(source,'C:\Users\ming\Downloads\dogs118\');
    %copyfile(file,'C:\Users\ming\Downloads\new\');

end