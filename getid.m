
id=string(Dlabels3(:,1));
label=string(Dlabels3(:,2));

footwear=id(find(label=='footwear'));
outerwear=id(find(label=='outerwear'));
tops=id(find(label=='tops'));
pants=id(find(label=='pants'));

allid3= cat(1,footwear,outerwear,pants,tops);