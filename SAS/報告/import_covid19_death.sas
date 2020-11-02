PROC IMPORT OUT= A115246.COVID_19_death 
            DATAFILE= "D:\saswork\Covid-19_death.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
