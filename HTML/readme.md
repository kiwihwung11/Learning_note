# 網路資料科技應用
這裡是我的網路資料科技應用學習成果。  
這堂課的學習資源為老師的PPT(不上傳)、線上教學以及網站學習資源W3schools。  
線上課程資源:https://www.youtube.com/channel/UCnNIkWD9EbeHJ1f0oXI0rsw/videos(陪你一起寫程式)  
線上學習資源:https://www.w3schools.com/html/default.asp(W3schools)  
由於這堂課架設的網站伺服器是使用Amazon的AWS educate架的，現在已過期，以下僅提供我的網站原始碼。  

#### work 1
目標是架出和daily motion越像越好的響應式網站。
```HTML
<!DOCTYPE html>
<html lang="zh-TW">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <title>work1</title>
  <link rel="stylesheet" type="text/css" href="https://05115246-2.s3.amazonaws.com/work1/css/csswork.css">
</head>

<body>
<div class="col-12 col-s-12 header">
  <nav>
    dailymotion  
    <button class="button">註冊</button>
    <a href="#">登入</a>
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/login.jpg" alt="login">
    <a href="#">媒體庫</a>
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/media.jpg" alt="login">
    <a href="#">搜尋</a>
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/find.jpg" alt="login">
  </nav>
</div>

<div class="menu">
  <nav>
    <a href="#featured">精選</a>
    <a href="#news">新聞</a>
    <a href="#sports">運動</a>
    <a href="#entertain">娛樂</a>
    <a href="#music">音樂</a>
  </nav>
</div>




<div class="row content col-12 col-s-12">
  <div class="col-8 col-s-8 main"> 
    <div class="v-show">
      <h1 id="featured">精選</h1>
      <h2>今日熱門新聞</h2>
      <div class="video">
        <iframe frameborder="0"    
        src="https://www.dailymotion.com/embed/video/x7snkqm" 
        allowfullscreen allow="autoplay" name="iframe_a">
        </iframe>
      </div>
      <div class="v-text">
        <p>最新</p>
       <a href="https://www.dailymotion.com/embed/video/x7snkqm" class="v-href" target="_blank">
       高進【我們不怕】HD 官方完整版 MV</a><br>
       <a href="https://www.dailymotion.com/taihemusic" class="org-addr">
       太合音樂 (Taihe Music)</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7s9xrx" 
        allowfullscreen allow="autoplay">
        </iframe>
      </div>
      <div class="v-text">
        <p>最新</p>
        <a href="https://www.dailymotion.com/embed/video/x7s9xrx" class="v-href" target="_blank">
        勒毛措-心中的花兒(官方版MV)</a><br>
        <a href="https://www.dailymotion.com/propromoting" class="org-addr">
        無二音樂</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7g7tpn" 
        allowfullscreen allow="autoplay">
        </iframe>
      </div>
      <div class="v-text">
        <p>最新</p>
        <a href="https://www.dailymotion.com/embed/video/x7g7tpn" class="v-href" target="_blank">
        What’s It Like to Be a Food Deliveryman in China?</a><br>
        <a href="https://www.dailymotion.com/goldthread2" class="org-addr">
        Goldthread</a>
      </div>
    
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7ry8r5" 
        allowfullscreen allow="autoplay">
      </iframe>
      </div>
      <div class="v-text">
        <p>最新</p>
        <a href="https://www.dailymotion.com/embed/video/x7ry8r5" class="v-href" target="_blank">
        Tokyo Travel Hacks</a><br>
        <a href="https://www.dailymotion.com/imblackbuddha" class="org-addr">
        Black Buddha</a>
      </div>
    </div>

    <div class="v-show">
      <h1 id="news">新聞</h1>
      <h2>新聞焦點</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7l9ss9" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7l9ss9" class="v-href" target="_blank">
        理財健診_急診醫生拯救荷包大作戰</a><br>
        <a href="https://www.dailymotion.com/moneytw" class="org-addr">
        moneytw</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7ssu6p" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7ssu6p" class="v-href" target="_blank">
        反興建焚化爐 竹北烏魚養殖漁民拉白布條</a><br>
        <a href="https://www.dailymotion.com/LibertyTimes" class="org-addr">
        自由時報電子報</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7ssgh2" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7ssgh2" class="v-href" target="_blank">
        Nick Offerman Answers the Web's Most Searched Questions</a><br>
        <a href="https://www.dailymotion.com/wired" class="org-addr">
        WIRED</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7ssu7o" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7ssu7o" class="v-href" target="_blank">
        Spain becomes world’s new coronavirus epicentre as public calls on king to donate to health system</a><br>
        <a href="https://www.dailymotion.com/SouthChinaMorningPost" class="org-addr">
        South China Morning Post</a>
      </div>
    </div>

    <div class="v-show">
      <h1 id="sports">運動</h1>
      <h2>賽事精華</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7sqvzp" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7sqvzp" class="v-href" target="_blank">
        How being cooped up at home can be fun! (Maybe?)</a><br>
        <a href="https://www.dailymotion.com/golfdigestmag" class="org-addr">
        Golf Digest</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7spw4l" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7spw4l" class="v-href" target="_blank">
        Villejuif Boxing Show 2 (Highlight)</a><br>
        <a href="https://www.dailymotion.com/fightmag" class="org-addr">
        FIGHTMAG</a>
      </div>
    </div>

    <div class="v-show">
      <h1 id="entertain">娛樂</h1>
      <h2>重點聚焦</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7sql8j" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7sql8j" class="v-href" target="_blank">
        【WeChat releases long video】今天才知道，微信打开这个功能，朋友圈就能发5分钟长视频了</a><br>
        <a href="https://www.dailymotion.com/miaozhoajie" class="org-addr">
        妙招姐</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7sql9a" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7sql9a" class="v-href" target="_blank">
        【ENG SUB】完美关系 48 | Perfect Partner EP48（黄轩、佟丽娅主演）</a><br>
        <a href="https://www.dailymotion.com/chinahuacegroup" class="org-addr">
        China Huace Group</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7ss2qw" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7ss2qw" class="v-href" target="_blank">
        龍華影劇台【我唯一的擁護者】贈獎活動</a><br>
        <a href="https://www.dailymotion.com/CSTV-LTV" class="org-addr">
        L.T.V龍華電視</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7mtj37" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7mtj37" class="v-href" target="_blank">
        【超清】《武间道》第09集 杨洋/连奕名/张嘉倪/宋轶</a><br>
        <a href="https://www.dailymotion.com/jetsen-wangxin" class="org-addr">
        中国最强影视剧</a>
      </div>
    </div>

    <div class="v-show">
       <h1 id="music">音樂</h1>
       <h2>音樂首選</h2>
       <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7spdeh" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7spdeh" class="v-href" target="_blank">
        [예능연구소 직캠] VICTON - Nightmare(HANSE), 빅톤 - Nightmare(도한세) @Show!MusicCore 20200314</a><br>
        <a href="https://www.dailymotion.com/MBCKpop" class="org-addr">
        MBC Kpop</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7s9x8p" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7s9x8p" class="v-href" target="_blank">
        尕藏東珠-野犛牛(官方版MV)</a><br>
        <a href="https://www.dailymotion.com/propromoting" class="org-addr">
         無二音樂</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7srw7t" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7srw7t" class="v-href" target="_blank">
        林明禎 MinChen《不佔有 Unpossessive》Official MV 【HD】</a><br>
        <a href="https://www.dailymotion.com/seedmusictw" class="org-addr">
        種子 音樂</a>
      </div>
      
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7sqgpg" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text">
        <p>熱門</p>
        <a href="https://www.dailymotion.com/embed/video/x7sqgpg" class="v-href" target="_blank">
        熊貓眼樂隊【oh honey】HD 官方完整版 MV</a><br>
        <a href="https://www.dailymotion.com/taihemusic" class="org-addr">
        太合音樂 (Taihe Music)</a>
      </div>
    </div>
  </div>
  
  <div class="col-4 col-s-4 right">    
    <div class="v-show">
      <h5>更多內容</h5>
      <h2>精選影片</h2>

      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7snygj" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7snygj" class="v-href_r target="_blank>
        [단독/선공개] 10대들의 멘탈싸움! 릴타치VS서동...</a><br>
        <a href="https://www.dailymotion.com/Mnet" class="org-addr">
        Mnet</a>
      </div>
      
         
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7smp59" 
        allowfullscreenallow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7smp59" class="v-href_r target="_blank>
        A memorial song by man who's lost his best ...</a><br>
        <a href="https://www.dailymotion.com/glancetvmusic" class="org-addr">
        GlanceTV Entertainment</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7s9pqp" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7smp59" class="v-href_r target="_blank>
        TEKB 17: Clement Adrover vs Salvatore ...</a><br>
        <a href="https://www.dailymotion.com/fightmag" class="org-addr">
        FIGHTMAG</a>
      </div>
    </div>

    <div class="v-show" style="margin-top:25%;">
      <h5>頭條新聞</h5>
      <h2>您可能已錯過</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7soduy" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7soduy" class="v-href_r target="_blank>
        武漢肺炎》終於要量體溫！宜縣府下週一起門</a><br>
        <a href="https://www.dailymotion.com/LibertyTimes" class="org-addr">
        自由時報電子報</a>
      </div>
 
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7snlwb" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7snlwb" class="v-href_r target="_blank>
        [Pops in Seoul] NUMNUM!...</a><br>
        <a href="https://www.dailymotion.com/kpop_arirang" class="org-addr">
        Arirang K-Pop</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7snyd4" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7snyd4" class="v-href_r target="_blank>
        빅톤 한승우 직캠 Nightmare_200312</a><br>
        <a href="https://www.dailymotion.com/mnetm2" class="org-addr">
        M2</a>
      </div> 
    </div>
     
    <div class="v-show"style="margin-top:25%;">
      <h5>探索影片</h5>
      <h2>From Kwong Wah Yit Poh光華日報</h2>
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7ssui6" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7ssui6" class="v-href_r target="_blank>
        修车店“小规模”营业如何定义，业者感到混淆</a><br>
        <a href="https://www.dailymotion.com/kwongwah" class="org-addr">
        Kwong Wah Yit Poh光華日報</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7ssujc" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7ssujc" class="v-href_r target="_blank>
        警车驶入米都猪肉街 竟被谣传禁卖猪肉</a><br>
        <a href="https://www.dailymotion.com/kwongwah" class="org-addr">
        Kwong Wah Yit Poh光華日報</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7sst6c" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7sst6c" class="v-href_r target="_blank>
        武拉必自愿消防队“我们站岗，你们在家”</a><br>
        <a href="https://www.dailymotion.com/kwongwah" class="org-addr">
        Kwong Wah Yit Poh光華日報</a>
      </div>  
    </div>

    <div class="v-show" style="margin-top:25%;">
        <h5>探索影片</h5>
        <h2>From ChinaPress</h2>
        <div class="video">
          <iframe frameborder="0" 
          src="https://www.dailymotion.com/embed/video/x7ssuoh" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7ssuoh" class="v-href_r target="_blank>
          警方在行动管制期间在各地设路障</a><br>
          <a href="https://www.dailymotion.com/ChinaPress" class="org-addr">
          ChinaPress</a>
        </div>
        <div class="video">
          <iframe frameborder="0"  
          src="https://www.dailymotion.com/embed/video/x7ssuoc" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7ssuoc" class="v-href_r target="_blank>
          ◤行动管制14天◢文冬美食中心只外卖...</a><br>
          <a href="https://www.dailymotion.com/ChinaPress" class="org-addr">
          ChinaPress</a>
        </div>
         
        <div class="video">
          <iframe frameborder="0"  
          src="https://www.dailymotion.com/embed/video/x7ssu8f" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7ssu8f" class="v-href_r target="_blank>
          ◤行动管制14天◢警员做好防范 再行动！</a><br>
          <a href="https://www.dailymotion.com/ChinaPress" class="org-addr">
          ChinaPress</a>
        </div>
    </div>
     
    <div class="v-show" style="margin-top:50%;">
        <h5>探索影片</h5>
        <h2>From beinsports-hk</h2>

        <div class="video">
          <iframe frameborder="0"  
          src="https://www.dailymotion.com/embed/video/x7ssutx" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7ssutx" class="v-href_r target="_blank>
          Postponing Tokyo 2020 is diffcult...</a><br>
          <a href="https://www.dailymotion.com/beinsports-hk" class="org-addr">
          beinsports-hk</a>
        </div>
         
        <div class="video">
          <iframe frameborder="0" 
          src="https://www.dailymotion.com/embed/video/x7ssu73" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7ssu73" class="v-href_r target="_blank>
          Australian Olympic chief says...</a><br>
          <a href="https://www.dailymotion.com/beinsports-hk" class="org-addr">
          beinsports-hk</a>
        </div>
         
        <div class="video">
          <iframe frameborder="0" 
          src="https://www.dailymotion.com/embed/video/x7sssvp" 
          allowfullscreen allow="autoplay"></iframe>
        </div>
        <div class="v-text_r">
          <a href="https://www.dailymotion.com/embed/video/x7sssvp" class="v-href_r target="_blank>
          UEFA made a mistake allowing...</a><br>
          <a href="https://www.dailymotion.com/beinsports-hk" class="org-addr">
          beinsports-hk</a>
        </div>
    </div>
     
    <div class="v-show" style="margin-top:50%;">
      <h5>探索影片</h5>
      <h2>From YoYo Television</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7nmmzz" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7nmmzz" class="v-href_r target="_blank>
        老酒馆 46丨The Legendary Tavern 46...</a><br>
        <a href="https://www.dailymotion.com/ChinaTVnetwork" class="org-addr">
        YoYo Television</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7nmlnc" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7nmlnc" class="v-href_r target="_blank>
        老酒馆 36丨The Legendary Tavern 36...</a><br>
        <a href="https://www.dailymotion.com/ChinaTVnetwork" class="org-addr">
        YoYo Television</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7nmlnd" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7nmlnd" class="v-href_r target="_blank>
        老酒馆 37丨The Legendary Tavern 37...</a><br>
        <a href="https://www.dailymotion.com/ChinaTVnetwork" class="org-addr">
        YoYo Television</a>
      </div>
    </div>
     
    <div class="v-show" style="margin-top:25%;">
      <h5>探索影片</h5>
      <h2>From 大劇獨播</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7hefz8" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7hefz8" class="v-href_r target="_blank>
        《小歡喜》精彩CUT 高考在即 童文潔先兆性流產住院</a><br>
        <a href="https://www.dailymotion.com/cncp" class="org-addr">
        大劇獨播</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0"  
        src="https://www.dailymotion.com/embed/video/x7i04qi" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7i04qi" class="v-href_r target="_blank>
        《小歡喜》精彩CUT 父母愛孩子，孩子又何嘗不愛父母...</a><br>
        <a href="https://www.dailymotion.com/cncp" class="org-addr">
        大劇獨播</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7i04qg" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7i04qg" class="v-href_r target="_blank>
        《小歡喜》精彩CUT 口香糖當喜糖 重婚都這麼有個性的！</a><br>
        <a href="https://www.dailymotion.com/cncp" class="org-addr">
        大劇獨播</a>
      </div>
    </div>
     
    <div class="v-show" style="margin-top:50%;">
      <h5>探索影片</h5>
      <h2>From 福茂唱片</h2>
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7snrw1" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7snrw1" class="v-href_r target="_blank>
        BBT【夢魘 Nightmare】Official Lyric Video</a><br>
        <a href="https://www.dailymotion.com/LinfairRecords" class="org-addr">
        福茂唱片</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7ss5kb" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7ss5kb" class="v-href_r target="_blank>
        BBT【You're So Beautiful】Official Lyric Video</a><br>
        <a href="https://www.dailymotion.com/LinfairRecords" class="org-addr">
        福茂唱片</a>
      </div>
         
      <div class="video">
        <iframe frameborder="0" 
        src="https://www.dailymotion.com/embed/video/x7sivwb" 
        allowfullscreen allow="autoplay"></iframe>
      </div>
      <div class="v-text_r">
        <a href="https://www.dailymotion.com/embed/video/x7sivwb" class="v-href_r target="_blank>
        朱文婷【長途旅行】Official Lyric Video - 電視劇《重生》插曲</a><br>
        <a href="https://www.dailymotion.com/LinfairRecords" class="org-addr">
        福茂唱片</a>
      </div>
    </div>    
  </div>   
</div>

<div class="col-12 col-s-12 botcontent">
  <h3 class="dailymotion">dailymotion</h3>
  <div>
    <div class="bottom">
      <nav>
        <a href="#">關於我們</a>
        <a href="#">新鮮事</a>
        <a href="#">說明中心</a>
        <a href="#">工作</a>
        <a href="#">API</a>
        <a href="#">成為合作夥伴</a>
      </nav>
    </div>
    <div class="bottom2">
      <nav>
        <a href="#">隱私權與Cookie政策</a>
        <a href="#">條款與條件</a>
        <a href="#">家庭過濾器：開啟</a>
        <a href="#">所有影片</a>
        <a href="#">地點：Taiwan</a>
      </nav>
    </div>
  </div>
</div>


<div class="footer">
  © 2005 - 2020 Dailymotion - 法國巴黎 ♥ 設計
  <a href="https://www.instagram.com/dailymotion/">
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/ig.jpg" alt="login">
  </a>
  <a href="https://www.pinterest.com/dailymotionusa/">
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/pintrest.jpg" alt="login">
  </a>
  <a href="https://twitter.com/Dailymotion">
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/twitter.jpg" alt="login">
  </a>
  <a href="https://plus.google.com/+dailymotion">
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/google.jpg" alt="login">
  </a>
  <a href="https://www.facebook.com/Dailymotion">
    <img src="https://05115246-2.s3.amazonaws.com/work1/img/fb.jpg" alt="login">
  </a>
</div>

</body>
</html>

```
