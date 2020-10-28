# 歡迎來到Python基礎(新手教學開始啦!)
* 要進入資料科學領域首先要會寫程式呢~
* 我使用的是Anaconda的Jupyter notebook為主(記筆記很方便)，大家可以挑自己習慣的用。
* 在學習理論和各種方法的過程，程式的實作都會用到!
* 對我而言要兼顧實作與理論學習才是最好的。
* 了解每個步驟產出的數值意義才不會迷失在數據裡面...
* 我的原始程式碼都放在PDcode資料夾裡面，這裡是彙整筆記。

# 正文開始!
首先python的保留字或是內建的函式都會變色!但在不同的編程平台顏色會不同。
以下的顏色區別是在原始python介面會顯示的顏色。
只要知道，會變色的通常有特殊功能，不能隨意設定成變數就行了。
```python
  範例:
  print("hahaha")
  #函式為紫色，字串是綠色
  #執行結果用藍色呈現，關鍵字用橘色呈現例如:def、while 代表系統使用這個命名，所以不能用這些來命名變數。
```
大家可能會好奇，如果我用這些內建關鍵字來設定成變數會怎樣呢?
```python
  範例:
  for=21
  #等號是宣告、指定運算子(我宣告一個叫做for的變數，要指向(等於)21)
  #又或是可以理解成我準備一個盒子叫做for，然後將21這個數字放進去
  執行結果:
  File "<ipython-input-3-8312256e4d58>", line 1
    for=21
       ^
SyntaxError: invalid syntax
```
結果就變成這樣啦!python會卡在出現錯誤的地方。  
那什麼是正確的宣告方式呢?
```python
  範例:
  abc=21
  print(abc)
  執行結果:
  21
```
還有一個重要的東西，就是「縮排」!  
python有自己的縮排規則，請不要因為高興就亂縮排，有可能會引發錯誤。  
尤其適用到for迴圈或if判斷式的時候，冒號底下的縮排會引響執行的順序。
```python
  範例:
  for abc in xyz:
    print()
   #這邊print就一定要縮一格，不然會有程式編排上的錯誤。
   #這裡只是解釋結構，這個程式跑不出東西
```
接下來是很常用到，上面也提到過的「變數」。
```python
  abc=21.5
  #abc是變數。
  #等號左邊是材質，右邊是內容物，python可以自由assign會自動判斷資料性質，但若是java或C語言要用int或float去指定內容物性質。
```
#### 那麼變數有哪些類型呢?  
* integer是整數
* float是浮點數
* string是字串 
#### 接下來要介紹運算子
* 指定運算子: =  
* 算術運算子: +,-,*,/  
* 比較運算子: >,<  
* 邏輯運算子: &&代表and要同時成立才成立  or其中一個成立即可  !代表相反的或者非...  
* 次方表現方式: ** 
* 不等於: !=

寫程式其實就是學會怎麼應用「高級版計算機」，一般的運算，如加、減、乘、除，python都可以做。
以下來看個範例，大概就能知道上面說的變數和運算子怎麼用。
```python
  A=0
  B="2"
  A+B
  #要小心!變數的類型若不相同會導致有些指令無法執行。
  #例如最好理解的，數值和字串無法直接相加。(例如:「1+一」 這種東西我們通常不會這樣寫，電腦也看不懂)
  執行結果:
  TypeError: unsupported operand type(s) for +: 'int' and 'str'
```
那有沒有辦法可以讓上面的A+B相加呢?B雖然是字串但畢竟還是數字吧?  
答案是有的~有字串轉成數字的功能喔!
```python
  print(A+int(B))
  #用int()的函數把B轉換成數字就可以相加囉!
  執行結果:
  2
```
但如果B這個字串不是數字會發生什麼事呢?來看看吧!
```python
  A=0
  B="a"
  print(A+int(B))
  執行結果:
  ValueError: invalid literal for int() with base 10: 'a'
```
就不意外的出錯啦!所以要使用這個功能請確保這個字串可以被轉成數字喔!  

看到這邊大家會發現一些python執行的規律，這邊就來介紹一下python使用的優缺點與補充。  
python的特色是看一行翻一行--可單行跑並且可跨平台，相較於C++簡潔。  
處理速度比c++慢一點，但便於處理大量資料。  

