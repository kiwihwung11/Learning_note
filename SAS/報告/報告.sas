/*讀取檔案*/
libname A115246 "C:\Users\kiwii\OneDrive\desktop\黃聖崴\課業\大四下\資料分析軟體\作業\報告";
PROC IMPORT OUT= A115246.COVID_19 
 DATAFILE= "C:\Users\kiwii\OneDrive\desktop\黃聖崴\課業\大四下\資料分析軟體\作業\報告\報告資料\Day_Confirmation_Age_County_Gender_19CoV .csv" 
 DBMS=CSV REPLACE;
 GETNAMES=YES;
 DATAROW=2; 
RUN;
PROC IMPORT OUT= A115246.population_d 
DATAFILE= "C:\Users\kiwii\OneDrive\desktop\黃聖崴\課業\大四下\資料分析軟體\作業\報告\人口密度.csv" 
DBMS=CSV REPLACE;
GETNAMES=YES;
DATAROW=2; 
RUN;
PROC IMPORT OUT= A115246.COVID_19_death 
DATAFILE= "C:\Users\kiwii\OneDrive\desktop\黃聖崴\課業\大四下\資料分析軟體\作業\報告\Covid-19_death.csv" 
DBMS=CSV REPLACE;
GETNAMES=YES;
DATAROW=2; 
RUN;
/*重新整理資料*/
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

/*確認資料是否為最新*/
proc sort data=A115246.covid_19_2; by date; run;*統計資料到4/25為止;
proc means
data= A115246.covid_19_2 sum;
var num;
run; *總共429例;
data A115246.covid_19_ms;
set A115246.covid_19_2;
by month;
retain month_sum;
if first.month then month_sum=0;
month_sum+num;
if last.month then output;
keep month month_sum;
run; 
/*年齡分布狀況*/
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
*可以看出20~34歲的青壯年族群是最主要的發病族群，數量非常多，佔約50%。此類族群大多為大學生、年輕上班族為主。
*這類族群推測在外接觸時間較長，因此感染風險較高導致;
*35歲以後各年齡層平均佔比5%左右;
*原本預計的兒童和老人可能是感染的危險族群，然而發病人數卻遠不及青壯年族群，若取4-19、65-70以上，約佔15%;

/*區域分布狀況*/
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
*人口密度的資料id為排名;
*為了得知人口密度與武漢肺炎傳播的相關程度，將人口密度與縣市發病案例合併。可以看出人口密度高的城市案例也較高;
*然而也有例外，例如密度第二名的嘉義市案例僅4名，密度第四名的基隆市也僅有7名案例;
*因此試圖跑了相關係數，結果為顯著p<.05，相關程度為0.634，由此得知人口密度與疾病的感染呈現正相關;


/*各城市性別分布狀況*/
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
*整體而言，各城市的男女感染比例接近1:1;

/*海外VS本土，性別感染分布狀況*/
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
*海外的男女感染比例為1:1，但是由此可以看出海外入境的案例遠大於本土感染的案例;

/*海外入境年齡感染分布狀況*/
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
if sex="女" and overseas="是" then output;
else if sex="男" and overseas="是" then output;
run;
data A115246.age_overseas_dist3;
set A115246.age_overseas_dist2;
format age_overseas_fp 5.2;
age_overseas_fp=(age_overseas_f/429)*100;
keep  age sex age_overseas_f age_overseas_fp;
run; 
*由此表可得知海外入境的案例，男女性比例仍然平均，然而以60歲為基準，高齡的罹患者女性較男性多，;
*女性的平均壽命較男性長，但高齡代表免疫力較差，推測此緣故為高齡發病女性較男性多的原因;
*然而此表再次證明，20~40歲的青壯年族群是染病最多的族群。;

/*死亡率高的族群*/
proc sort data=A115246.death1; by age;run;
proc freq data=A115246.death1; table age ; run;
*由上可知，目前台灣死亡的案例年齡都偏高，因此中年到高齡的人需要注意健康狀況。;

/*總結*/
/*是什麼造成台灣的感染人數上升?*/
*以本報告分析，台灣的本土案例並不多，這多虧了台灣的衛生組織與人員的努力。
而境外移入的案例遠大於本土案例，可知病毒以外來形式為主，必須加強海外入境的管理
針對外國人或僑胞在入境時的防疫配套措施是重點;

/*年紀大或年紀太小是被感染的高風險族群?*/
*由數據可知，儘管在醫學上，年紀太小或高齡皆是免疫力較差的族群，然而感染風險還是要看
接觸環境，也就是在戶外的活動時長。因此20~34歲的青壯年族群成為最主要的發病族群，可得知
減少戶外活動能夠降低被感染的風險;

/*什麼情況下感染的機率最高?*/
*在人潮擁擠的地方可能性最高，無論是數據或是醫學上都得證，因此建議暫時遠離人群，以網路代替。;

/*延伸問題、展望*/
*對於疫情本報告的資料較為不足，此外由於人口密度與染病相關性偏高，建議可以從此方向去蒐集台灣
人潮多的地點的數據，來分析哪些地方是染病的高風險區。
此外疫情爆發後，針對兩岸以及各國對中國的態度，也因為這次疫情有非常大的變化，針對社群研究也許可以朝這個方向
蒐集資料。;
