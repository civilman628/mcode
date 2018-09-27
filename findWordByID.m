for i=1:272
    for j=1:1000
        if strcmp(selectlistID{i},ID{j,2})
            selectlistID{i,2}=ID{j,3}
        end
    end
end