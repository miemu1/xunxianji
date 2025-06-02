<?php

$player = \player\getplayer($sid,$dblj);

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$cwhtml='';
$cwnamehtml= '';
$chouqucmd = $encode->encode("cmd=xxwg&canshu=chouqu&sid=$sid");
//这里想搭建个成功提示框
$tskcg = <<<HTML
<html> 
<body>
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


$tsksb = <<<HTML
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
   popup({type:'error',msg:"失败!",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;


if (isset($canshu)){
    switch ($canshu) {
        case 'chouqu':
		
            if (\player\changeczb(2, 200, $sid, $dblj)) {
				$cqsjs = mt_rand(1,3);
				$vip = $player->vip;
				if($vip>0){
					$cqsjs = mt_rand(1,10);
				}
                \player\cqwg($cqsjs,$sid,$dblj);
				$tscg .= "".$tskcg."";
            } else {
                $tiss .= "<font style='color: #f70404;box-shadow: inset 2px -8px 16px 31px black;'>请联系GM进行体验</font><br>";
				$tssb .= "".$tsksb."";	
            }
            break;
        case 'xuexi':
            \player\changeplayersx('wugong',$wgid,$sid,$dblj);
            $player = \player\getplayer($sid,$dblj);
            break;
        case 'biguan':
            \player\changeplayersx('wugong',0,$sid,$dblj);
            $player = \player\getplayer($sid,$dblj);
            break;
        case 'fangsheng':
            \player\delewugong($wgid,$sid,$dblj);
            break;
        case 'cwinfo':
            $cx = \player\wgcx($wgid,$sid,$dblj);
			
            $cwinfo = $encode->encode("cmd=xxwg&wgid=$player->wugong&canshu=cwinfo&sid=$sid");
			$wgxx = $encode->encode("cmd=xxwg&sid=$sid");
			$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
            $wgxl = $encode->encode("cmd=wgxl&sid=$sid");
            
$cwhtml = <<<HTML
			<IMG width='280' height='140' src='./images/wugong/$wgid.png' style="border-radius: 8px;">
            <a href="?cmd=$xiuliancmd" >坐禅修炼</a><a href="?cmd=$wgxl" >武功修行</a><a href="?cmd=$wgxx" >秘籍</a><hr>
			
            武功名称:[$cx->wgname]<br/>
            武功等级:$cx->wgdj<br/>
            武功品质:$cx->wgys<br/>
            武功经验:$cx->wgxl / $cx->wgxlmax<br/>
            
            <hr>
			武功介绍:($cx->wginfo)
            <hr>
            <a href="#" onClick="javascript:history.back(-1);" style="background-color: #cff3d2;">返回上层</a>
            <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
HTML;
            echo $cwhtml;
            exit();
            break;
    }
}

$allcw = \player\wgsl($sid,$dblj);
if ($allcw){
    foreach ($allcw as $cw){
        $wgid = $cw['wgid'];
        $czcmd='';
        if ($wgid!=$player->wugong){
            $czcmd = $encode->encode("cmd=xxwg&canshu=xuexi&wgid=$wgid&sid=$sid");
            $fscmd = $encode->encode("cmd=xxwg&canshu=fangsheng&wgid=$wgid&sid=$sid");
            $czcmd = '<a href="?cmd='.$czcmd.'">学习</a>';
            $fscmd = '<a href="?cmd='.$fscmd.'">丢弃</a>';
            $gncmd = $czcmd.$fscmd;
        }else{
            $shcmd = $encode->encode("cmd=xxwg&canshu=biguan&wgid=$wgid&sid=$sid");
            $shcmd = '<a href="?cmd='.$shcmd.'">闭关</a>';
            $gncmd = '<a style="background-color: #27a2c7;color: #ffffff;border-radius:10px;">(学习中)</a>'.$shcmd;
        }
		
        $wginfo = $encode->encode("cmd=xxwg&canshu=cwinfo&wgid=$wgid&sid=$sid");
        $cwnamehtml.="$cwpinzhi".'<a style="color: '.$cw['wgys'].';" href="?cmd='.$wginfo.'"><font color='.$cwsc.'>'.$cw['wgname'].'</font></a>x'.$cw['wgsum'].''.$gncmd.'<br/>';
        
    }
}else{
    $cwnamehtml= '你当前没有武功秘籍,当前版本秘籍内测。如需要体验，请联系GM。';
}
$wgid = $player->wugong ;
if($wgid==''){
	$wgid = 0 ;
}
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$wgxl = $encode->encode("cmd=wgxl&sid=$sid");
$wgxx = $encode->encode("cmd=xxwg&sid=$sid");

$tupian = <<<html
<IMG width='280' height='140' src='./images/wugong/$wgid.png' style="border-radius: 8px;">
html;

$cwhtml = <<<HTML
$tupian
<a href="?cmd=$xiuliancmd" >坐禅修炼</a><a href="?cmd=$wgxl" >武功修行</a><a href="?cmd=$wgxx" >秘籍</a><hr>
$cwnamehtml
$tssb
$tscg
<br/>
<div align="center">
$tiss
<a id="load" href="?cmd=$chouqucmd"style="color: red">新手秘籍</a>
</div>
<br/>
<a href="#" onClick="javascript:history.back(-1);" style="background-color: #cff3df78;">返回上层</a>
<a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3df78;" >返回游戏</a>

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
echo $cwhtml;