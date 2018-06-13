
path = '/home/scopeserver/RaidDisk/DeepLearning/mwang/data/gan_image/dress/';

for i = 1:21937
    
    if ~strcmp(dress2Dlabels(i),'unassigned')
        classlabel=dress2Dlabels(i);
        disp(dress2Dlabels(i))
        oldfilename=char(dresslistgan(i));
        [filepath,name,ext]=fileparts(oldfilename);
        newfilename=fullfile(path,char(classlabel),[name ext]);
        copyfile(oldfilename,newfilename);
    
    
    end
    
    
    
    
    
    
end