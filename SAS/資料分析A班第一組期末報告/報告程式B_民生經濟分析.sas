libname scu "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i2";
libname A115246 "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i";
/*�ޤJ���*/
PROC IMPORT OUT= SCU.data 
            DATAFILE= "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i2\ea.csv" 
            DBMS=csv REPLACE;
     GETNAMES=NO;
	 GUESSINGROWS=6000;
     DATAROW=2; 
RUN;

/*��z��Ʈ榡*/
data scu.main_data; 
set scu.data;
rename var2=industry_id
			var3=class
			var4=time
			var5=turnover;
label 	var2= '��~�N�X'
			var3='��~���O'
			var4='����ɶ�'
			var5='��~�B(�d��)'
			turn_billion='��~�B(����)';
turn_billion=ceil(var5/100000);
drop var1 var6;
run;
data scu.main_data2; 
set scu.main_data;
time2=put(time,$6.);
year=substr(left(time2),1,2);
month=substr(left(time2),3,2);
month2=substr(left(time2),4,2);
run;

proc sql;
create table scu.data_90 as
select *
from scu.main_data (where= (time between 9001 AND 9012));
quit;
proc sql;
create table scu.data_90_a as
select *
from scu.data_90(where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_90_b as
select *
from scu.data_90 (where= (industry_id >= '56'));
quit;
proc sort data=scu.data_90_a; by time; run;
data scu.data_90_am;
set scu.data_90_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion  mon_sum;
run; 
proc sort data=scu.data_90_b; by time; run;
data scu.data_90_bm;
set scu.data_90_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion  mon_sum;
run; 

proc sql;
create table scu.data_107 as
select *
from scu.main_data (where= (time between 10701 AND 10704));
quit;
proc sql;
create table scu.data_107_a as
select *
from scu.data_107(where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_107_b as
select *
from scu.data_107 (where= (industry_id >= '56'));
quit;
proc sort data=scu.data_107_a; by time; run;
data scu.data_107_am;
set scu.data_107_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion  mon_sum;
run; 
proc sort data=scu.data_107_b; by time; run;
data scu.data_107_bm;
set scu.data_107_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion  mon_sum;
run; 

/*�ھڹs��~�B�\���~�H�ήɶ��z���ƨíp��~��~�B*/
proc sql;
create table scu.data_92 as
select *
from scu.main_data (where= (time between 9201 AND 9212));
create table scu.data_91 as
select *
from scu.main_data (where= (time between 9101 AND 9112));
create table scu.data_108 as
select *
from scu.main_data (where= (time between 10801 AND 10812));
create table scu.data_109 as
select *
from scu.main_data (where= (time between 10901 AND 10904));
quit;
proc sql;
create table scu.data_92_a as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_92 (where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_92_b as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_92 (where= (industry_id >= '56'));
create table scu.data_91_a as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_91 (where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_91_b as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_91 (where= (industry_id >= '56'));
create table scu.data_108_a as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_108 (where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_108_b as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_108 (where= (industry_id >= '56'));
create table scu.data_109_a as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_109 (where= (industry_id BETWEEN '47_48' AND '487'));
create table scu.data_109_b as
select *, sum(turn_billion) as sum_t label='�~�禬'
from scu.data_109 (where= (industry_id >= '56'));
quit;

/*�p��s��~����~�B*/
proc sort data=scu.data_92_a; by time; run;
data scu.data_92_am;
set scu.data_92_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_92_am1;
set scu.data_92_am;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

proc sort data=scu.data_91_a; by time; run;
data scu.data_91_am;
set scu.data_91_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time month turn_billion sum_t mon_sum;
run; 
data scu.data_91_am1;
set scu.data_91_am;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

proc sort data=scu.data_108_a; by time; run;
data scu.data_108_am;
set scu.data_108_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_108_am1;
set scu.data_108_am;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

proc sort data=scu.data_109_a; by time; run;
data scu.data_109_am;
set scu.data_109_a;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_109_am1;
set scu.data_109_am;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

/*�p���\���~����~�B*/
proc sort data=scu.data_92_b; by time; run;
data scu.data_92_bm;
set scu.data_92_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_92_bm1;
set scu.data_92_bm;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

proc sort data=scu.data_91_b; by time; run;
data scu.data_91_bm;
set scu.data_91_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_91_bm1;
set scu.data_91_bm;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

proc sort data=scu.data_108_b; by time; run;
data scu.data_108_bm;
set scu.data_108_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 

data scu.data_108_bm1;
set scu.data_108_bm;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

data scu.data_109_bm;
set scu.data_109_b;
label mon_sum = '���禬';
by time;
retain mon_sum;
if first.time then mon_sum=0;
mon_sum+turn_billion;
if last.time then output;
keep time turn_billion sum_t mon_sum;
run; 
data scu.data_109_bm1;
set scu.data_109_bm;
format increase 5.2;
label increase='�����v';
 lag_ms=lag(mon_sum);
 increase=(dif(mon_sum)/lag(mon_sum))*100;
 drop lag_ms ;
run; 

/*�T�E�H�ƻP��~�B��������*/
proc sort data=scu.sars; by d_month; run;
data scu.sars2;
set scu.sars;
by d_month;
retain sum_mon;
if first.d_month then sum_mon=0;
sum_mon+num;
if last.d_month then output;
run; 
proc corr pearson;
var d_month;
with sum_mon;
run;

data A115246.covid_19_ms;
set A115246.covid_19_2;
by month;
retain month_sum;
if first.month then month_sum=0;
month_sum+num;
if last.month then output;
keep month month_sum;
run; 
proc corr pearson;
var d_month;
with sum_mon;
run;
proc print
data=scu.sars2;
var d_month sum_mon;
run;

proc print
data=A115246.covid_19_ms;
run;
