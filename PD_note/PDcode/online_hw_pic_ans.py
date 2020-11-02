Python 3.7.2 (tags/v3.7.2:9a3ffc0492, Dec 23 2018, 22:20:52) [MSC v.1916 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> import requests
>>> import json
>>> res=requests.get("https://ecshweb.pchome.com.tw/search/v3.3/all/category/DEAM/results?q=%E9%81%8A%E6%88%B2&page=1&sort=sale/dc")
>>> data = json.loads(res.text)
>>> clean= data['prods']

>>> pic=[]
>>> for item in clean:
	pic.append(item['picS'])

	
>>> len(pic)
20
>>> net=['b','c','d','e','f']
>>> for x in range (2):
	net.extend(net)
	
>>> net
['b', 'c', 'd', 'e', 'f', 'b', 'c', 'd', 'e', 'f', 'b', 'c', 'd', 'e', 'f', 'b', 'c', 'd', 'e', 'f']

>>> import shutil
>>> for img in range(21):
		fname=pic[img].split("/")[-1]
		url_1="https://"+net[img]+".ecimg.tw/"+pic[img]
		res2= requests.get(url_1,stream=True)
		f = open(fname,"wb")
		shutil.copyfileobj(res2.raw, f)
		f.close()
		

