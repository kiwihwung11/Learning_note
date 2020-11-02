PROC IMPORT OUT= A115246.COVID_19 
            DATAFILE= "C:\Users\kiwii\OneDrive\desktop\³ø§i\Day_Confirma
tion_Age_County_Gender_19CoV .csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
