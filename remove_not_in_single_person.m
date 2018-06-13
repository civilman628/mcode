

list = tops.parentlist;

count=1;
rows=numel(list);
index=ones(rows,1);

for i = 1:rows
    id = list(i);
    
    if ismember(id, newvalid)
        continue
    else
        index(i)=0;
    end
    
end