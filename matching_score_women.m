row=1;
for i = 1:5
    %for j =18:21
        for k=6:11
            %t.m1(row)=women(i,j);
            %t.m2(row)=women(j,k);
            t.m1(row)=women(k,i);
            
            t.dresses(row)=women_label1(i,1);
            %t.pants(row)=women_label1(j,1);l
            t.footwear(row)=women_label1(k,1);
            row=row+1;
            
        end
    %end
end

%for i = 1:120
   % t.total(i)=t.m1(i)+t.m2(i)+t.m3(i);
%end