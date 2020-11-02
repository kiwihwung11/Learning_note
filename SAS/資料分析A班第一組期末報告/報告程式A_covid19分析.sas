/*Ū���ɮ�*/
libname A115246 "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i";
PROC IMPORT OUT= A115246.COVID_19 
 DATAFILE= "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i\���i���\Day_Confirmation_Age_County_Gender_19CoV .csv" 
 DBMS=CSV REPLACE;
 GETNAMES=YES;
 DATAROW=2; 
RUN;
PROC IMPORT OUT= A115246.population_d 
DATAFILE= "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i\�H�f�K��.csv" 
DBMS=CSV REPLACE;
GETNAMES=YES;
DATAROW=2; 
RUN;
PROC IMPORT OUT= A115246.COVID_19_death 
DATAFILE= "C:\Users\kiwii\OneDrive\desktop\���t�Q\�ҷ~\�j�|�U\��Ƥ��R�n��\�@�~\���i\Covid-19_death.csv" 
DBMS=CSV REPLACE;
GETNAMES=YES;
DATAROW=2; 
RUN;
/*���s��z���*/
data A115246.covid_19_2;
set A115246.covid_19;
rename var1= d_name var2=date var3=city var4=sex var5=overseas var6=age var7=num;
month=month(var2);
run;
data A115246.population_d_2;
set A115246.population_d ;
rename var1= id var2=city var3=status var4=pop_d;
run;
data A115246.death1;
set A115246.covid_19_death;
rename var2=age var3=date var4=city var5=sex;
drop _;
run;

/*�T�{��ƬO�_���̷s*/
proc sort data=A115246.covid_19_2; by date; run;*�έp��ƨ�4/25����;
proc means
data= A115246.covid_19_2 sum;
var num;
run; *�`�@429��;
data A115246.covid_19_ms;
set A115246.covid_19_2;
by month;
retain month_sum;
if first.month then month_sum=0;
month_sum+num;
if last.month then output;
keep month month_sum;
run; 
/*�~�֤������p*/
data A115246.age_dist;
set A115246.covid_19_2;
if age="4" then age="04";
else if age="5-9" then age="05-9";
run;
proc sort data=A115246.age_dist; by age num; run;
data A115246.age_dist2;
set A115246.age_dist;
by age num;
retain age_f;
if first.age then age_f=0;
age_f+num;
if last.age then output;
run; 
data A115246.age_dist3;
set A115246.age_dist2;
format age_fp 5.2;
age_fp=(age_f/429)*100;
keep age age_f age_fp;
run; 
*�i�H�ݥX20~34�����C���~�ڸs�O�̥D�n���o�f�ڸs�A�ƶq�D�`�h�A����50%�C�����ڸs�j�h���j�ǥ͡B�~���W�Z�ڬ��D�C
*�o���ڸs�����b�~��Ĳ�ɶ������A�]���P�V���I�����ɭP;
*35���H��U�~�ּh��������5%���k;
*�쥻�w�p���ൣ�M�ѤH�i��O�P�V���M�I�ڸs�A�M�ӵo�f�H�ƫo�����ΫC���~�ڸs�A�Y��4-19�B65-70�H�W�A����15%;

