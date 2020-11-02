for n in range(0,5):
    url="http://www.htqyy.com/top/musicList/hot?pageIndex={}&pageSize=20".format(n)

#.format(n) 把(n)的東西丟到大括號{}

>>> import requests
>>> from bs4 import BeautifulSoup
>>> songID=[]
>>> songName=[]
>>> import re #讓規則運算式可以使用
>>> for n in range(0,5):
	url="http://www.htqyy.com/top/musicList/hot?pageIndex={}&pageSize=20".format(n)
	print(url)
	html=requests.get(url)
	resultID=re.findall('sid="(.*?)"',html.text) #(.*?)就是所有的意思
	resultName=re.findall('<a href=".*?" target="play" title="(.*?)" sid=".*?">',html.text)
	songID.extend(resultID)
	songName.extend(resultName)

>>>for m in range(0,len(songID)):
	songUrl='http://f2.htqyy.com/play7/{}/mp3/5'.format(songID[m])
	print(songUrl)
	print('正在下載第{}首'.format(m+1))
	response=requests.get(songUrl).content
	f=open('c:\\music\\{}.mp3'.format(songName[m]),'wb')
	f.write(response)
	f.close()
