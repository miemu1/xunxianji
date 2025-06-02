<?php
$tscg = <<<HTML
             <link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		     <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<body>
<font id="success"></font>
<script type="text/javascript">
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("success").click();
		}
		// 浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("success").dispatchEvent(e);
		}
	}, 500);
</script>
<script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
<script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<script type="text/javascript">	   
$('#success').click(function(){
   popup({type:'success',msg:"3秒后跳转",delay:2000,callBack:function(){
	  console.log('callBack~~~');
   }});
})
$('#error').click(function(){
   popup({type:'error',msg:"操作失败",delay:2000,bg:true,clickDomCancel:true});
})
$('#tip').click(function(){
   popup({type:'tip',msg:"提示信息",delay:3000,bg:true,clickDomCancel:true});
})
</script>
</body>

HTML;
$tssb = <<<HTML
<link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<body>
    <font id="error"></font>
<script type="text/javascript">
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("error").click();
		}
		// 其他
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("error").dispatchEvent(e);
		}
	}, 500);
</script>
<script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
<script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<script type="text/javascript">	   
$('#error').click(function(){
   popup({type:'error',msg:"失败",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;

include 'pdo.php';
require_once 'class/encode.php';
//header('Access-Control-Allow-Origin:*');
$encode = new \encode\encode();
$a = '';
if (isset($_POST[ 'submit']) && $_POST['submit']){

    $username = $_POST['username'];
    $userpass = $_POST['userpass'];
    $username = htmlspecialchars($username);
    $userpass = htmlspecialchars($userpass);
    $sql = "select * from userinfo where username = ? and userpass = ?";
    $stmt = $dblj->prepare($sql);
    $bool = $stmt->execute(array($username,$userpass));
    $stmt->bindColumn('username',$cxusername);
    $stmt->bindColumn('userpass',$cxuserpass);
    $stmt->bindColumn('token',$cxtoken);
    $exeres = $stmt->fetch(PDO::FETCH_ASSOC);

    if ((strlen($username) < 6 || strlen($userpass) < 6) && !$exeres){
        $a = '账号或密码错误';
		$ts .= "".$tssb."";
    }elseif ($cxusername == $username && $cxuserpass == $userpass){

        $sql = "select * from game1 where token='$cxtoken'";
        $cxjg = $dblj->query($sql);
        $cxjg->bindColumn('sid',$sid);
        $cxjg->fetch(PDO::FETCH_ASSOC);
        if ($sid==null){
            $cmd = "cmd=cj&token=$cxtoken";
        }else{
            $cmd = "cmd=login&sid=$sid";
            $nowdate = date('Y-m-d H:i:s');

            $sql = "update game1 set endtime = '$nowdate',sfzx=1 WHERE sid=?";
            $stmt = $dblj->prepare($sql);
            $stmt->execute(array($sid));
        }
        $cmd = $encode->encode($cmd);
        header("refresh:1;url=game.php?cmd=$cmd");//延迟跳转1秒
    }

}
?>
<html lang="en">

<head>

    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport" />
    <title>寻仙纪</title>
    <link rel="stylesheet" href="css/gamecss.css">

</head>


<body>
<div class="main">
<img src="images/11.jpg" width="280" height="200"><br/>
<div id="mainfont">
月冷千山江自碧，冰崖万丈无留意。<br/>
寻道只影莲花落，竹音寥落听新曲。<br/>
仙人听谁醉明月，踏浪踏风随燕去。<br/>
纪纲人伦心如桑，一醉红尘消百绪。<br/>
魔前扣首三千年，回首红尘不做仙。<br/>
</div>
<div class="login">
<form action=<?php echo $_SERVER['PHP_SELF']; ?> method="post">
    
    <input type="text" name="username" placeholder="帐号" class="input" style="border: 1px solid #869e91;border-radius: 5px;"><br/>

    <input type="password" name="userpass" placeholder="密码" class="input" style="border: 1px solid #869e91;border-radius: 5px;"><br/>
    <?php echo $a ?>
	<?php echo $ts ?>
    <p><input type="submit" name="submit" class="btn-login" value="登陆" style="background: #2d715f;"> <a href="reguser.php" id="btn" style="border: 1px solid #2d715f;border-radius: 5px;color: #2d715f;">注册</a></p>
</form>
</div>
<div class="fix" align="center">
	<h2>更新内容:【武功秘籍】</h2>
	<p>近期更新:【套装】【副本】<p>
	<p>套装：增加属性。副本：独立boss</p>
	<p>1.增加武功秘籍学习，秘籍获取方式保密。</p>
	<p>2.30级开启天赋培养，加入闪避，幸运等等属性</p>
	<p>3.活动兑换码：vip666888</p>
	<h2>修复问题:</h2>
	<p>1.武功消耗及叠加问题</p>
	<p>2.boss成长问题</p>
</div>
</div>
</body>

<div class="footer">
<footer>
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	
    <script>
	function changetime(){
	var ary = Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
	var Timehtml = document.getElementById('CurrentTime');
	var date = new Date();
	Timehtml.innerHTML = ''+date.toLocaleString()+' '+ary[date.getDay()];
	}
	window.onload = function(){
	changetime();
	setInterval(changetime,1000);
	}
	</script>

	<div id="CurrentTime"><?php echo date('Y-m-d H:i:s') ?></div>
</footer>
</div>

</html>