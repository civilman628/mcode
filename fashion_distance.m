center=mean(f5);
maxvalue=0;

for i =1:124497
    v=f5(i,:);
    d=norm(v-center,2);
    maxvalue=max(d,maxvalue);
    
    disp(i);
    disp(maxvalue);
end