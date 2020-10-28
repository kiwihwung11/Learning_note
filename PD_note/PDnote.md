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
