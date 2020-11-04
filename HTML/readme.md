# 網路資料科技應用
這裡是我的網路資料科技應用學習成果。  
這堂課的學習資源為老師的PPT(不上傳)、線上教學以及網站學習資源W3schools。  
線上課程資源:https://www.youtube.com/channel/UCnNIkWD9EbeHJ1f0oXI0rsw/videos  (陪你一起寫程式)  
線上學習資源:https://www.w3schools.com/html/default.asp  (W3schools)  
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
work1 CSS
```CSS
* {
    box-sizing: border-box;
 }


body {
  font-family:"Arial","微軟正黑體";
  margin:0px;
}

a {
    text-decoration:none;
}

.header {
      background-color:black;
      float:left;
      padding:13px 36px 10px 30px;
      text-align:left;
      color:white;
      font-size:23px;
      font-weight:bold;
      letter-spacing:-1px;
      position:fixed;
      top:0px;
      
}

.header a {
   display:inline-block;
   width:7%;
   color:#b4b4b4;
   font-size:15px;
   float:right;
}

.header img {
   display:inline-block;
   width:25px;
   height:25px;
   float:right;
}

.header button{
   display:inline-block;
   width:4%;
   padding:2px; 
   color:black;
   border-radius: 2px;
   background-color:white;
   border: none;
   font-size:15px;
   float:right;
}

.header nav a:hover {
  color:white;
}

:target:before {
content: "";
display: block;
height: 90px;
}

.menu {
    float:left;
    text-align:left;
    background-color:#2d2d2d;
    padding:10px 0 10px 55px;
    width:100%;
    position:fixed;
    top:45px;
 }


.menu a {
   display:inline-block;
   width:16%;
   color:#b4b4b4;
   font-size:15px;  
}

.row:after {
  content: "";
  display: block;
  clear: both;
}

.content{
  width:100%;
  float:left;
  margin-top:0%;
}

.main {
  float:left;
  padding-left:35px;
  width:70%;
}


.v-show{
  display:inline-block;

}
.video{
  float:left;
  width:60%;
  margin-top:10px;
  padding:0px 30px 20px 0px;

}
.v-text{
  float:left;
  width:30%;
  margin-top:10px;
}

.v-text_r{
  float:left;
  width:40%;
  margin-top:10px;
}

.v-href{
  color:black;
  font-size: 20px;
  font-weight:bold;
  text-align: left;
}
.v-href_r{
  color:black;
  font-size: 15px;
  font-weight:bold;
  text-align: left;
}
.v-text p{
  color:#b4b4b4;
  font-size: 12px;
  text-align: left;
}
.org-addr{
  color:grey;
  font-size: 10px;
  text-align: left;
}

.right {
  background-color:#f2f2f2;
  padding:10px 10px 10px 10px;
  float:left;
  width:30%;
  margin-top:80px; 
  
}

iframe {
    width:100%;
    height:auto;
}


.botcontent{
  wide:100%;
  float:left;
  padding:29px 25.5% 30px 26%;
  border-top:solid lightgrey 1px;
  margin-top:5px;
}

.dailymotion{
  position:absolute;
  top:6500px;
  right:65%;
  width:25%;
  text-align:left;
  color:lightgrey;
  font-size:25px;
  margin-top:5px;
  font-weight: bold;
}

.bottom{
  float:center;
  padding-bottom:8%;
}

.bottom a{
   display:inline-block;
   width:16%;
   color:black;
   font-size:14px;
   float:left;
   padding:0px 10px 10px 0px;
}

.bottom2{
  float:center;
  width:100%;
  border-top:solid lightgrey 1px;
  text-align:center;
  padding-top:30px;
}

.bottom2 a{
   display:inline-block;
   width:20%;
   padding-right:13px;
   color:black;
   font-size:12px;
   float:left;   
}



.footer {
  padding:15px 12%;
  background-color:#f2f2f2;
  text-align:left;
  float:left;
  width:100%;
  color:#a5a5a5;
  font-size:12px;
}

.footer img{
  display:inline-block;
  width:25px;
  height:25px;
  float:right;
  margin-right:20px: 
}


@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 35%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 65%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
@media only screen and (max-width:600px) {
 /* For mobile phones: */
.menu, .main, .right, .header,.video ,.vtext{
      width:100%;
  }
}
```
work 1 遇到的問題就是，調整網頁真的很麻煩，尤其是美工要做好很不容易。加上我是初學對div的區塊不熟悉，第一次調的非常痛苦。  
但習慣之後其實就還好了，W3school的資源很齊全，複製程式碼都能達到一樣的效果，參數再找reference就好，非常方便。
#### work2
這個作業是要完成個人部落格，並且開始學習利用bootstrap4。  
另外要自行製作三篇文章。  
```HTML
<!DOCTYPE html>
<html lang="zh-TW">
<head>
	<meta charset="UTF-8">
	<title>work2_home</title>
	<meta name="viewport"content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" target="_blank" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/CSS/work2.css">
</head>
<body>
	<button onclick="topFunction()" id="myBtn" title="Go to top">top</button>
	<img src="https://05115246-2.s3.amazonaws.com/work2/img/top.jpg">
	<nav class="navbar navbar-expand-sm bg-info navbar-dark sticky-top">
		<a class="navbar-brand" href="https://05115246-2.s3.amazonaws.com/work2/work2_home.html">Relax-Time</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#list">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="list" class="collapse navbar-collapse">
			<div class="dropdown">
    			<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
      				推坑區
    			</button>
    			<div class="dropdown-menu">
      				<a class="dropdown-item" target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page1.html">電玩推坑</a>
      				<a class="dropdown-item" target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page2.html">美食推坑</a>
      				<a class="dropdown-item" target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page3.html">桌遊推坑</a>
    			</div>
 		 	</div>
			<ul class="navbar-nav">
      			<li class="nav-item">
        			<a class="nav-link" target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page1.html">熱門文章</a>
      			</li>
    		</ul>	
		</div>
	</nav>
	

	<div id="banner" class="carousel slide" data-ride="carousel">
  		<ul class="carousel-indicators">
    		<li data-target="#banner" data-slide-to="0" class="active"></li>
    		<li data-target="#banner" data-slide-to="1"></li>
    		<li data-target="#banner" data-slide-to="2"></li>
  		</ul>
  		<div class="carousel-inner">
    		<div class="carousel-item active">
      			<img src="https://05115246-2.s3.amazonaws.com/work2/img/Hollow.jpg" alt="hollow knight" width="100%" height="600">
      			<div class="carousel-caption">
      				<h2>既治癒又致鬱的遊戲:空洞騎士</h2>
      			</div>
    		</div>
    		<div class="carousel-item">
      			<img src="https://05115246-2.s3.amazonaws.com/work2/img/noodle.jpg" alt="noodles" width="100%" height="600">
      			<div class="carousel-caption">
      				<h2>一直吃麵一直爽:樂麵屋</h2>
      			</div>
    		</div>
    		<div class="carousel-item">
    			<img src="https://05115246-2.s3.amazonaws.com/work2/img/7W.JPG" alt="miracle" width="100%" height="600">
    			<div class="carousel-caption">
      				<h2>一日帝王體驗:七大奇蹟</h2>
      			</div>
    		</div>
    	</div>
  		<a class="carousel-control-prev" target="_blank" href="#banner" data-slide="prev">
    		<span class="carousel-control-prev-icon"></span>
  		</a>
  		<a class="carousel-control-next" target="_blank" href="#banner" data-slide="next">
    		<span class="carousel-control-next-icon"></span>
  		</a>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h2>關於我</h2>
				<div class="card">
					<img class="img-thumbnail" src="https://05115246-2.s3.amazonaws.com/work2/img/img1.png">
					<a target="_blank" href="#demo" class="btn btn-info" data-toggle="collapse">自我介紹</a>
					<div id="demo" class="collapse card-body">
						是個ACG愛好者，也是愛貓人士，平日努力上進，假日極盡耍廢。
						<br>頭像圖源:
						https://animepopheart.com/post/178483157386
					</div>
				</div>
				<h3 style="margin-top: 10px">最新文章列表</h3>
				<ul class="list-group list-group-flush">
  					<a class="list-group-item list-group-item-action" href="https://05115246-2.s3.amazonaws.com/work2/work2_page1_content.html" target="_blank">本周Steam遊戲焦點:空洞騎士</a>
  					<a class="list-group-item list-group-item-action" href="https://05115246-2.s3.amazonaws.com/work2/work2_page2_content.html" target="_blank">本周美食焦點:來碗拉麵吧!</a>
  					<a class="list-group-item list-group-item-action" href="https://05115246-2.s3.amazonaws.com/work2/work2_page3_content.html" target="_blank">桌遊吧:建造屬於你的七大奇蹟!</a>
				</ul>
				<hr class="d-sm-none">
				<div class="input-group mb-3" style="margin-top: 10px">
    				<input type="text" class="form-control" placeholder="搜尋文章">
   					<div class="input-group-append">
    			  	<button class="btn btn-info" type="submit">Go</button>  
     				</div>
 				</div>
			</div>
			
			<div class="col-sm-8 af">
				<div>
					<h2><a href="https://05115246-2.s3.amazonaws.com/work2/work2_page1_content.html">本周Steam遊戲焦點:空洞騎士</a></h2>
					<h5>2020/05/04</h5>
					<a target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page1_content.html">
						<img src="https://05115246-2.s3.amazonaws.com/work2/img/Hollow.jpg" alt="hollow knight" width="500" height="400">
					</a>
					<p>本周遊戲推坑來啦~今天要來跟大家介紹的是Steam上便宜又好玩的小遊戲，空洞騎士...(點圖見內文)</p>
				</div>
				<img src="https://05115246-2.s3.amazonaws.com/work2/img/brline.jpg">
				<div class="content">
					<h2><a href="https://05115246-2.s3.amazonaws.com/work2/work2_page2_content.html">本周美食焦點:樂麵屋</a></h2>
					<h5>2020/04/24</h5>
					<a target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page2_content.html">
						<img src="https://05115246-2.s3.amazonaws.com/work2/img/noodle.jpg" alt="noodle" width="500" height="400">
					</a>
					<p>美食時間到啦~今天要來跟大家介紹一家超棒的拉麵店，樂麵屋...(點圖見內文)</p>
				</div>
				<img src="https://05115246-2.s3.amazonaws.com/work2/img/brline.jpg">
				<div class="content">
					<h2><a href="https://05115246-2.s3.amazonaws.com/work2/work2_page3_content.html">桌遊吧:建造屬於你的七大奇蹟</a></h2>
					<h5>2020/05/07</h5>
					<a target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_page3_content.html">
						<img src="https://05115246-2.s3.amazonaws.com/work2/img/7W.JPG" alt="7W" width="500" height="400">
					</a>
					<p>你曾想過一個文明是怎麼發展的嗎?如果你是君王會怎麼做呢?今天桌遊吧來跟大家介紹，七大奇蹟...(點圖見內文)</p>
				</div>
				<img src="https://05115246-2.s3.amazonaws.com/work2/img/brline.jpg">
			</div>
		</div>
	</div>
	<div class="container-fluid extra">
		<div class="row">
			<div class="col-sm-4" >
				<h6>小站資訊</h6>
				<p>歡迎來到遊手好閒的小時光，說實在遊手好閒在一<br>般人眼裡常被覺得不求上進或是耍廢、偷懶。<br>
					然而更多人忙到失去自我、抱怨生活、工作忘記自<br>己想要什麼。<br>
					空出時間，哪怕是發呆與自己相處，或暫時脫離現<br>實享受遊戲世界的美麗故事，或吃吃美食、用桌遊<br>享受
					與朋友的悠閒時光。朋友阿!要記得享受人生，<br>這樣才能承受痛苦持續前進。
				</p>
			</div>
			<div class="col-sm-4">
				<h6>聯絡我</h6>
				<div class="contact">
  					<a target="_blank" href="https://zh-tw.facebook.com/">遊手好閒~Facebook</a><br>
  					<a target="_blank" href="https://www.youtube.com/">遊手好閒~Youtube</a><br>
  					<a target="_blank" href="https://www.instagram.com/">遊手好閒~Instagram</a><br>
  				</div>
			</div>
			<div class="col-sm-4 contact">
				<h6>全文列表</h6>
				<a target="_blank" href="https://05115246-2.s3.amazonaws.com/work2/work2_home.html">全文列表</a>
			</div>
		</div>	
	</div>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>Copyright©2020遊手好閒的小時光</p>
	</div>


<script src="https://05115246-2.s3.amazonaws.com/work2/JS/work2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
```
work 2 CSS
```CSS
.jumbotron{
	background-color: skyblue;
	height: 20px;
}
body {
	font-family:"Arial","微軟正黑體";
	margin:0px;
}
img{
	width: 100%;
}
.container{
	margin-top:30px; 
}
li{
	padding-left: 20px;
}
.card-body{
	background-color:skyblue; 
}
 .carousel-inner img {
      width: 100%;
  }
  #myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: grey;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color:lightgreen;
}

.content{
	margin-top: 10%;
}
.extra{
	margin-top: 5%;
	background-color:#efefef;
	text-align: left;
	padding-top: 10px;
}
h6{
	background-color: black;
	color: white;
	font-weight: bold;
	width:100%;
	text-align: center;
}
.contact a{
	list-style-type:none;
	text-align: left;
	color: black;
	font-size: 18px;
}
.af{
	font-size: 18px;
}
.af p{
	margin-top: 20px;
}

```
這裡只提供首頁，其他文章的頁面都是從這個改，有需要其他頁面原始碼歡迎下載，然後用txt打開就可以。
這個作業相較於第一次非常輕鬆，時間多花在連結不同的頁面上，其餘部分都是用boostrap的架構快速開發。
#### work 3
這個作業要連結php，可以說是最難的。  
但困難的不是php語法本身(資料庫學過了)。  
而是如何透過php來實現網頁上的互動，例如傳遞查詢資料、記錄使用者上傳的資料等功能。  
但這裡只要完成搜尋的結果就好，然而光是連結php和網站的過程就讓我一頭霧水，在這塊也許還需要多一點經驗。  
```HTML
<?php
	function connectDB(){
		$servername="localhost";
		$dbname="05115246";
		$username="root";
		$password="";
	
		try{
			$conn= new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
				$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
				$conn->exec("set names utf8");
				return $conn;
		}catch (PDOException $e) {
			echo "Connection failed: ". $e->getMessage();
		}
	}

	function closeDB($conn){
		$conn= null;
	}

	try{
		$conn=connectDB();
		$stmt= $conn->prepare("SELECT course_id, course_name, sub_category ,course_url FROM course_info WHERE sub_category = '基礎英語'");
		$stmt->execute();
		$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
	}catch (PDOException $e){
		echo "Error: ". $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
	<meta charset="UTF-8">
	<title>work3_home</title>
	<meta name="viewport"content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" target="_blank" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" target="_blank" href="http://localhost/05115246/work3/CSS/work3.css">
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-expand-sm hbg navbar-dark">
			<img src="http://localhost/05115246/work3/img/taipei_e.png" alt="logo" style="width:120px;">
			<button class="navbar-toggler menu bg-dark" type="button" data-toggle="collapse" data-target="#list">
				<span class="navbar-toggler-icon bg-dark"></span>
			</button>
      		<div id="list" class="float-right collapse navbar-collapse menu">
      			<a class="color" href="#"><i class='fas fa-sitemap'></i>網站導覽</a>
    			<a class="color" href="#"><i class='fas fa-sign-in-alt'></i>會員登入</a>
   				<a class="color" href="#"><i class='fab fa-facebook-square' style='font-size:20px'></i></a>
   			</div>
		</nav>
		<nav class="navbar navbar-expand-sm hbg2 navbar-dark">
			<div id="list" class="collapse navbar-collapse">
				<ul class="drop-down-menu">
        			<li><a href="#">選課中心</a>
        				 <ul class="text">
        	       			 <li><a href="#">分類列表</a></li>
        	       			 <li><a href="#">公務10小時專區</a></li>
         	      			 <li><a href="#">人權教育最前線</a></li>
        	       			 <li><a href="#">台北施政廣播站</a></li>
               				 <li><a href="#">退休增值充電站</a></li>
         	      			 <li><a href="#">主題系列課程</a></li>
               				 <li><a href="#">課程清單下載</a></li>
            			</ul>
        			</li>
        			<li><a href="#">新手上路</a></li>
					<li><a href="#">最新消息</a></li>
					<li><a href="#">合作推廣</a>
						<ul class="text">
             	  			 <li><a href="#">電子報專欄合作</a></li>
              	 			 <li><a href="#">專班服務</a></li>
               				 <li><a href="#">教材提供與上架</a></li>
              	 			 <li><a href="#">合作推廣申請</a></li>
              	 			 <li><a href="#">e等公務員+</a></li>
            			</ul>
					</li>
					<li><a href="#">鮮活電子報</a></li>
					<li><a href="#">客服中心</a></li>
   	 			</ul>
			</div>
		</nav>
		<div class="bd">
			<marquee direction="left" height="40" scrollamount="15" behavior="scroll" bgcolor="#3496DB" align="midden">
				<a class="mtext" style="color: white;" href="#" target="_blank">臺北卡登入或註冊相關問題，請洽1999分機8585</a>
				<a class="mtext" style="color: lightgreen;" href="#" target="_blank">恭喜！【每月好課月悅讀-5月】得獎名單 (6/16 更新)</a>
				<a class="mtext" style="color: yellow;" href="#" target="_blank">【e大好課月悅讀】6月-性別平等真享愛開跑囉！(可抽500元禮券)</a>
				<a class="mtext" style="color: lightgreen;"href="#" target="_blank">【失智症防治照護課程專區】</a>
				<a class="mtext" style="color: yellow;" href="#" target="_blank">
					臺北e大自109/02/01起，每日12：00至13：30停止提供電話客服服務。
				</a>
				<a class="mtext" style="color: lightgreen;"href="#" target="_blank">【HOT】人權教育最前線！</a>
				<a class="mtext" style="color: yellow;"href="#" target="_blank">[必閱]107年11月30日起改由臺北卡提供帳密驗證服務</a>
			</marquee>
			<p><a style="color: black; font-size:16px;" href="https://elearning.taipei/mpage/home">首頁</a> / 分類列表</p>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10 content">
				<h3 class="main_t">分類列表</h3>
				<div class="main_table table-responsive">          
  					<table class="table NoNewline"style="width:100%">
  						<tr class=".tadj">
  							<th>主分類</th>
    						<td><a href="#">公務類</a></td>
    						<td><a href="#">管理類</a></td>
    						<td><a href="#">人文類</a></td>
    						<td><a href="#">資訊類</a></td>
    						<td><a href="#">語言類</a></td>
    						<td colspan="5">職訓類</a></td>
  						</tr>
  						<tr>
  							<th>次分類</th>
    						<td>認證檢定</td>
    						<td>職場應用</td>
    						<td colspan="8">生活實用</td>
  						</tr>
  						<tr>
  							<th>子分類</th>
    						<td>基礎台語</td>
    						<td>基礎韓語</td>
    						<td>學習經驗</td>
    						<td>基礎客語</td>
    						<td>基礎手語</td>
    						<td>基礎英語</td>
    						<td colspan="4">基礎日語</td>
  						</tr>
  						<tr>
  							<th>台北施政廣播站</th>
    						<td colspan="8">台北施政廣播站</td>
  						</tr>
  						<tr>
  							<th>退休增職充電站</th>
    						<td>資訊新知</td>
    						<td>外語進修</td>
    						<td>技術加值</td>
    						<td>創業圓夢</td>
    						<td>基礎客語</td>
    						<td>知識傳播</td>
    						<td>田園經濟</td>
    						<td>財富管理</td>
    						<td>職場法規</td>
    						<td>職場軟實力</td>
  						</tr>
  						<tr>
  							<th>公務人員10小時課程</th>
    						<td>精選套裝課程</td>
    						<td colspan="9">熱門系列課程</td>
  						</tr>
  						<tr>     
  							<th>主題系列課程</th>
    						<td>性別主流化</td>
    						<td>CEDAW</td>
    						<td>環境教育</td>
    						<td>行政中立</td>
    						<td>資訊安全</td>
    						<td>家庭教育</td>
    						<td>原住民</td>
    						<td>新移民</td>
    						<td>田園城市</td>
    						<td>志工</td>
  						</tr>
  					</table>
  				</div>
			</div>
		</div>	
	</div>
	<div class="mt-3 ml-4">
		<form action="mailto:test@cs.nthu.edu.tw" encType=text/plain method=post>
			<p>認證時數：<input name="myname" size=10 maxlength=20></p>
			<p>終生代碼：<input name="passwd" type=password size=10 maxlength=8></p>
			<p>測驗條件：<input name="sex" type=radio value="有測驗">有測驗
				<input name="sex" type=radio value="有測驗">無測驗
			</p>
			<p>有無字幕：<input name="sex" type=radio value="有字幕">有字幕
				<input name="sex" type=radio value="無字幕">無字幕
			</p>
			<p>課程名稱：<input name="myname" size=20 maxlength=20>
				<input type="submit" value="送出查詢"> <input type="reset" value="清除內容">
			</p>
			<p>行動版:<input name="sex" type=radio value="行動版">行動版</p>
		</form>
	</div>

	<table>
		<tr>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Course Category</th>
      <th>url</th>
			<?php
				foreach ($data as $row) {
					echo"<tr>";
					foreach ($row as $key => $value) {
						echo "<td>". $value ."</td>";
					}
					echo"</tr>";
				}
			?>
		</tr>
	</table>

	<div>
		<table class="ft NoNewline"style="width:100%">
  			<tr>
  				<th>會員人數</th>
    			<th>課程總數</th>
    			<th>線上人數</th>
    			<th>累積瀏覽人次</th>
    			<th>報名課程總人次</th>
  			</tr>
  			<tr>
  				<td>941954 人</td>
    			<td>1744 門課</td>
    			<td>3237 人</td>
    			<td>491220772 人</td>
    			<td>1652705人</td>
  			</tr>
  		</table>
	</div>
	<div class="container-fluid">
        <div class="row">
            <div class="col-sm-6" style="background-color:#3696DA ">
                <nav class="navbar navbar-expand-sm">
                    <ul class="ft-list">
                        <li><a href="#">著作權聲明</a></li>
                        <li><a href="#">隱私權宣告</a></li>
                        <li><a href="#">資訊安全政策</a></li>
                        <li><a href="#">政府網站資料開放宣告</a></li>
                        <li><a href="#">關於我們</a></li>
                    </ul>
                </nav>
                <p class="ft-text">客服相關問題（課程閱讀及時數認證等)<br>
                    02-29320212轉分機341 週一至週五 8:30至17:30<br>
                    中午時間請利用語音留言或客服信箱 pstcservice@mail.taipei.gov.tw<br>
                </p>
                <p class="ft-text">會員登入問題請洽臺北卡服務中心<br>
                    02-27208889轉分機8585 週一至週五 8:30至17:30<br>
                </p>
                <p class="ft-text">地址：11693臺北市文山區萬美街2段21巷20號</p>
            </div>
            <div class="col-sm-3" style="background-color:#3696DA ">
                <img src="http://localhost/05115246/work3/img/logo3.png" alt="logo" style="width:120px; margin-top:35%">
            </div>
            <div class="col-sm-3" style="background-color:#3696DA ">
                <p class="ft-text">最後更新時間:2020-06-28</p>
                <img src="http://localhost/05115246/work3/img/taipei_city.png" alt="logo" style="width:80px; margin-top:35%">
                <p class="ft-text">Copyright© 臺北市政府公務人員訓練處 著作權所有</p>
            </div>
        </div>
    </div>

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
<?php
	closeDB($conn);
?>
```
work3 CSS
```CSS
body {
  font-family:"Arial","微軟正黑體";
  margin:0px;
}

a {
    text-decoration:none;
}
.hbg{
	background-color: #EBF2FF;
	padding:0px 36px 0px 30px;
	width: 100%;
}
.hbg2{
	background-color: white;
	padding:5px ;
	padding-left: 35px;
	width: 100%;	
}
.header{
	position: fixed;
	top:0;
	z-index: 1;
}
div.menu a,i{
	
	font-size: 14px;
}
.color{
	color:#2B50A8;
	padding:30px 25px 30px 25px; 
	
}
.menu a:hover {
  text-decoration: none;
  background-color: #3496DB;
  color:white;
}
ul { /* 取消ul預設的內縮及樣式 */
    margin: 0;
    padding: 0;
    list-style: none;
}

ul.drop-down-menu {
    display: inline-block;
}

ul.drop-down-menu li {
    position: relative;
	white-space: nowrap;
}
ul.drop-down-menu > li:last-child {
    border-right: none;
}

ul.drop-down-menu > li {
    float: left; 
}

ul.drop-down-menu a {
    background-color: #fff;
    color: #4C6BB6;
    display: block;
    padding: 0 30px;
    text-decoration: none;
    line-height: 40px;
    font-size: 18px;
    font-weight: bold;
}
ul.text a{
	color: black;
	font-weight: lighter;
	font-size: 18px;
}
ul.drop-down-menu a:hover { /* 滑鼠滑入按鈕變色*/
    background-color: #3496DB;
    color: #fff;
    border-radius: 5px;
    transition: background-color 0.6s;
}
ul.drop-down-menu li:hover > a { /* 滑鼠移入次選單上層按鈕保持變色*/
    background-color: #3496DB;
    color: #fff;
    border-radius: 5px;
}
ul.drop-down-menu ul {
    border:solid;
    border-color: #3496DB;
    position: absolute;
    padding:20px 20px 20px 0px ;
    z-index: 99;
    left: -1px;
    top: 100%;
   	min-width: 180px;
   	border-radius: 20px;
   	background-color: white;
}

ul.drop-down-menu ul li:last-child {
    border-bottom: none;
}
ul.drop-down-menu ul { /*隱藏次選單*/
    display: none;
}

ul.drop-down-menu li:hover > ul { /* 滑鼠滑入展開次選單*/
    display: block;
}
.mtext {
    font-size: 24px;
    font-weight: bold;
    margin-left:10px; 
}
.mtext:hover{
    text-decoration: none;
}
.content{
	margin-top:20%;
}
.bd{
	border-bottom:solid;
	border-color: #3496DB;
	background-color:#f2f2f2; 
}
div.bd p{
	padding-left: 65px;
	padding-top: 5px;
	color: black;
}
.main_t{
    color:#4D91A0;
    margin-top:30px; 
    margin-bottom:30px; 
    margin-left: 35px;
}
table {
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
tr {
	 width: 100%;
}
.NoNewline th,td {
	word-break: keep-all;
}
.ft{
	color: white;
	background-color:#2E4FAA ;
}
.ft th,td{
	margin-left: 30px;
}
.ft-list li,a{
	color: white;
	font-size: 12px;
	display: inline-block;
}
.ft-text{
	margin-top: 20px;
	color: white;
	margin-left: 20px;
}
 @media only screen and (max-width:600px) {
     .col-sm-3 { display: none; }
}
.tadj{
  color: #2F2FFF; 
  font-size:16px;
}
.tadj:hover{
  text-decoration: none;
  color: #2F2FFF;
}
.tadj2{
  color: white; 
  font-size:16px;
  background-color: red;
}
.tadj2:hover{
  color: white; 
  text-decoration: none;
  background-color: red;
}

```
