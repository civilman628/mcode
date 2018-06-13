fileid=fopen('idtostring.csv','w');
formatSpec='%s, %s\n';
for i=1:212335
    fprintf(fileid,formatSpec,validdata{i,:});
end