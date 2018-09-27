for i =1:700
    filename=y{i};
    
    destname=strrep(filename,'_512','');
    copyfile(filename,destname);
    
    disp(i);
    
end