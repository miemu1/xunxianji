<?php
$player = player\getplayer($sid,$dblj);//获取你的ID
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

$shangdian = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");//  PHP ，选择文本 ， 加载代码 ，你的身份

$shangdian1 = $encode->encode("cmd=shangdian&canshu1=gogoumai1&sid=$sid");

$beibaocmd = $encode->encode("cmd=getbagyd&sid=$sid");
//$gmcmd = $encode->encode("cmd=npc&nid=$nid&canshu=gogoumai&sid=$sid");
//$ydlist = $encode->encode("cmd=npc&nid=$nid&canshu=ydlist&sid=$sid");


$gnhtml = <<<HTML
<br/>
<a href="?cmd=$shangdian"><font color="#ffc100">灵石购买</font></a><br/>
<a href="?cmd=$shangdian1"><font color="#ffc100">魔石购买</font></a>
<br/>
HTML;

//这里想搭建个成功提示框
$tskcg = <<<HTML
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
   popup({type:'success',msg:"购买成功",delay:2000,callBack:function(){
	  console.log('callBack~~~');
   }});
})
$('#error').click(function(){
   popup({type:'error',msg:"操作失败",delay:2000,bg:true,clickDomCancel:true});
})
$('#load').click(function(){
   popup({type:'load',msg:"请等待",delay:1500,callBack:function(){
	  popup({type:"success",msg:"加载成功",delay:1000});
   }});
})
$('#tip').click(function(){
   popup({type:'tip',msg:"提示信息",delay:null,bg:true,clickDomCancel:true});
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
   popup({type:'error',msg:"购买失败",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;


//这里弄个确认框
$qrhtml = <<<HTML

<head>
<script>
if(confirm("确认"))
alert("……");
else alert("取消");
</script>
</head>
<body>
强行购买成功~
</body>

HTML;



if (isset($canshu)){
    switch ($canshu){
        case 'gogoumai':
            $gnhtml='';
            if (isset($ydcount) && isset($ydid)){
                $yaodan = \player\getyaodanonce($ydid,$dblj);
                $ydjg = $yaodan->ydjg;
                $ydname = $yaodan->ydname;
                $ret = \player\changeyxb(2,$ydjg*$ydcount,$sid,$dblj);
                if ($ret){
                    \player\addyaodan($sid,$ydid,$ydcount,$dblj);
				$gnhtml .= "".$tskcg."";
                }else{
                    $gnhtml .= "".$tsksb."<br/>";
                }
            }
            $yaodan = \player\getyaodan($dblj);
            foreach ($yaodan as $oneyaodan){
                $ydname = $oneyaodan['ydname'];
                $ydid = $oneyaodan['ydid'];
                $ydjg = $oneyaodan['ydjg'];
				$ydys = $oneyaodan['ydys'];
                $ydcmd = $encode->encode("cmd=ydinfo&ydid=$ydid&sid=$sid");//cmd=php文件& 文件内某物件 &sid是一个地址 你的身份
                $gm1yd = $encode->encode("cmd=shangdian&canshu=gogoumai&ydcount=1&ydid=$ydid&sid=$sid");
            //    $gm5yd = $encode->encode("cmd=npc&nid=$nid&canshu=gogoumai&ydcount=5&ydid=$ydid&sid=$sid");
            //    $gm10yd = $encode->encode("cmd=npc&nid=$nid&canshu=gogoumai&ydcount=10&ydid=$ydid&sid=$sid");
			
                $gm1yd = '<a id="load" href="?cmd='.$gm1yd.'">购买</a>';
             //   $gm5yd = '<a href="?cmd='.$gm5yd.'">购买5</a>';
            //    $gm10yd = '<a href="?cmd='.$gm10yd.'">购买10</a>';
                $gnhtml .= <<<HTML
                    <br/><a href="?cmd=$ydcmd"><font color='{$ydys}'>[$ydname]</font>$ydjg 灵石</a>$gm1yd$gm5yd$gm10yd
					
HTML;
            }
			
            $gnhtml .="<br/>";
            break;
    }
	
}
if (isset($canshu1)){
    switch ($canshu1){
        case 'gogoumai1':
            $gnhtml='';
            if (isset($ydcount) && isset($ydid)){
                $yaodan = \player\getyaodanonce($ydid,$dblj);
                $ydjg = $yaodan->ydjgm;
                $ydname = $yaodan->ydname;
                $ret = \player\changeczb(2,$ydjg*$ydcount,$sid,$dblj);
                if ($ret){
                    \player\addyaodan($sid,$ydid,$ydcount,$dblj);
				//$gnhtml .= $tskhtml."购买".$ydcount.$ydname.""源码
				$gnhtml .= "".$tskcg.""
					;
                }else{
                    $gnhtml .= "".$tsksb."";
                }
            }
            $yaodan = \player\getyaodan($dblj);
			
            foreach ($yaodan as $oneyaodan){
                $ydname = $oneyaodan['ydname'];
                $ydid = $oneyaodan['ydid'];
                $ydjg = $oneyaodan['ydjgm'];
				$ydys = $oneyaodan['ydys'];
                $ydcmd = $encode->encode("cmd=ydinfo&ydid=$ydid&sid=$sid");//cmd=php文件& 文件内某物件 &sid是一个地址 你的身份
                $gm1yd = $encode->encode("cmd=shangdian&canshu1=gogoumai1&ydcount=1&ydid=$ydid&sid=$sid");
            //    $gm5yd = $encode->encode("cmd=npc&nid=$nid&canshu=gogoumai&ydcount=5&ydid=$ydid&sid=$sid");
            //    $gm10yd = $encode->encode("cmd=npc&nid=$nid&canshu=gogoumai&ydcount=10&ydid=$ydid&sid=$sid");
			
                $gm1yd = '<a id="load" href="?cmd='.$gm1yd.'">购买</a>';
             //   $gm5yd = '<a href="?cmd='.$gm5yd.'">购买5</a>';
            //    $gm10yd = '<a href="?cmd='.$gm10yd.'">购买10</a>';
			
			
			
			
                $gnhtml .= <<<HTML
                    <br/><a href="?cmd=$ydcmd"><font color='{$ydys}'>[$ydname]</font>$ydjg 魔石</a>$gm1yd$gm5yd$gm10yd
HTML;
            }
			
            $gnhtml .="<br>";
            break;
    }
}
//下面是一个参数存放
        $shangdian = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");
		$shangdian1 = $encode->encode("cmd=shangdian&canshu1=gogoumai1&sid=$sid");
		$beibaocmd = $encode->encode("cmd=getbagyd&sid=$sid");
		$player = player\getplayer($sid,$dblj);

$gnhtml =<<<HTML
              <IMG width='280' height='140' src='./images/shangdian.png'src="./images/rw.png" style="border-radius: 8px;">
            [<a href="?cmd=$shangdian">灵石丹药</a></a><a href="?cmd=$shangdian1"><font color="#9c27b0">魔石丹药</font></a>
			<a href="?cmd=$beibaocmd">药房</a>]<hr>
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0" />
            <link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
			【灵石：$player->uyxb ====魔石：$player->uczb 】<hr>
             $gnhtml<br/>
		<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
		
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
             <script type="text/javascript">
             $('#success').click(function(){
              popup({type:'success',msg:"操作成功",delay:1000,callBack:function(){
	          console.log('callBack~~~');
               }});
               })
               $('#error').click(function(){
               popup({type:'error',msg:"操作失败",delay:2000,bg:true,clickDomCancel:true});
               })
               $('#load').click(function(){
               popup({type:'load',msg:"请等待",delay:1500,callBack:function(){
           	  popup({type:"success",msg:"加载成功",delay:1000});
                 }});
                  })
              $('#tip').click(function(){
              popup({type:'tip',msg:"提示信息",delay:null,bg:true,clickDomCancel:true});
              })
            </script>
HTML;
echo $gnhtml
?>