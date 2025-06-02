<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2021 /8/22
 * Time: 22:30
 */
//这里想搭建个成功提示框
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
   popup({type:'success',msg:"突破成功",delay:2000,callBack:function(){
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


$tssb1 = <<<HTML
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
   popup({type:'error',msg:"修为不足",delay:2000,bg:true,clickDomCancel:true});
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
   popup({type:'error',msg:"脸黑..",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;
 
 
 

$player = \player\getplayer($sid,$dblj);
$tupocmd = $encode->encode("cmd=tupo&canshu=tupo&sid=$sid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$tupo = \player\istupo($sid,$dblj);


$tplshtml="";
$tpls = $tpls = $player->ulv * $player->ulv * $player->ulv * 0.6;

if ($tupo == 1 ){
    $tpls = $player->ulv * $player->ulv * $player->ulv * 0.2;
}
if ($tupo == 3 ){
    $tpls = $player->ulv * $player->ulv * $player->ulv * 0.2;
}
elseif($tupo == 2){
    $tpls = $player->ulv * ($player->ulv+1) * 0.2;
}//突破阶乘改为8个阶乘

if ($tupo != 8 ){
    $tplshtml =  "突破需要灵石：$tpls/$player->uyxb<br><a href='?cmd=$tupocmd'>点击突破</a> <br/>";
    // $upgj = 100;
    // $upfy = 100;
    // $uphp = 100;
                        $uphp = 4+ round($player->ulv/1.2);
                        $upgj = 2+ round($player->ulv/2.5);
                        $upfy = 3+ round($player->ulv/2);
	if($player->uexp >= $player->umaxexp){
    if (isset($canshu)){
        switch ($canshu){
            case"tupo":
                $ret = \player\changeyxb(2,$tpls,$sid,$dblj);
                if ($ret){
                    $sjs = mt_rand(1,10);
                    if ($sjs <= 7){
                        echo "大黑脸$player->uname ，突破失败<br/>";
						$ts .= "".$tssb."";
                        break;
                    }
                    if ($tupo == 2){
                        $uphp = 2+ round($player->uhp/20);
                        $upgj = 1+ round($player->ugj/100);
                        $upfy = 1+ round($player->ufy/100);
                    }if ($sjs <= 6){
                        echo "奇迹降临 $player->uname <br/>灵光突起，风卷残云，电闪雷鸣<br/>老天眷顾获得属性：<br/>攻击+999<br/>防御+999<br/>气血+999<br/>
						<font color=#A2520B>奶</font><font color=#A1420D>妈</font>：醒醒，别睡了，哇啦乌拉的干嘛呢！！<br/>";
                        break;
                    }
                    if ($tupo == 3){
                        $uphp = 4+ round($player->ulv/1.2);
                        $upgj = 2+ round($player->ulv/2.5);
                        $upfy = 3+ round($player->ulv/2);
                    }
					// if ($sjs <= 7){
                        // echo "奇迹降临 $player->uname <br/>可惜没成功！！<br/>";
                        // break;
                    // }
					
					elseif ($tupo == 1){
                        if ($sjs<8){
                            echo "天雷劈下，成功命中【$player->uname 】脸更黑了！<br/>";
                            break;
                        }
                        $uphp = 4+ round($player->ulv/1.2);
                        $upgj = 2+ round($player->ulv/2.5);
                        $upfy = 3+ round($player->ulv/2);
                    }
                    \player\upplayerlv($sid,$dblj);
                    \player\addplayersx("umaxhp",$uphp,$sid,$dblj);
                    \player\addplayersx("ugj",$upgj,$sid,$dblj);
                    \player\addplayersx("ufy",$upfy,$sid,$dblj);
					\player\addplayersx("tf",5,$sid,$dblj);//天赋加成5 
					
                    $player = \player\getplayer($sid,$dblj);
                    echo "灵光突起，风卷残云，电闪雷鸣。<br/>突破成功获得属性：<br/>攻击+$upgj<br/>防御+$upfy<br/>气血+$uphp<br/>";
					$ts .= "".$tscg."";
                }
				
				else{
                    echo "<font color='#FF0000'>灵石不足，无法突破</font><br/>突破需要灵石：$tpls<br/>";
                }
                break;
        }
    }}
	else{
                    echo "<font color='#FF0000'>【想P吃呢，修为不够了】</font><br/>==突破需要修为：$player->umaxexp==<br/>";
					$ts .= "".$tssb1."";
                }
}
$zhanbi = round($player->uexp / $player->umaxexp *100) ;//进度条显示占比
if ($zhanbi > 100){
        $zhanbi = 100;
	 }
$tupohtml = <<<HTML
======突破======<br/>
$ts
<link rel="stylesheet"  href="./css/css.css">
当前等级：$player->ulv<br/>
当前境界：$player->jingjie$player->cengci<br/>
当前修为：$player->uexp/$player->umaxexp<br/>
<div class = "dise" width="100" height="100%">
<img class = "skills"  width="$zhanbi%" height="100%"></img >
</div>  
$tplshtml
<br/>
		<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $tupohtml;
?>