/*�ϰ�������p*/
proc sort data=A115246.covid_19_2; by city num; run;
proc sort data=A115246.population_d_2; by id; run;
data A115246.area_dist;
set A115246.covid_19_2;
by city num;
retain city_f;
if first.city then city_f=0;
city_f+num;
if last.city then output;
run; 
data A115246.population_d_3;
set A115246.population_d_2;
pop_d2=input(pop_d,comma8.);
drop pop_d;
run;
proc sql; 
create table A115246.area_dist2 as
select *
from A115246.area_dist as a left join A115246.population_d_3 as b
on a.city = b.city;
quit;
proc sort data=A115246.area_dist2; by descending city_f id ; run;
data A115246.area_dist3;
set A115246.area_dist2;
format city_fp 5.2;
city_fp=(city_f/429)*100;
keep id city city_f city_fp;
run; 
proc corr pearson;
var city_f;
with pop_d2;
run;
*�H�f�K�ת����id���ƦW;
*���F�o���H�f�K�׻P�Z�~�ͪ��Ǽ��������{�סA�N�H�f�K�׻P�����o�f�רҦX�֡C�i�H�ݥX�H�f�K�װ��������רҤ]����;
*�M�Ӥ]���ҥ~�A�Ҧp�K�ײĤG�W���Ÿq���רҶ�4�W�A�K�ײĥ|�W���򶩥��]�Ȧ�7�W�ר�;
*�]���չ϶]�F�����Y�ơA���G�����p<.05�A�����{�׬�0.634�A�Ѧ��o���H�f�K�׻P�e�f���P�V�e�{������;


/*�U�����ʧO�������p*/
proc sort data=A115246.covid_19_2; by city sex num ; run;
data A115246.city_sex_dist;
set A115246.covid_19_2;
by city sex num;
retain city_sex_f;
if first.city or first.sex then city_sex_f=0;
city_sex_f+num;
if last.city or last.sex then output;
run; 
data A115246.city_sex_dist2;
set A115246.city_sex_dist;
format city_sex_fp 5.2;
city_sex_fp=(city_sex_f/429)*100;
keep city sex city_sex_f city_sex_fp;
run; 
*����Ө��A�U�������k�k�P�V��ұ���1:1;

/*���~VS���g�A�ʧO�P�V�������p*/
proc sort data=A115246.covid_19_2; by overseas sex num ; run;
data A115246.overseas_sex_dist;
set A115246.covid_19_2;
by overseas sex num;
retain overseas_sex_f;
if first.overseas or first.sex then overseas_sex_f=0;
overseas_sex_f+num;
if last.overseas or last.sex then output;
run; 
data A115246.overseas_sex_dist2;
set A115246.overseas_sex_dist;
format overseas_sex_fp 5.2;
overseas_sex_fp=(overseas_sex_f/429)*100;
keep  sex overseas_sex_f overseas_sex_fp;
run; 
*���~���k�k�P�V��Ҭ�1:1�A���O�Ѧ��i�H�ݥX���~�J�Ҫ��רһ��j�󥻤g�P�V���ר�;

/*���~�J�Ҧ~�ַP�V�������p*/
proc sort data=A115246.age_dist; by age overseas num ; run;
data A115246.age_overseas_dist;
set A115246.age_dist;
by age overseas num;
retain age_overseas_f;
if first.age or first.overseas then age_overseas_f=0;
age_overseas_f+num;
if last.age or last.overseas then output;
run; 
proc sort data=A115246.age_overseas_dist; by sex; run;
data A115246.age_overseas_dist2;
set A115246.age_overseas_dist;
if sex="�k" and overseas="�O" then output;
else if sex="�k" and overseas="�O" then output;
run;
data A115246.age_overseas_dist3;
set A115246.age_overseas_dist2;
format age_overseas_fp 5.2;
age_overseas_fp=(age_overseas_f/429)*100;
keep  age sex age_overseas_f age_overseas_fp;
run; 
*�Ѧ���i�o�����~�J�Ҫ��רҡA�k�k�ʤ�Ҥ��M�����A�M�ӥH60������ǡA���֪����w�̤k�ʸ��k�ʦh�A;
*�k�ʪ������ةR���k�ʪ��A�����֥N��K�̤O���t�A�������t�G�����ֵo�f�k�ʸ��k�ʦh����];
*�M�Ӧ���A���ҩ��A20~40�����C���~�ڸs�O�V�f�̦h���ڸs�C;

/*���`�v�����ڸs*/
proc sort data=A115246.death1; by age;run;
proc freq data=A115246.death1; table age ; run;
*�ѤW�i���A�ثe�x�W���`���רҦ~�ֳ������A�]�����~�찪�֪��H�ݭn�`�N���d���p�C;

/*�`��*/
/*�O����y���x�W���P�V�H�ƤW��?*/
*�H�����i���R�A�x�W�����g�רҨä��h�A�o�h���F�x�W���åͲ�´�P�H�����V�O�C
�ӹҥ~���J���רһ��j�󥻤g�רҡA�i���f�r�H�~�ӧΦ����D�A�����[�j���~�J�Ҫ��޲z
�w��~��H�ι��M�b�J�Үɪ����̰t�M���I�O���I;

/*�~���j�Φ~���Ӥp�O�Q�P�V�������I�ڸs?*/
*�Ѽƾڥi���A���ަb��ǤW�A�~���Ӥp�ΰ��֬ҬO�K�̤O���t���ڸs�A�M�ӷP�V���I�٬O�n��
��Ĳ���ҡA�]�N�O�b��~�����ʮɪ��C�]��20~34�����C���~�ڸs�����̥D�n���o�f�ڸs�A�i�o��
��֤�~���ʯ�����C�Q�P�V�����I;

/*���򱡪p�U�P�V�����v�̰�?*/
*�b�H��������a��i��ʳ̰��A�L�׬O�ƾکάO��ǤW���o�ҡA�]����ĳ�Ȯɻ����H�s�A�H�����N���C;

/*�������D�B�i��*/
*���̱������i����Ƹ��������A���~�ѩ�H�f�K�׻P�V�f�����ʰ����A��ĳ�i�H�q����V�h�`���x�W
�H��h���a�I���ƾڡA�Ӥ��R���Ǧa��O�V�f�������I�ϡC
���~�̱��z�o��A�w��⩤�H�ΦU��襤�ꪺ�A�סA�]�]���o���̱����D�`�j���ܤơA�w����s��s�]�\�i�H�³o�Ӥ�V
�`����ơC;
