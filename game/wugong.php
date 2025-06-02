<?php
$player = \player\getplayer($sid,$dblj);
$wgid = $player->wugong;
$wgid = $player->wugong;
$cxwg = \player\wgcx($wgid,$sid,$dblj);

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$strxl = $encode->encode("cmd=wgxiulian&canshu=1&wgid=$wgid&sid=$sid");
$endxl = $encode->encode("cmd=jswg&wgid=$wgid&sid=$sid");//结束修仙
$nowdate = date('Y-m-d H:i:s');
$xlsjc='尚未开始修炼';
$tishi = '';
$xlexp = 0;
$xiaohao = 0 + $cxwg->wgdj ;
$xhms = $cxwg->wgdj*3;


if ($cmd == 'wgxiulian'){
    if ($cxwg->xlzt == 1){
        $tishi = '已经在修炼中了<br/>';
    }else{
        if ($canshu == 1){
            $ret = \player\changeyxb(2,$xhms,$sid,$dblj);
        }else{
            $ret = \player\changeczb(2,$xhms,$sid,$dblj);
        }
        if ($ret){
            \player\gaibianwg('xlsj',$nowdate,$wgid,$sid,$dblj);
            \player\gaibianwg('xlzt',1,$wgid,$sid,$dblj);
            $tishi = '嘿咻嘿咻，操练起来...<br/>';
            $xlsjc = 0;
            $player = \player\getplayer($sid,$dblj);
        }else{
            $tishi='失败失败失败404';
        }

    }
}
		$one = strtotime($nowdate) ;
        $tow = strtotime($cxwg->xlsj);
        $xlsjc=floor(($one-$tow)/60);
		$xlexp = round($xlsjc*0.8);
		$fanbei = round(10 + $xlexp*1.2);
     if ($xlsjc > 1440){
        $xlsjc = 1440;
        $xlexp = round($xlsjc * 1.2);//获取功力
		$fanbei = round(10 + $xlexp*1.6);
	 }
if ($cmd == 'jswg'){//结束修仙
    if ($cxwg->xlzt == 1){
		$zzz =$xlexp+$cxwg->wgxl;
		if($zzz > $cxwg->wgxlmax){
			$zj = $zzz - $cxwg->wgxlmax;
			\player\gaibianwg('xlzt',0,$wgid,$sid,$dblj);
			$ret = $dblj->exec($sql);
			$sql = "update playerwugong set wgxl =  $zj where wgid = '$wgid' and sid='$sid'";
			$ret = $dblj->exec($sql);
			$sql = "update playerwugong set wgdj = wgdj + 1 where wgid = '$wgid' and sid='$sid'";
			$ret = $dblj->exec($sql);
			$sql = "update playerwugong set wgxlmax = wgxlmax + $fanbei where wgid = '$wgid' and sid='$sid'";
			$ret = $dblj->exec($sql);
			$sql = "update playerwugong set wgsum = wgsum - 1 where wgid = '$wgid' and sid='$sid'";
		    $ret = $dblj->exec($sql);
		}
        else{
		\player\gaibianwg('xlzt',0,$wgid,$sid,$dblj);
        $xlsjc = '结束修炼...<br/>修炼时间：'.$xlsjc;
        $tishi = '获得修为:'.$xlexp.''.$zj.'<br/>';
		$wgsum = $cxwg->wgsum - 1 ;
		$sql = "update playerwugong set wgsum = wgsum - 1 where wgid = '$wgid' and sid='$sid'";
		$ret = $dblj->exec($sql);
	    $sql = "update playerwugong set wgxl = wgxl + $xlexp where wgid = '$wgid' and sid='$sid'";
        $ret = $dblj->exec($sql);//计算武功等级		
		}
    }
	else{
        $tishi = '你还没有开始修炼...<br/>';
    }
}

$cxwg = \player\wgcx($wgid,$sid,$dblj);
if ($cxwg->xlzt == 1){
    $tishi = '<font color="#A0A000">练</font><font color="#F5A000">武</font><font color="#FFA000">中</font><br/>';
    $xlcz = "<a href=?cmd=$endxl>结束修炼</a><br/><br/>";
}else{
	$tishi = '偷懒中...<br>';
	if($cxwg->wgsum>=1){
    $xlcz = "<a href=?cmd=$strxl style='color: #f36c09;'>开始修行</a><br/><br/>";
	}else{
		$xlcz = "<a style='color: #f50808;'>缺少秘籍，无法修行</a><br><br>";
	}
}
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$wgxl = $encode->encode("cmd=wgxl&sid=$sid");
$wgxx = $encode->encode("cmd=xxwg&sid=$sid");
$cxwg = \player\wgcx($wgid,$sid,$dblj);
$wgys = $cxwg->wgys;
$wu = $player->wugong;
if ($wu==0){
	$wuwugong = "没有武功！！";
	$wumiji = "0秘籍";
	$jieshao = "请收集秘籍进行学习武功";
	$gongli = "0.000001";
	
}
$xlhtml = <<<HTML
<IMG width='280' height='140' src='./images/wugong/$wgid.png' style="border-radius: 8px;">
<a href="?cmd=$xiuliancmd" >坐禅修炼</a><a href="?cmd=$wgxl" >武功修行</a><a href="?cmd=$wgxx" >秘籍</a><br>
修行玩家：$player->uname<br/>
玩家等级：$player->jingjie($player->ulv)<br/>
===============<br/>
修行武功:$wuwugong<font color="$wgys">$cxwg->wgname</font><br>
当前功力:$gongli $cxwg->wgdj<br>
秘籍数量:$wumiji $cxwg->wgsum 卷<br/>
修行消耗:$xiaohao 卷<br/>
武功介绍:$jieshao $cxwg->wginfo<br>
===============<br/>
修炼状态:$tishi 
===============<br/>
注：武功等级越高，修行时间越长，<br>最高1440分钟,消耗秘籍也多。<br/>
$xlcz<a href="#" onClick="javascript:history.back(-1);">
返回上层</a><a href="game.php?cmd=$gonowmid" style="float:right;" >
返回游戏</a>
HTML;
echo $xlhtml;
?>