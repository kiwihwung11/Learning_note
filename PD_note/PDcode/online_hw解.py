import requests
import json
res=requests.get("https://ecshweb.pchome.com.tw/search/v3.3/all/category/DEAM/results?q=%E9%81%8A%E6%88%B2&page=1&sort=sale/dc")
data = json.loads(res.text)
data

clean= data['prods']
for item in clean:
	print(item['name'],item['price'])
	
import csv

goods_name=[]
goods_price=[]
for item in clean:
	goods_name.append(item['name'])
	goods_price.append(item['price'])
	
list_id=[]
for x in range(len(goods_name)):
		list_id.append(x)
		
to_col=zip(list_id,goods_name,goods_price)
with open("online_HW.csv",'w',encoding='big5',newline='') as myfile:
	data=csv.writer(myfile)
	data.writerow(['ID','桌遊名稱','價格'])
	for row in to_col:
		data.writerow(row)
		
with open("online_HW2.csv",'w',encoding='big5',newline='') as myfile:
	data=csv.writer(myfile)
	data.writerow(['ID','桌遊名稱','價格'])
	for x in list_id:
		data.writerow([x])

#https://b.ecimg.tw/items/DEAM6UA9006WQ2O/000002_1478508675.jpg
url="https://"+net[x]+".ecimg.tw/"+item['picS']
pic=[]
for item in clean:
	pic.append(item['picS'])
len(pic)
net=['b','c','d','e','f']
for x in range (2):
	net.extend(net)

url=[]
for x in range(len(net)):
	url2="https://"+net[x]+".ecimg.tw/"+pic[x]
	url.append(url2)
for img in item['picS']:
	fname=item['picS'].split("/")[-1]
