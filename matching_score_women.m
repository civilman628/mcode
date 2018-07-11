row=1;
for i = 7:10
    for j = 11:15
        for k=1:6
            t.m1(row)=men(i,j);
            t.m2(row)=men(j,k);
            t.m3(row)=men(k,i);
            
            t.outerwear(row)=men_label1(i,1);
            t.pants(row)=men_label1(j,1);
            t.footwear(row)=men_label1(k,1);
            row=row+1;
            
        end
    end
end

for i = 1:120
    t.total(i)=t.m1(i)+t.m2(i)+t.m3(i);
end