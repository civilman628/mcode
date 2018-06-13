% nogender=wholeperson(find(gender=='N'));
% female=wholeperson(find(gender=='F'));
% male=wholeperson(find(gender=='M'));
% 
% gendermap=containers.Map(wholeperson,1:186470);

%clc;

% for i =1:679484
%     
%     if isKey(gendermap,fileid(i))==1
%         g=gendermap(fileid(i));
%         oldlabel(i,2)=string(gender(g));
%     else
%         oldlabel(i,2)=string("N");
%     end
%     %disp(g);
%     
% end


%newfemale=1:15373;

% for i=3:15375
%     fname=listing(i).name;
%     [a ,b]= strread(fname, '%d %s', 'delimiter','.');
%     newfemale(i-2)=a;
%     
% end


% for i = 1:679484
%     currentid=t{i,3};
%     if ismember(currentid,newfemale)
%         t{i,2}="F";
%     end
%     
%     if ismember(currentid, newmale)
%         t{i,2}="M";
%     end
%    
% end

%[newdresslist, indexlist ]=sort(dresseslist);

% personid=1:180792;
% 
% for i = 1:180792
%     fname= wholepersonlist(i);
%     [pathstr,name,ext] = fileparts(char(fname));
%     personid(i)=double(string(name));
%     
% end


for i = 1:180792
    if ismember(wholepersonlocalid(i,1),female)
        wholepersonlocalid(i,2)=0;
    end
    
end


