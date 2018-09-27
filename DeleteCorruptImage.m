clear;
clc;



DatasetPath = 'C:\Users\ming\Downloads\aimer\';


TrainImageSet = imageSet(DatasetPath);
numOfImages = TrainImageSet.Count;
lastwarn('');


for j = 1:numOfImages
    try
        img = read(TrainImageSet, j);
        re = strfind(lastwarn, 'error');
        if ~isempty(re)
            delete(TrainImageSet.ImageLocation{j});
        else
            fprintf('The %dth image is fine\n', j);
        end
        lastwarn('');
    catch ME
        fprintf('Error occurs with %dth image at %s\n', j, TrainImageSet.ImageLocation{j});
        delete(TrainImageSet.ImageLocation{j});
        lastwarn('');
        continue; 
    end
end