import requests
from bs4 import BeautifulSoup
url="https://gnn.gamer.com.tw/?yy=2019&mm=6"
res=requests.get(url)
soup=BeautifulSoup(res.text,"html.parser")

for item in soup.select("h1 a"):
	title=(item.text)
	print(title)

for item in soup.select("h1 img"):
	title=(item.text)
	sep=item.get("class")
	print(sep)

classified=[]
for item in soup.select("h1 img"):
	sep=item.get("class")
	if sep not in classified:
		classified.append(sep)
#會有雜項，要清理

clean=[]
def print_lol(the_list):
    for each_item in the_list:
        if isinstance(each_item, list):
            print_lol(each_item)
        else:
            clean.append(each_item) #拆括號
            
print_lol(classified)
clean

to_col=zip(clean)
with open("clean_sep.csv",'w',encoding='big5',newline='') as myfile:
	data=csv.writer(myfile)
	data.writerow(['分類','實際名稱'])
	for row in to_col:
		data.writerow(row)
		
clean.remove('IMG-C02')
clean.remove('IMG-E43')
clean.remove('IMG-E27')

label={}
for x in range(len(clean)):
	label.update({clean[x]:0})

for outcome in soup.select("h1 img"):
	label[outcome["class"]]=label[outcome["class"]]+1 #抓下來是list沒辦法用

raw_data=[]
for item in soup.select("h1 img"):
	sep=item.get("class")
	raw_data.append(sep)
	
def print_lol(the_list):
    for each_item in the_list:
        if isinstance(each_item, list):
            print_lol(each_item)
        else:
            raw_data2.append(each_item)
            
for x in raw_data2:
	if x =='IMG-C02':
		raw_data2.remove(x)
for x in raw_data2:
	if x =='IMG-E43':
		raw_data2.remove(x)
for x in raw_data2:
	if x =='IMG-E27':
		raw_data2.remove(x)

for outcome in raw_data2:
	label[outcome]=label[outcome]+1

final=[]
for y in clean:
	final.append(label[y])
	
import matplotlib.pyplot as plt
import sys
plt.rcParams['font.sans-serif']=['DFKai-SB']
plt.barh(clean,final)
plt.xlabel("類型")
plt.ylabel("資料筆數")
plt.title("六月份ACG焦點")
plt.yticks(['IMG-GAC', 'IMG-Gmuti', 'IMG-GB3', 'IMG-Gmobi', 'IMG-GA19', 'IMG-Gother', 'IMG-GA13', 'IMG-GA1', 'IMG-GA31', 'IMG-GB1', 'IMG-GA24', 'IMG-GA23', 'IMG-GB2', 'IMG-GA20', 'IMG-GA14', 'IMG-GA4', 'IMG-GA25', 'IMG-GA21'],['動漫畫','多平台','任天堂','手機跨平台','PC','其他(商品or演唱會','其他(活動or宣傳','線上遊戲','PSV','PS4','IOS','其他(收藏','Xbox','網頁遊戲','街機','PS3','安卓','其他(重製板'])