補充:宣告變數只能用a-z/0-9/_ 來命名。並且要用文字開頭。
```python
  1yy=73
  #像這種宣告就是不行的。
```
另外字串和字串是可以相加的來看結果吧!
```python
  範例:
  x="我們一起學貓叫"
  y="我要把你阿嬤賣掉"
  x+y
  結果:
  我們一起學貓叫我要把你阿嬤賣掉
```
另外大家可以善用type()這個函數來檢查變數是什麼型態。
到這邊為止我們的「新手教學」第一階段就算完成了!接下來是很常用到的「判斷式」、「迴圈」

# 判斷式與迴圈
### 判斷式 if elif else
* 判斷式 if statement
* 可以理解成:如果...就...。
* 符合條件的話if就出結果，不符合就跑else，沒else就不出結果。
* 流程圖上的表現，菱形一定是判斷。
```python
範例:
a=22
if a>=22:
    print("x")
elif a>=21:
    print("y")
else:
    print("z")
#a符合第一個條件，因此會出現x的結果。
執行結果:
x
```
根據這種特性，我們可以製作簡單的互動。讓使用者輸入數值，然後會根據程式判斷回傳一個結果。
```python
tem=int(input("請輸入攝氏溫度"))
#input()執行後可以讓使用者輸入東西。裡面的字串是提示內容。

if tem>=28:
    print("請開冷氣")
elif tem<=16:
    print("請開暖氣")
else:
    print("什麼都開不了，笑你")
```
這種功能也可以寫成一個函數包起來。函數名稱是自訂的(def後面的名稱，以及括號裡面要輸入多少變數都可以設定)
```python
def warning(tem):
    if tem>=28:
        print("潮熱rr")
    elif tem<=16:
        print("冷枝枝~")
    else:
        print("剛剛好，舒爽")
```
### 迴圈 for while 
什麼是迴圈?-->要讓電腦不斷重複某個動作或運算時會用到。例如加總或排序。  
再來講講for和while的關係。和上面的判斷式互相配合的關係不太一樣。  
for適合用在你知道明確範圍的時候，也就是說你大概知道這個迴圈要跑幾次，在多大範圍內。  
while是條件式的，適合用在你不知道要跑幾次，但你知道停止條件的時候。例如x大於多少時要停止。  
#### for的用法
```python
範例:
for x in range(5):
    print(x)
#這邊能很明確的知道，我要跑五次，然後把每次都把x印出來。
結果:
0 1 2 3 4
```
你可能注意到，結果不是1-5而是0-4這是python的執行方式(從0開始)，因此如果你想要跑到5那就要設定到6，以此類推。  
此外range也有一些設定方式，一起來看看吧!
```python
for x in range(3,8,2):
    print(x)
#這代表從3開始取到8，並且從開頭3後取第2個數。
結果:
3 5 7
```
大家會發現range裡面的數分別是(起始點，終點，條件)組成的。  
詳細可以去google查 python range 會有詳細的介紹。  
接下來試著把for和if結合在一起。
```python
for x in range(20,10,-1):  
    if(x%2)==0:
        print(x,"是偶數")
    else:
        print(x,"是奇數")
#%讀做mod，代表取餘數
#range裡面代表，我要從20倒回去取到10(但只會取到11)。-1是每次都往回退1
```
結果稍微長了一點，就請大家自行嘗試，或是從我的PDcode裡面找到PD0307的檔案吧!之後也都會用類似的形式呈現。  
#### 補充:.format()用法
"{}".format()可以讓前面的括號對應到後面的值。  
來看範例與應用吧!
```python
範例:
"{} {}".format("hello","world")
#這邊的hello對應的就是0號位置，world對應的則是1號，這個是預設的。
#執行後會出現'hello world'會根據.format前面的條件組合

"{1} {0}".format("hello","world")
#這一條的設定將會出現'world hello'根據format裡面對應的位置輸出。
應用:
num=int(input("請輸入任意整數: "))
if (num%2) == 0:
    print("{0}是偶數".format(num))
else:
    print("{0}是奇數".format(num))
#這邊讓使用者輸入後，利用判斷式決定輸出結過，用format將使用者輸入的值放進{0}的位置。
```
#### while的用法
基本上和for差不多，但差別在while的條件滿足前，迴圈將會不斷執行下去。  
因此一定要給一個終止點，並且要讓數值能不斷向前執行。(不然會變無限迴圈)
```python
範例:
x=0
while x<9:
    print(x)
    x+=1
#這代表我要從x=0的時候開始將x印出來，執行到條件(x<9)前，並且每次執行x+=1(x=x+1)「這就是前進條件」。
範例:
x=0
while x<5:
    print(x,"小於五")
    x+=1
else:
    print(x,"不小於五")
#這裡會讓x不斷+1，並且在x<5滿足前會一直執行將「x小於五」印出來，直到不符合條件時才會執行else
```
接下來，恭喜大家完成了「新手教學」的第二階段!迴圈和判斷真的是很常使用的功能，可以好好練習一下。  
補充一個燒腦的雙重迴圈，讓我們理解有兩個以上迴圈會怎麼執行吧!
```python
for x in range(2): 
    print(x)
    for y in range(2):
        print(y)
結果:
0 0 1 1 0 1
#首先要知道range(2)代表只會抓出0和1的數字
#第一個0是x的print，之後會進入y的程序，y會跑完之後才會x才會前進
#因此結果輸出的順序是 x y y x y y 
```
## 資料整理與爬蟲
### List用法
List是很常用，也很好用的資料型態，和array的差別在於list裡面可以存不同型別的資料，例如可以同時存有字串和數值等，但array就不行，array必須要同一種型別(全字串或全數值)。
```python
movies=["訓龍高手",1975,"醉後大丈夫",1979,"刀劍神域序列戰爭",1983] #順序是0,1,2 爬資料要去找資料共同的規律 一個陣列裡面可以混用
print(movies[0])
#這邊會跑出訓龍高手，每筆資料仍然有對應的index可以查詢。

cast=["呈澔","君霖","黃飛鴻","江宇"]
print(len(cast)) 
#len()可以告訴我們這個list的長度
```
那麼接下來就是如何針對list裡面的資料做新增、刪除等動作。  
分別能使用append、pop、remove、extend、insert
```python
cast.append("葉問") 
print(cast)
#只能從資料末端加入

cast.pop() 
print(cast)
#從末端消除

cast.extend(["張天智","伊達政宗"])
print(cast)
#可以加多筆資料

cast.remove("伊達政宗") 
print(cast)
#可以直接指定消除

cast.insert(0,"巨石強森")
print(cast)
#可指定要新增的index
```
那我們要如何去使用list呢?結合之前的for迴圈可以執行的任務很多喔!  
可以讓數值加總，或是把資料整理成某種你想要的狀態...等等幾乎都可以。  
來看看範例吧!
```python
fav_movies=["訓龍高手","醉後大丈夫"]
for each_flick  in fav_movies : 
    print(each_flick)
#把list裡面的東西全部印出來
結果:
訓龍高手
醉後大丈夫

x=0
while x<len(fav_movies):
    print(fav_movies[x])
    x+=1
#用while的寫法
```
接下來要介紹比較複雜的狀況，也就是list裡面還有list。蛤?你問怎麼會有這種東西?假設今天要用爬蟲去網站抓資料，抓下來的內容常常是雜亂的。  
因此學會把資料整理成自己想要的樣子是很重要的，接下來的內容會圍繞著這個部分前進。
```python
for each_item in movies:
    print(each_item)
#印出list裡面的所有屬性
結果:
The Holy Grail
1975
Terry Jones & Terry Gilliam
91
['Graham Chapman', ['Michael Palin', 'John Cleese', 'Terry Gilliam', 'Eric Idle', 'Terry Jones']]
```
大家會發現存在list裡面的內層list整個算是一筆資料。所以在使用index查詢時要從最外層開始往內找。
```python
movies=["The Holy Grail", 1975, "Terry Jones & Terry Gilliam", 91, ["Graham Chapman", ["Michael Palin", "John Cleese", "Terry Gilliam", "Eric Idle", "Terry Jones"]]]
print(movies[4][1][3]) 
#第四筆(對第一層來說)的第一筆(對第二層來說)資料中的第三筆(對第三層來說)
結果:
Eric Idle
```
這邊來介紹一個好用的函數isinstance()這個函數可以幫你判斷某個資料是否為某種型態的資料。
```python
names=["Michael","Terry"]
isinstance(names,list) 
#這個是問說這個資料是不是list
```
不知道大家是否覺得剛剛的list裡面還有list這件事很麻煩阿?  
接下來就來教大家拆解!(切洋蔥)  
```python
for each_item in movies:
    if isinstance(each_item,list):
        for nested_item in each_item:
            print(nested_item)
    else:
        print(each_item)
#第一層for我指定要看movies裡面的每個資料，並且判斷是否為list型態。
#如果是list型態就執行第二層的for，也就是把內層list的資料全部印出來(if)
#如果不是的話就直接印出(else)
結果:
The Holy Grail
1975
Terry Jones & Terry Gilliam
91
Graham Chapman
['Michael Palin', 'John Cleese', 'Terry Gilliam', 'Eric Idle', 'Terry Jones']
```
大家會發現我們成功拆掉一層了!為什麼沒辦法全部拆掉呢?因為第二層for只會執行一次，他判斷Graham Chapman的這層是list然後就把裡面資料都印出來了。  
而迴圈也剛好執行到這邊會結束(全部資料都拜訪完了)。  
接下來讓我們挑戰把它全部拆完吧!
```python
for each_item in movies:
    if isinstance(each_item,list):
        for nested_item in each_item:
            if isinstance(nested_item,list):
                for tri_item in nested_item:
                    print(tri_item)
            else:
                print(nested_item)
    else:
        print(each_item)
#我只要在第二層for裡面也做一次判斷是否為list，然後將裡面資料全部印出就行了!
結果:
The Holy Grail
1975
Terry Jones & Terry Gilliam
91
Graham Chapman
Michael Palin
John Cleese
Terry Gilliam
Eric Idle
Terry Jones
```
拆完啦!真的跟切洋蔥一樣淚流滿面，那如果我有一百層不就要切一百次嗎??那我迴圈要幾個for啊?  
別著急，之後會跟大家展示一個聰明一點的方式，就是「遞迴」!
```python
def print_lol(the_list):
    for each_item in the_list:
        if isinstance(each_item, list):
            print_lol(each_item)   #回到上方的函數(遞迴)
        else:
            print(each_item)
print_lol(movies)
結果:
The Holy Grail
1975
Terry Jones & Terry Gilliam
91
Graham Chapman
Michael Palin
John Cleese
Terry Gilliam
Eric Idle
Terry Jones
```
> 先來解釋這段程式的意義
> * def宣告我要寫一個函數，並且名稱叫做print_lol(可以自己取名)，裡面預設要給他一個變數the_list(一樣可以自己取名)
> * 第一層for要拜訪list裡面所有資料，並判斷這個list裡面是否有其他list型態的資料。
> * 如果內層資料不是list的話，就直接印出就好。
> * **重點在這!如果是list的話，我就要使用print_lol()這個自己寫的函數，對內層的list去做一樣的事情。(拆括號就是這段啦!)**  
啥?!怎麼這麼短的程式就能夠完成了?  
其實「遞迴」的概念就是將「重複執行」的部分(也就是迴圈)，變成函數的形式。  
然後在函數裡面重新call自己(也就是說處理第一遍的資料會更新，然後再處理第二遍、第三遍...)  
也就是說，內層的list也會對內部資料進行是不是list的判斷，如果不是就直接印出。(這個過程就是拆括號啦!)
那大家可能會想問，什麼時候會停呢?答案是:不知道XD  
這就是遞迴危險的地方，可能會不知道盡頭在哪裡，而且也只會輸出最終結果過程看不見，使用上要小心。但遞迴的優點就是程式短，而且能重複更新執行。
備註:宣告的函數()裡面要給的數值都要給齊，例如這個函數一定要給一個(the_list)，不給的話就會error

