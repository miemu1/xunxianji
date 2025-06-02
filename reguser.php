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
		// 其它浏览器
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
   popup({type:'success',msg:"准备跳转",delay:2000,callBack:function(){
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
		// 其它浏览器
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
$a = '';
    if (isset($_POST[ 'submit']) && $_POST['submit'] ){
        $username = $_POST['username'];
        $userpass = $_POST['userpass'];
        $userpass2 = $_POST['userpass2'];
        $username = htmlspecialchars($username);
        $userpass = htmlspecialchars($userpass);
        $sql = "select * from userinfo where username=?";
        $stmt = $dblj->prepare($sql);
        $stmt->execute(array($username));
        $stmt->bindColumn('username',$cxusername);
        $ret = $stmt->fetch(PDO::FETCH_ASSOC);

        if($userpass2 != $userpass){
            $a = '<br>两次输入密码不一致<br><br>';
			$ts .= "".$tssb."";
        }elseif (strlen($username) < 6 or strlen($userpass)< 6){
            $a = '<br>账号或密码长度请大于或等于6位<br><br>';
			$ts .= "".$tssb."";
        }elseif ($ret){
            $a = '<br>注册失败,账号'.$cxusername.'已经存在<br><br>';
			$ts .= "".$tssb."";
        }else{
            $token = md5("$username.$userpass".strtotime(date('Y-m-d H:i:s')));
            $sql = "insert into userinfo(username,userpass,token) values('$username','$userpass','$token')";
            $cxjg = $dblj->exec($sql);
            $a = '注册成功<br>';
			$ts .= "".$tscg."";
            header("refresh:3;url=index.php");//延迟跳转
        }
    }


    ?>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">
    <title>寻仙纪</title>
    <link rel="stylesheet" href="css/gamecss.css">
</head>
<body>
<div class="main">
<img src="images/11.jpg" width="280" height="200">
<div id="mainfont">
<p>天下风云出我辈，一入江湖岁月催</p>
<p>皇图霸业谈笑中，不胜人生一场醉</p>
<p>提剑跨骑挥鬼雨，白骨如山鸟惊飞</p>
<p>尘事如潮人如水，只叹江湖几人回</p>
</div>

<div class="login">
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    账号:
    <input type="text" name="username" class="input" style="border: 1px solid #869e91;border-radius: 5px;border-radius: 5px;"><br/>
    密码:
    <input type="password" name="userpass" class="input" style="border: 1px solid #869e91;border-radius: 5px;border-radius: 5px;"><br/>
    密码:
    <input type="password" name="userpass2" class="input" style="border: 1px solid #869e91;border-radius: 5px;border-radius: 5px;"><br/>
    <?php echo $a?>
	<?php echo $ts?>
    <p><a href="index.php" id="btn" style="border: 1px solid #2d715f;borderradius: 5px;color: #2d715f;">登陆</a><input id="load" type="submit" name="submit" value="注册" class="btn-login" style="background-color: #2d715f;"></p>
</form>
</div>
</div>
</body><div class="footer">
<?php echo date('Y-m-d H:i:s') ?></div>
<div>
</html>

