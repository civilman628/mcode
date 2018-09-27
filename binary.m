for i=1:46776
    for j=1:2048
        if feature(i,j)<0
            feature(i,j)=0;
        else
            feature(i,j)=1;
        end
    end
    
end