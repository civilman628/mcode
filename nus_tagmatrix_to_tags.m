tags=strings(269648,1);

for i=1:269648
    for j=1:1000
        if AllTags1k(i,j)==1
            tags(i)=tags(i)+tag1k(j)+' ';
        end
    end
    
end