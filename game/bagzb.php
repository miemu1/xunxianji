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
   popup({type:'success',msg:"分解成功",delay:2000,callBack:function(){
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


$player = player\getplayer($sid,$dblj);
$tishi = '';
if (isset($canshu)){
    if ($canshu=='maichu'){
        $mczb = \player\getzb($zbnowid,$dblj);
        $sxzz = $mczb->zbgj*50 + $mczb->zbhp*3 + $mczb->zbfy*15 + $mczb->zbbj * 15 + $mczb->zbxx * 15 + $mczb->qianghua*20;
        $mcls = round($sxzz);
        $sql = "delete from playerzhuangbei where zbnowid =$zbnowid AND sid='$sid'";//删除装备
        $mcret = $dblj->exec($sql);
        if ($mcret){
            $ret = \player\changeyxb(1,$sxzz,$sid,$dblj);
            $tishi = "卖出[$mczb->zbname],获得灵石:$mcls<hr>";
        }
    }
}
if (!isset($yeshu)){
    $yeshu = 0;
}
if ($cmd == 'delezb'){
    $zhuangbei = \player\getzb($zbnowid,$dblj);
    $fjls = $zhuangbei->qianghua * 20 + 20;
    $ret = \player\changeyxb(2,$fjls,$sid,$dblj);
    if ($ret){
        $sql = "delete from playerzhuangbei where zbnowid =$zbnowid AND sid='$sid'";//删除装备
        $dblj->exec($sql);
        $qhs = round($zhuangbei->qianghua*$zhuangbei->qianghua+($zhuangbei->zbgj+$zhuangbei->zbfy)/2);//计算强化石分解获得情况
        $sjs = mt_rand(1,100);
        if ($sjs <= 30){
            $sjs = mt_rand(1,100);
            if ($sjs>90){
                $qhs = $qhs + 3;
            }elseif($sjs>80){
                $qhs = $qhs + 2;
            }elseif ($sjs>70){
                $qhs = $qhs + 1;
            }
        }
        \player\adddj($sid,1,$qhs,$dblj);
        //$tishi = '分解成功!';
        if ($qhs >= 0){
            $tishi .= "分解成功!获得强化石:".$qhs."!<hr>";
			$ts .= "".$tscg."";
        }
    }else{
        $tishi = "灵石不足!<br/>";
		$ts .= "".$tssb."";
    }
}

$sql = "select * from playerzhuangbei  WHERE sid = '$sid' ORDER BY zbid DESC LIMIT $yeshu,10";
$cxjg = $dblj->query($sql);
$retzb = $cxjg->fetchAll(PDO::FETCH_ASSOC);

$sql = "select count(*) from playerzhuangbei where sid = '$sid'";
$cxjg = $dblj->query($sql);
$zbcount = $cxjg->fetchColumn();

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zbhtml = '';
$fanye='';
if ($yeshu!=0){
    $shangcanshu=$yeshu-10;
    $shangyiye = $encode->encode("cmd=getbagzb&yeshu=$shangcanshu&sid=$sid");
    $fanye = '<a href="?cmd='.$shangyiye.'">上一页</a>';
}
if ($yeshu +10 < $zbcount){
    $xiacanshu=$yeshu+10;
    $xiayiye = $encode->encode("cmd=getbagzb&yeshu=$xiacanshu&sid=$sid");
    $fanye .= '<a href="?cmd='.$xiayiye.'">下一页</a>';
}
if ($fanye!=''){
    $fanye = '<br/>'.$fanye.'<br/>';
}
$hangshu = 0;
for ($i=0;$i<count($retzb);$i++){
    $zbnowid = $retzb[$i]['zbnowid'];
    $arr = array($player->tool1,$player->tool2,$player->tool3,$player->tool4,$player->tool5,$player->tool6,$player->tool7);
    $hangshu = $hangshu + 1;

    $zbname = $retzb[$i]['zbname'];
    $zbnowid = $retzb[$i]['zbnowid'];
    $zbqh = $retzb[$i]['qianghua'];
    $qhhtml = '';
    if($zbqh>0){
        $qhhtml="+".$zbqh;
    }
    $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
    if (!in_array($zbnowid,$arr)){
        $mczb = $encode->encode("cmd=getbagzb&canshu=maichu&yeshu=$yeshu&zbnowid=$zbnowid&sid=$sid");
		$zhuangbei = \player\getzb($zbnowid,$dblj);
        $delezb = $encode->encode("cmd=delezb&zbnowid=$zbnowid&sid=$sid");
        $zbhtml .= <<<HTML
        [$hangshu].<a href="?cmd=$chakanzb"><font color='{$zhuangbei->zbys}'>$zbname</font>$qhhtml</a><a href="?cmd=$mczb">卖出</a><a href="?cmd=$delezb">分解</a><br/>
HTML;
    }else{
		$zhuangbei = \player\getzb($zbnowid,$dblj);
        $zbhtml .= <<<HTML
        [$hangshu].<a href="?cmd=$chakanzb"><font color='{$zhuangbei->zbys}'>{$zbname}</font>$qhhtml</a>(已装备)<br/>
HTML;
    }
}
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$getbagydcmd = $encode->encode("cmd=getbagyd&sid=$sid");
$toolhtml =<<<HTML

[<font size="2">装备|<a href="?cmd=$getbagdjcmd">道具</a>|<a href="?cmd=$getbagypcmd">药品</a>|<a href="?cmd=$getbagjncmd">技能</a>
<a href="?cmd=$getbagydcmd">丹药</a></font>]
<div align="center">
<font style="color: #f90909;">
$tishi$ts
</font>
</div>
$zbhtml
$fanye
<br/>
<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
HTML;
echo $toolhtml;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2021 /6/16
 * Time: 17:56
 */?>

