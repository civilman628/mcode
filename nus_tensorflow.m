
clc;
imagemetadata=cell(269648,2);

parfor i=1:269648
    if idstring(i,2)~=""
        filename=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/nus_image_data_middle/',idstring(i,1),'.jpg');
        if exist(filename, 'file')
            imagemetadata(i,:)={idstring(i,1),idstring(i,2)};
            disp(i);
        end
    end
end

%cellfun(@(x) isempty(x), imagemetadata(:, 1), 'Uniformoutput', false) & cellfun(@(x) isempty(x), imagemetadata(:, 2), 'Uniformoutput', false)