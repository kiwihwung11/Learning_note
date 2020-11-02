>>> import matplotlib.pyplot as plt
>>> import requests,json
>>> import sys
>>> url="https://www.dcard.tw/_api/forums/pet/posts?popular=false"
>>> res=requests.get(url)
>>> resjson=json.loads(res.text)
>>> resjson

>>> plt.rcParams['font.sans-serif']=['DFKai-SB']
>>> school_list=[]
>>> non_bmp_map=dict.fromkeys(range(0x10000,sys.maxunicode+1),0xfffd)
>>> for output in resjson:
	S_name=output["school"].translate(non_bmp_map)
	school_list.append(S_name)

>>> school={}
>>> for x in range(len(school_list)):
	school.update({school_list[x]:0})

>>> school

>>> for output2 in resjson:
	school[output2["school"].translate(non_bmp_map)]=school[output2["school"].translate(non_bmp_map)]+1

>>> count=[]
>>> for y in school_list:
	count.append(school[y])

>>> plt.barh(school_list,count)
>>> plt.show()

>>> school_name=[]
>>> for output in resjson:
	S_name=output["school"].translate(non_bmp_map)
	if ("學" or "校") in S_name:
		school_name.append(S_name) #過濾學校
