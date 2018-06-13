clc;
soureimagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all/';
targetimagepath='/home/scopeserver/RaidDisk/DeepLearning/mwang/data/fashion_product_combine/';

numberofsample=1000;

for i=1:2
    class=char(classes(i));
    
    id=morefashionlabels(find(morefashionlabels(:,2)==class),1);
    
    samples=randsample(id,numberofsample);
    l
    for j=1:numberofsample
        
        sourefile = char(strcat(soureimagepath,samples(j),'.jpg'));
        
        if exist(sourefile,'file')
            destfile = char(strcat(targetimagepath,class,'/',samples(j),'.jpg'));
            copyfile(sourefile,destfile);
        else
            disp(sourefile);
        end

    end
    
end









% backpack=singleproductid(find(singleproductid(:,2)=='backpack'),1);
% bags=singleproductid(find(singleproductid(:,2)=='bags'),1);
% dress_shoes=singleproductid(find(singleproductid(:,2)=='dress_shoes'),1);
% dresses=singleproductid(find(singleproductid(:,2)=='dresses'),1);
% highheels=singleproductid(find(singleproductid(:,2)=='highheels'),1);
% outerwear=singleproductid(find(singleproductid(:,2)=='outerwear'),1);
% oxford=singleproductid(find(singleproductid(:,2)=='oxford'),1);
% pants=singleproductid(find(singleproductid(:,2)=='pants'),1);
% sandals=singleproductid(find(singleproductid(:,2)=='sandals'),1);
% shortpants=singleproductid(find(singleproductid(:,2)=='shortpants'),1);
% skirts=singleproductid(find(singleproductid(:,2)=='skirts'),1);
% sneakers=singleproductid(find(singleproductid(:,2)=='sneakers'),1);
% tops=singleproductid(find(singleproductid(:,2)=='tops'),1);
% underwear=singleproductid(find(singleproductid(:,2)=='underwear'),1);
% wallet=singleproductid(find(singleproductid(:,2)=='wallet'),1);