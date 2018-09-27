for i=1:118
    for j=1:1000
        id1=dog118{i,1};
        id2=ImageNetWinIDS1{j,1};
        test = strcmp(id1,id2);
        if test==1
            ImageNetWinIDS1{j,3}=1;
        end
    end
end

for i=1:1000
    if ImageNetWinIDS1{i,3}~=1
        ImageNetWinIDS1{i,4}=0;
    end
end
