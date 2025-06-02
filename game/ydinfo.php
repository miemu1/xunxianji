<?php
//这里想搭建个成功提示框
$tscg = <<<HTML
<html> 
<body>
<!--这里我进行隐藏，用于下面模拟点击-->
    <font id="success"></font>
    <!--<input type="button" id="error" value="错误" />
    <input type="button" id="load" value="正在加载" />
    <input type="button" id="tip" value="提示" />-->

<script type="text/javascript">
//多少秒模拟点击,自动执行点击input,也就是ID
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
   popup({type:'success',msg:"成功",delay:2000,callBack:function(){
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
</html>
HTML;


$tssb = <<<HTML
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




/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 20 2 1/12/12
 * Time: 15:57
 */
$ydhp = '';
$ydgj = '';
$ydfy = '';
$ydbj = '';
$ydxx = '';
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$yaodan = \player\getyaodanonce($ydid,$dblj);
$playeryd = \player\getplayeryaodan($ydid,$sid,$dblj);
$setyd = '';
$tishi='';
if (isset($canshu)){
    switch ($canshu){
        case 'setyd1':
            \player\changeplayersx('yd1',$ydid,$sid,$dblj);
            $tishi = "设置药品1成功<br/>";
            break;
        case 'setyd2':
            \player\changeplayersx('yd2',$ydid,$sid,$dblj);
            $tishi = "设置药品2成功<br/>";
            break;
        case 'setyd3':
            \player\changeplayersx('yd3',$ydid,$sid,$dblj);
            $tishi = "设置药品3成功<br/>";
            break;
			
        case 'useyd':
		if ($playeryd->ydsum > 0){
		$sjs = mt_rand(0,10);
		if ($sjs > 2){
            
            if ($sjs > 3){
				$userydret = \player\useyaodan($ydid,1,$sid,$dblj);
                $tishi = "提升成功<br/>";
				$ts .= "".$tscg."";
            }else{
				$userydret = \player\deleyaodan($sid,$ydid,1,$dblj);
                $tishi = "提升失败,运气不足<br/>";
				$ts .= "".$tssb."";
            }
		}else{
			 $userydret = \player\deleyaodan($sid,$ydid,1,$dblj);
             $tishi = "走火入魔，提升失败<br/>";
			 $ts .= "".$tssb."";
            }break;
		}else{
			$tishi = "<hr>丹药不足！！！<hr>";
			 $ts .= "".$tssb."";
		}break;
			
		case 'daoli':
		if ($playeryd->ydsum > 0){
		$sjs = mt_rand(0,10);
		if ($sjs > 0){
            
            if ($sjs > 1){
				$userydret = \player\useyaodan($ydid,1,$sid,$dblj);
                $tishi = "是个狠人，提升成功<br/>";
				$ts .= "".$tscg."";
            }else{
				$userydret = \player\deleyaodan($sid,$ydid,1,$dblj);
                $tishi = "凉凉,尝试其他方式看看..<br/>";
				$ts .= "".$tssb."";
            }
		}else{
			 $userydret = \player\deleyaodan($sid,$ydid,1,$dblj);
             $tishi = "走火入魔，提升失败<br/>";
			 $ts .= "".$tssb."";
            }break;
		}else{
			$tishi = "<hr>怎么流行倒立吃空气了<hr>";
			 $ts .= "".$tssb."";
		}break;
		
    }
}
if ($playeryd){
    $setyd1 = $encode->encode("cmd=ydinfo&canshu=setyd1&ydid=$ydid&sid=$sid");
    $setyd2 = $encode->encode("cmd=ydinfo&canshu=setyd2&ydid=$ydid&sid=$sid");
    $setyd3 = $encode->encode("cmd=ydinfo&canshu=setyd3&ydid=$ydid&sid=$sid");
    $useyd = $encode->encode("cmd=ydinfo&canshu=useyd&ydid=$ydid&sid=$sid");
	$daoli = $encode->encode("cmd=ydinfo&canshu=daoli&ydid=$ydid&sid=$sid");
$tshtml = <<<html
	<a id="load" href="?cmd=$daoli"style="background-color:#7b156f;color: #ffffff;">倒立慢嚼</a>
html;
	if($player->wugong==3){//武功使用====上下颠倒====
		$wgdaoli = "$tshtml";
	}
    $setyd = <<<HTML
    <br/>
    <!--<a href="?cmd=$setyd1">装备药品1.</a>
    <a href="?cmd=$setyd2">装备药品2.</a>
    <a href="?cmd=$setyd3">装备药品3.</a><br/>-->
	<a id="load" href="?cmd=$useyd"style="background-color: #f9c508;color: #ffffff;">外抹</a>
    <a id="load" href="?cmd=$useyd"style="background-color: #f9c508;color: #f10b0b;">吞食</a><br>
	$wgdaoli
HTML;
}
if($yaodan->ydhp!=0){
    $ydhp = "气血+".$yaodan->ydhp."<br/>";
}
if ($yaodan->ydgj!=0){
    $ydgj = "攻击+".$yaodan->ydgj."<br/>";
}
if ($yaodan->ydfy!=0){
    $ydfy = "防御+".$yaodan->ydfy."<br/>";
}
if ($yaodan->ydbj!=0){
    $ydbj = "暴击+".$yaodan->ydbj."<br/>";
}
if ($yaodan->ydxx!=0){
    $ydxx = "吸血+".$yaodan->ydxx."<br/>";
}
$ydsx = "<br/>".$ydhp.$ydgj.$ydfy.$ydbj.$ydxx;
$playeryd = \player\getplayeryaodan($ydid,$sid,$dblj);
$ydinfo = <<<HTML
<IMG width='280' height='140' src='./images/rw.png'src="./images/rw.png" style="border-radius: 8px;">
<div align="center">
$tishi======<br>
<font color='{$yaodan->ydys}'>[$yaodan->ydname]</font><br>剩余：{$playeryd->ydsum}<br/>
======
$ydsx
$setyd
$ts
</div>
<br/><br>
<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
		
		            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0" />
            <link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
             <script type="text/javascript">
               $('#load').click(function(){
               popup({type:'load',msg:"请等待",delay:1500,callBack:function(){
           	  popup({type:"success",msg:"加载成功",delay:1000});
                 }});
                  })
            </script>
HTML;
echo $ydinfo;