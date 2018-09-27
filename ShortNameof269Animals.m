for i=1:269
    id1=selectlistID{i,1};
    for j=1:1000
        id2=ImageNetWinIDS1{j,1};
        if strcmp(id1,id2)==1
            selectlistID{i,3}=ImageNetWinIDS1{j,2};
        end
    end
end