看完比較困難的部分，來補充list的一些小撇步。
首先是剛剛有提到的index，可以理解成list裡面的每筆資料對應的編號。
```python
fam=[1.73,1.68,1.71,1.89]
#     0    1    2    3    這是順向的位置
#    -4   -3   -2   -1    也可以倒過來
```
知道這個運作，就可以利用index抓出list裡面自己想要的資料囉!
```python
sum(fam)
#可以加總list裡面的數值
len(fam)
#顯示list的長度
fam[0]
#回傳該index位置的值
fam[3:5] 
#回傳index 3到5的值，但不包含尾(5號位)。若要抓到5號則需要設定成3:6
```
以上就是list常用的基本操作啦!其他的小練習內容比較雜，其實只要知道list的index如何查詢就差不多了。  
如果有需要請參考我的PD0314、PD0321的程式碼吧!  
接下來回到剛才拆括號的延伸，如果我想知道哪些資料是被拆括號的呢?   
那只要針對我們的拆括號函數print_lol()來做修改就可以囉!
```python
def print_lol(the_list, level=0): #這裡需要的變數可以預先設定「預設值」，這樣使用者就算不輸入也不會出現error
    for each_item in the_list:
        if isinstance(each_item, list):
            print_lol(each_item, level+1)   #除了拆括號外，新增一個level
        else:
            for tab_stop in range(level):   #原本的else只是單純印出，預設的level是0因此第一次執行時，這裡的for迴圈不會執行。
                print("\t",end=" ")   #多印一個縮排
            print(each_item)
#遞迴開始的時候，level+1會使得else的for迴圈開始執行。
#因此我就能達成目標，讓內層的list印出的資料前面都會加上一個縮排
```
這樣一來我就會知道，內層list的資料是哪些。因為都會被縮排，並根據縮排一次或兩次來知道他是第幾層的資料。  
接下來實測吧!
```python
names=["john","eric",["clare","anny"],"michael",["berlin"]]
print_lol(names,0) #假設使用者要自行設定的話，可以自己加數值
結果:
john
eric
	 clare
	 anny
michael
	 berlin
```
再來介紹python寫入資料的功能
```python
name=input("請輸入檔名:")  #讓使用者自行輸入檔案名稱
file= open (name,"w",encoding="UTF-8") # w是 write寫入模式 要先檢查編碼方式通常預設是unicode，中文要調成UTF-8
file.write("test")                     #我要在這個空的檔案裏面寫入test
file.close()                           #會開始執行
#結果是他會開啟一個123的txt檔，然後把test寫進去
file= open (name,"r",encoding="UTF-8") #r代表閱讀模式
content=file.read()                    #IDLE 會跑出test
print(content)                         #把內容print出來
file.close()
#結果就是會把剛剛謝的test印出來
```
### 處理擷取下來的資料
前面我們探討如何處理list的資料以及使用方法。  
但網路擷取的資料不會都是list的形式，長相百百種。  
接下來我們一起模擬擷取資料的處理方法。  
接下來會用到一個模擬的txt檔內容如下，從網路上隨便複製一段對話內容貼在txt來模擬爬蟲擷取。  
Man said:Is this the right room for an argument?
Other Man said:I've told you: once.
Man said:No you haven't!
Other Man said:Yes I have.
Man said:When?
(pause)
Other Man said:Just now.
Man said:No you didn't!
Other Man said:Yes I did!
Man said:You didn't!
Other Man said:I'm telling you, I did!
Man said:You did not!
Other Man said:Oh I'm sorry, is this a five minute argument, or the full half hour?
Man said:Ah!(taking out his wallet and paying) Just the five minutes.
Other Man said:Just the five minutes. Thank you.
Other Man said:Anyway, I did.
Man said:You most certainly did not!
```python
the_file= open("sketch.txt") #如果大家不是把檔案放在python或Anaconda的工作目錄的話，請將完整的路徑打上去。
print(the_file.readline(),end=" ")
the_file.close() 用完記得要有close的習慣!
結果:
Man said:Is this the right room for an argument?
```
如果有記得執行close的話，他就會回到第一句話重新跑，不然持續readline的話，程式會自動跳下一句話，以此類推。  
若要調整readline的位置可以如下做法。  
```python
the_file.seek(0)   #用這個之後會回到第一行(0)，因為readline()會暫存位置然後一直往下跑，若要調位置要用seek
print(the_file.readline(),end=" ")
結果:
Man said:Is this the right room for an argument?
```
那我們如果想看整篇文章長什麼樣子呢?  
結合for迴圈就可以囉!
```python 
for each_line in the_file:
    print(each_line,end=" ")
```
之後我們要對資料進行處理，那要如何做呢?首先就是要知道如何「分割」把重複性高的部分用來當作分割的標準，能有效的剔除不要的部分。  
例如「冒號」是最常出現的，我們就用冒號試試看。
```python
each_line.split(":")
(role,line_spoken)=each_line.split(":") #可以理解成我要將切分的兩個部份，分別裝進role和line_spoken兩個箱子
print(role)
print(line_spoken)
結果:
Man said
You most certainly did not!
```
這樣大家就能將資料切分開囉!  
那接下來結合迴圈將整個檔案的資料切分開吧!
```python
data=open("sketch.txt")
for each_line in data:
    (role,line_spoken)=each_line.split(":")
    print(role,end=" ")
    print(line_spoken,end=" ")
#這邊大家應該會出現error，這是因為資料裡面有句話有兩個冒號
```
遇到這個狀況怎麼處理呢?先來好好認識split這個函數吧!
```python
a= "free your mind"
print(a.split()) #自己找東西折 結果變成三串字
結果:
['free', 'your', 'mind']
--------------------------------------------
b="welcome to the desert...of real"
print(b.split("o")) #針對特定字元折
結果:
['welc', 'me t', ' the desert...', 'f real']
--------------------------------------------
c="what is real? how do you define real?"
print(c.split(" ",2)) #只分割到第二個" " 執行兩次 產生三個字串
結果:
['what', 'is', 'real? how do you define real?']
```
所以若要順利跑出來，只要告訴程式我只要折一次
```python
data=open("sketch.txt")
for each_line in data:
	(role,line_spoken)=each_line.split(":",1) #每個字串只折一次
	print(role,end=" ")
	print(line_spoken,end=" ")
#大家發現還是卡住，因為(pause)不符合，好煩阿阿阿阿!
```
這時再繼續補充另一個工具.find()  
能幫助程式判斷某句話是否存在。  
```python
each_line="i tell you theres no such thing as flying circus"
each_line.find(":")
# -1 代表沒有 :這個字
結果:
-1
---------------------------
each_line="i tell you: theres no such thing as flying circus"
each_line.find(":")
#因為有冒號，他會告訴你冒號在字串裡面的位置。
結果:
10
```
接下來我們多下一個條件來嘗試結果。
```python
data=open("sketch.txt")
for each_line in data:
    if not each_line.find(":")==-1: #如果找不到冒號的話就不執行那行
        (role,line_spoken)=each_line.split(":",1)
        print(role,end=" ")
        print(line_spoken,end=" ")
#可跑出全部，但(pause)不會被印出來因為不符合
```
終於跑出來啦!但大家會發現，印不出全部，有些訊息不符合會直接被跳過。  
這樣有好有壞，好處是可以撇掉雜訊，壞處是可能也會漏掉關鍵訊息。  
除了判斷式，我們還有另一個很棒的東西try、except可以用。  
如果判斷式涵蓋的狀況不足以應對，那就會出error然後卡住，但try except可以解決這種狀況。
缺點也是可能會漏掉關鍵訊息。
```python
data=open("sketch.txt")
for each_line in data:
    try:
        (role,line_spoken)=each_line.split(":",1)
        print(role,end=" ")
        print(line_spoken,end=" ")
    except:
        pass
#可處理錯誤
```
更完整的寫法如下，為了應對檔案遺失等問題。
```python
import os
if os.path.exists("sketch.txt"):
	data=open("sketch.txt")
	for each_line in data:
		if not each_line.find(":")==-1:
			(role,line_spoken)=each_line.split(":",1)
			print(role,end=" ")
			print("said:",end=" ")
			print(line_spoken,end=" ")
	data.close()
else:
	print("the data is missing")

#結果也會全跑出來，但若你把txt刪掉就會跑出 missing
-------------------------------------------------
#或是下面這兩種寫法也可以
try:
	data=open("sketch.txt")
	for each_line in data:
		try:
			(role,line_spoken)=each_line.split(":",1)
			print(role,end=" ")
			print("said:",end=" ")
			print(line_spoken,end=" ")
		except:
			pass
	data.close()
except:
	print("the data is missing") 
---------------------------------------------------
try:
	data=open("sketch.txt")
	for each_line in data:
		try:
			(role,line_spoken)=each_line.split(":",1)
			print(role,end=" ")
			print("said:",end=" ")
			print(line_spoken,end=" ")
		except ValueError: #具體告訴電腦是ValueError
			pass
	data.close()
except IOError:  #具體告訴電腦是IOError
	print("the data is missing")
```
恭喜大家完成了資料整理的第一關。    
接下來繼續往第二關邁進。  
這次的檔案也是練習，一樣是隨便打的一串數字名稱就叫mikey吧!
2-34,3:21,2.34,2.45,3.01,2:01,2:01,3:10,2-22
```python
with open("mikey.txt") as mk:
	data=mk.readline()
	mikey=data.strip().split(",")
print(mikey)
#把檔案名稱設定在程式內認成mk然後以,為基準點切割
#之後將結果印出
```
我們可以得出跟當按裡面一樣的結果，之後來製作一個函數作為分割工具。
```python
def sanitized(time_string):
    if "-" in time_string:
        splitter = "-"
    elif ":" in time_string:
        splitter= ":"
    else:
        return(time_string)
    (mins,secs) = time_string.split(splitter)
    return (mins + "." + secs)
# 製造分割工具，將裡面的符號都作為分割點，然後替換成統一的.
```
開一個新的list把結果存進去
```python
clean_mikey=[sanitized(each_t) for each_t in mikey] #把條件寫在list裡面，或是用for迴圈去append進去都可以
print(sorted(clean_mikey))
結果:
['2.22', '2.38', '2.49', '3.01', '3.01', '3.02', '3.02', '3.02', '3.22']
```
可以看到，全部的資料都統一變成.了。人為紀錄資料常常有這種符號用錯的狀況，所以整理資料的時候可以把它統一比較好處理。  
然後假設我今天只要不重複的資料，方法有兩種，可以自己寫或是用套件都可以。
```python
print(set(clean_mikey))  #set 會幫你把同樣的數值去掉

#以下是自己寫的方式
mikey=sorted([sanitized(t) for t in mikey])
unique_mikey=[]
for each_t in mikey:
    if each_t not in unique_mikey:
        unique_mikey.append(each_t)
print(unique_mikey)
```
都會得到一樣的結果:['2.22', '2.38', '2.49', '3.01', '3.02', '3.22']
到這邊大家對於資料處理就有初步的了解了!接下來就要進入爬蟲的環節啦!
### 爬蟲開始
終於來到令人興奮的章節啦!讓我們先來準備爬蟲的套件吧!
備註:網站會隨時更新，由於使用的套件request和beautiful soup沒辦法所有網站都爬的到，需要嘗試。  
另外，如果網址有異動也會導致跑不出來，這時可以試著去改變網址內容。
```python
import requests
res=requests.get("https://www.books.com.tw")
print(res.text)
#結果會是該網站的原始碼，可去該網站案右鍵檢視網頁原始碼，這邊是用博客來來玩
```
結果超級長，因為他把整個原始碼都爬下來了。
```python
from bs4 import BeautifulSoup #這是資料剖析套件
soup=BeautifulSoup(res.text,"html.parser")
count=1
for item in soup.select(".DY5T1d"): #這的括號要放什麼要自己找規律性決定
	print("====[",count,"]====")
	title=(item.text)
	url=item.get("href")
	print(title)
	print(url)
	count+=1
#這一串是在抓取標題，並把裡面我們需要的部分抓出來
#如果執行不出來有可能是因為該網頁的編號已經換過了
```
接下來是著爬政府的產銷履歷農產品
```python
payload={'classid':'1', 'ProductCode':'115407', 'EndDate':'2019/05/02', 'StartDate':'2019/04/18'}
import requests
from bs4 import BeautifulSoup
res= requests.post("https://taft.coa.gov.tw/Resume/rl.aspx?&classid=1&ProductCode=115407&xCity=&xTown=&EndDate=2019%2f05%2f02&StartDate=2019%2f04%2f18&", data= payload)
soup=BeautifulSoup(res.text, "html.parser")
clean= soup.select('.lpTb')
clean
```
這邊我可以爬出一個網頁裡面的各種農產品。接下來要進行各種整理。
```python
for item in clean:
	product = item.select('a')
	print(len(product))
#這可以知道你抓回來的資料長度 資料顯示20
for item in clean:
	product = item.select('a')[0] #可print出第一筆資料(0號位置) 之所以用a是因為a後面放的都是文字(HTML語法)
	print(product)
```
這樣還是會殘留許多網頁語法的文字，接下來我只要留農產品的文字。
```python
for item in clean:
	product = item.select('a')[0].text #text 代表的是網路程式碼 <a>xxxx</a> 中間的xxx就是text的內容
	print(product)
```
接下來是小作業的部分。
```python
#題目 假設我要追蹤所有編號
for item in clean:
	for i in range(0,19):
		product=item.select('a')[i].text
		print(product)
#跑出結果後我發現編號會混雜公司名稱 並且規律是偶數 所以我只要偶數的output
--------------------------------------------------------------------
for item in clean:
	for i in range(0,10): #因為我print 2*i的結果 也就是說跑完後會超過範圍 所以我調整範圍到10剛好能顯示全部的編號
		product=item.select('a')[2*i].text #我只要偶數
		print(product)
#結果完成
```
爬蟲有很多小細節需要注意，而且我用的都是requests的方法，網路上有很多爬蟲教學可以學。 
這邊只提供給大家我自己的課堂練習，網頁也有過期的可能，建議大家可以去參考更多人的方法。  
接下來是圖片爬蟲的時間!有這個能力真是太愉悅了，尤其可以抓一堆背景圖拿來當桌布感覺就很棒。
就讓我們開始吧!首先先付上shutil的工具箱，我是根據實際摸索來理解功能，更全面的功能解釋可以上網查。
```python
shutil.copyfile(src,dst)   #從源src複製到dst中去。當然前提是目標位址是具備可寫許可權。拋出的異常資訊為IOException. 如果當前的dst已存在的話就會被覆蓋掉
shutil.move(src,dst)       #移動檔或重命名
shutil.copymode(src,dst)   #只是會複製其許可權其他的東西是不會被複製的
shutil.copystat(src,dst)   #複製許可權、最後存取時間、最後修改時間
shutil.copy(src,dst)       #複製一個檔到一個檔或一個目錄
shutil.copy2(src,dst)      #在copy上的基礎上再複製檔最後存取時間與修改時間也複製過來了，類似於cp –p的東西
shutil.copy2(src,dst)      #如果兩個位置的檔案系統是一樣的話相當於是rename操作，只是改名；如果是不在相同的檔案系統的話就是做move操作
```
之後就讓我們正式開始吧
```python
from bs4 import BeautifulSoup
import requests
res=requests.get("http://www.gamebase.com.tw/forum/64172/topic/96278769/1")
soup=BeautifulSoup(res.text,"html.parser")
soup
#結果很多行，這邊一樣先接收整個網站原始碼
```
然後我們把裡面有img圖片的部分過濾出來。
```python
for img in soup.select(".img"):
	print(img)
-------------------------------
for img in soup.select(".img"):
	print(img["src"],img["src"].split("/")[-1]) #這行是當你把資料拉下來，要先觀察你要的，然後切割才有用 []是位置
結果:
https://i.gbc.tw/gb_img/s495x660/2855624.jpg 2855624.jpg
...
```
這邊可以發現，前面學的資料整理就是要應用在這，要一直把爬下來的資料篩選、整理。  
到這個步驟已經很接近把圖片爬下來了，再來就是存取。
```python
import shutil #工具用法在上面
for img in soup.select(".img"):
    fname=img["src"].split("/")[-1] #src是網路語言的圖片屬性
    res2= requests.get(img["src"],stream=True) #這邊我知道要的是img["src"]所以要get 後面的stream是網路狀態要有的時候才能載
    f = open(fname,"wb") #wb是寫入模式
    shutil.copyfileobj(res2.raw, f) #raw代表全部的資料
    f.close()
```
抓下來的圖片會存在工作目錄中，這樣就成功囉!
再來試試看爬PTT的板看看鄉民都在聊啥吧!
```python
res=requests.get("https://www.ptt.cc/bbs/movie/index.html")
soup=BeautifulSoup(res.text,"html.parser")
for item in soup.select("a"):
	print(item.text)
#標準先抓網路內容然後篩選出文字
```
然後這次來嘗試換頁。需要觀察換頁的歸類。
```python
paging=soup.select("div.btn-group.btn-group-paging a")
```
整套流程如下
```python
url2="https://www.ptt.cc/bbs/movie/index.html"
for rounds in range (4):
	res= requests.get(url2)
	soup=BeautifulSoup(res.text,"html.parser")
	item = soup.select("div.title a") #完整的寫法
	paging= soup.select("div.btn-group.btn-group-paging a")
	url="https://www.ptt.cc/"+paging[1]["href"]
	url2=url #讓新的可以變成迴圈的條件 右邊assign到左邊
	for outcome in item:
		print(outcome.text,outcome["href"]) #成果
```
這邊來個額外的，由於我喜歡逛網路書店，但有時候真的很懶得一個一個點。    
所以我決定自己把書的圖片都爬下來，這樣就能直接看進了什麼新書。  
```python
import requests
from bs4 import BeautifulSoup
import shutil
for p in range(1,5):
	url="https://www.books.com.tw/web/books_bmidm_1601/?o=1&v=1&page=x" #把網頁設x變成變數就會自己換頁
	url=url.replace("x",str(p))
	res=requests.get(url)
	soup=BeautifulSoup(res.text)
	for img in soup.select(".cover"):
		fname=img["src"].split("/")[-1].split("&")[0]
		res2=requests.get(img["src"].split("i=")[1].split("&")[0],stream=True)
		f=open(fname,"wb")
		shutil.copyfileobj(res2.raw,f) #raw會直接輸出網站結果--才會是圖片不是網址
		f.close()
```
接下來是爬Dcard的練習，這邊比較特別不是用soup。有些網站有api的串流可以用。
```python
import matplotlib.pyplot as plt
import requests,json #json檔要用 dictionary格式
url="https://www.dcard.tw/_api/forums/dressup/posts?popular=false" 
res=requests.get(url)
resjson=json.loads(res.text)
resjson
#一樣的流程，先把整個網站爬下來
```
接下來要進行不一樣的，就是資料分析!  
從爬下來的資料可以進行簡單的統計。來計算性別人數吧!
```python
gender={"F":0,"M":0} #為了讓男女可以計算  {}是dictionary型別
for outcome in resjson:
    gender[outcome["gender"]]=gender[outcome["gender"]]+1
    
sex=["女性","男性"]
count=[gender["F"],gender["M"]]
plt.bar(sex,count)
plt.show()
#視覺化呈現，可以看出在這個版留言的是男性多還是女性多
```
