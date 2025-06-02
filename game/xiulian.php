<?php
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$strxl = $encode->encode("cmd=startxiulian&canshu=1&sid=$sid");
$strxl1 = $encode->encode("cmd=startxiulian&canshu=2&sid=$sid");
$endxl = $encode->encode("cmd=endxiulian&sid=$sid");
$nowdate = date('Y-m-d H:i:s');
$xlsjc='尚未开始修炼';
$tishi = '';
$xlexp = 0;
$xiaohao = 32 * $player->ulv;
$jpxiaohao = round(($player->ulv+1)/2);


if ($cmd == 'startxiulian'){
    if ($player->sfxl == 1){
        $tishi = '你已经在 修炼中了<br/>';
    }else{
        if ($canshu == 1){
            $ret = \player\changeyxb(2,$xiaohao,$sid,$dblj);
        }else{
            $ret = \player\changeczb(2,$jpxiaohao,$sid,$dblj);
        }
        if ($ret){
            \player\changeplayersx('xiuliantime',$nowdate,$sid,$dblj);
            \player\changeplayersx('sfxl',1,$sid,$dblj);
            $tishi = '开始修炼...<br/>';
            $xlsjc = 0;
            $player = \player\getplayer($sid,$dblj);
        }else{
            $tishi='灵石不足';
        }

    }
}
		$one = strtotime($nowdate) ;
        $tow = strtotime($player->xiuliantime);
        $xlsjc=floor(($one-$tow)/60);
		$xlexp = round($xlsjc * $player->ulv*1);
     if ($xlsjc > 1440){
        $xlsjc = 1440;
        $xlexp = round($xlsjc * $player->ulv*1);//获取修为计算
	 }
if ($cmd == 'endxiulian'){//结束修仙
    if ($player->sfxl == 1){
		\player\changeexp($sid,$dblj,$xlexp);//这个需要突破，溢出无法增加修炼值
       // \player\addplayersx('uexp',$xlexp,$sid,$dblj);这个直接加数据库，无需突破
        \player\changeplayersx('sfxl',0,$sid,$dblj);
		//$player = \player\getplayer($sid,$dblj);	
        $xlsjc = '结束修炼...<br/>修炼时间：'.$xlsjc;
        $tishi = '获得修为:'.$xlexp.'<br/>';   
        $player = \player\getplayer($sid,$dblj);	
    }
	else{
        $tishi = '你还没有开始修炼...<br/>';
    }
}

if ($player->sfxl == 1){
    // $one = strtotime($nowdate) ;
    // $tow = strtotime($player->xiuliantime);
    // $xlsjc=floor(($one-$tow)/60);
    // if ($xlsjc > 1440){
        // $xlsjc = 1440;
    // }
    // $xlexp = round($xlsjc * $player->ulv*1000);//获取修为计算
	// $sl = $xlexp;
    //\player\changeexp($sid,$dblj,$xlexp);
    $tishi = '<font color="#A0A000">修</font><font color="#F5A000">炼</font><font color="#FFA000">中</font><br/>';
    $xlcz = "<a href=?cmd=$endxl>结束修炼</a><br/><br/>";
}else{
	$tishi = '你还没有开始修炼...<br/>';
    $xlcz = "<a href=?cmd=$strxl>使用灵石修炼</a><a href=?cmd=$strxl1>使用魔石修炼</a><br/><br/>";
}
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$wgxl = $encode->encode("cmd=wgxl&sid=$sid");
$wgxx = $encode->encode("cmd=xxwg&sid=$sid");
// $wgid = $player->wugong;
// $cxwg = \player\wgcx($wgid,$sid,$dblj);

$xlhtml = <<<HTML
<IMG width='280' height='140' src='./images/xiulian.jpg' style="border-radius: 8px;">
<a href="?cmd=$xiuliancmd" >坐禅修炼</a><a href="?cmd=$wgxl" >武功修行</a><a href="?cmd=$wgxx" >秘籍</a><br>
修炼玩家：$player->uname<br/>
玩家状态：$player->jingjie($player->ulv)<br/>
===============<br/>
修炼时间:$xlsjc 分钟<br/>
修炼收益:$xlexp 修为<br/>
当前修为:$player->uexp <br/>
===============<br/>
坐禅状态:$tishi 
===============<br/>
注：最多修炼24小时，1440分钟<br/>
<br/>
修炼需要灵石：$xiaohao/$player->uyxb<br/>
修炼需要魔石：$jpxiaohao/$player->uczb<br/>
$xlcz
		<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $xlhtml;
?>