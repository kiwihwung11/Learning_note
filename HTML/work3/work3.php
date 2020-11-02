<?php
	function connectDB(){
		$servername="localhost";
		$dbname="05115246";
		$username="root";
		$password="05115246";
	
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
		$stmt= $conn->prepare("SELECT course_url FROM course_info WHERE sub_category = '基礎英語'");
		$stmt->execute();
		$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
    $stmt2= $conn->prepare("SELECT course_name FROM course_info WHERE sub_category = '基礎英語'");
    $stmt2->execute();
    $data2=$stmt2->fetchAll(PDO::FETCH_ASSOC);
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
	<link rel="stylesheet" type="text/css" target="_blank" href="http://52.91.209.215/05115246/work3/CSS/work3.css">
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-expand-sm hbg navbar-dark">
			<img src="http://52.91.209.215/05115246/work3/img/taipei_e.png" alt="logo" style="width:120px;">
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
  						<tr>
  							<th>主分類</th>
    						<td><a class="tadj"href="#">公務類</a></td>
    						<td><a class="tadj"href="#">管理類</a></td>
    						<td><a class="tadj"href="#">人文類</a></td>
    						<td><a class="tadj"href="#">資訊類</a></td>
    						<td><a class="tadj2"href="#">語言類</a></td>
    						<td colspan="5"><a class="tadj"href="#">職訓類</a></td>
  						</tr>
  						<tr>
  							<th>次分類</th>
    						<td><a class="tadj"href="#">認證檢定</a></td>
    						<td><a class="tadj"href="#">職場應用</a></td>
    						<td colspan="8"><a class="tadj2"href="#">生活實用</a></td>
  						</tr>
  						<tr>
  							<th>子分類</th>
    						<td><a class="tadj"href="#">基礎台語</a></td>
    						<td><a class="tadj"href="#">基礎韓語</a></td>
    						<td><a class="tadj"href="#">學習經驗</a></td>
    						<td><a class="tadj"href="#">基礎客語</a></td>
    						<td><a class="tadj"href="#">基礎手語</a></td>
    						<td><a class="tadj2"href="#">基礎英語</a></td>
    						<td colspan="4"><a class="tadj"href="#">基礎日語</a></td>
  						</tr>
  						<tr>
  							<th>台北施政廣播站</th>
    						<td colspan="8"><a class="tadj"href="#">台北施政廣播站</a></td>
  						</tr>
  						<tr>
  							<th>退休增職充電站</th>
    						<td><a class="tadj"href="#">資訊新知</a></td>
    						<td><a class="tadj"href="#">外語進修</a></td>
    						<td><a class="tadj"href="#">技術加值</a></td>
    						<td><a class="tadj"href="#">創業圓夢</a></td>
    						<td><a class="tadj"href="#">基礎客語</a></td>
    						<td><a class="tadj"href="#">知識傳播</a></td>
    						<td><a class="tadj"href="#">田園經濟</a></td>
    						<td><a class="tadj"href="#">財富管理</a></td>
    						<td><a class="tadj"href="#">職場法規</a></td>
    						<td><a class="tadj"href="#">職場軟實力</a></td>
  						</tr>
  						<tr>
  							<th>公務人員10小時課程</th>
    						<td><a class="tadj"href="#">精選套裝課程</a></td>
    						<td colspan="9"><a class="tadj"href="#">熱門系列課程</a></td>
  						</tr>
  						<tr>     
  							<th>主題系列課程</th>
    						<td><a class="tadj"href="#">性別主流化</a></td>
    						<td><a class="tadj"href="#">CEDAW</a></td>
    						<td><a class="tadj"href="#">環境教育</a></td>
    						<td><a class="tadj"href="#">行政中立</a></td>
    						<td><a class="tadj"href="#">資訊安全</a></td>
    						<td><a class="tadj"href="#">家庭教育</a></td>
    						<td><a class="tadj"href="#">原住民</a></td>
    						<td><a class="tadj"href="#">新移民</a></td>
    						<td><a class="tadj"href="#">田園城市</a></td>
    						<td><a class="tadj"href="#">志工</a></td>
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
			<th>課程名稱及網址</th>
      <?php
        $c_name=[];
        $url=[];
        $x=0;
        foreach ($data2 as $row) {
            foreach ($row as $key => $value) {
              array_push($c_name, $value);
           }
        }
       foreach ($data as $row) {
          foreach ($row as $key => $value) {
             array_push($url, $value);
          }
        }
        while($x <= 39) {
          echo"<tr>";
          echo "<td><a class='tadj' target='_blank' href=".$url[$x].">".$c_name[$x]."</a></td>";
          echo"</tr>";
          $x++;
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
                <img src="http://52.91.209.215/05115246/work3/img/logo3.png" alt="logo" style="width:120px; margin-top:35%">
            </div>
            <div class="col-sm-3" style="background-color:#3696DA ">
                <p class="ft-text">最後更新時間:2020-06-28</p>
                <img src="http://52.91.209.215/05115246/work3/img/taipei_city.png" alt="logo" style="width:80px; margin-top:35%">
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