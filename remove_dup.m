clc;

list = tops1;

count=1;
rows=numel(list(:,1));
index=ones(rows,1);

[a,b] =hist(list.parentlist, unique(list.parentlist));

all = [a',b];
valid=all(all(:,1)==count,2);

for i = 1:rows
    id=list.parentlist(i);
    
    if ismember(id, valid)
        continue
    else
        index(i)=0;
    end
end

tops=list(index==1,:);