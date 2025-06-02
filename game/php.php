<?php
$player = player\getplayer($sid,$dblj);//获取你的ID
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");//【返回游戏的链接】
$shangdian = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");//【商店链接】  PHP ，选择文本 ， 加载代码 ，你的身份
$fangshi = $encode->encode("cmd=fangshi&fangshi=daoju&sid=$sid");
$zhuangbei = $encode->encode("cmd=fangshi&fangshi=zhuangbei&sid=$sid");
//$ydlist = $encode->encode("cmd=shangdian&nid&canshu=ydlist&sid=$sid");//这个是没写完的，也不知道要写什么

//从这里开始第一个网页
// $qydthtml = <<<HTML
// <br/><a href="?cmd=$shangdian">第一个段落</a><br/>
// HTML;
//结束第一个网页




//下面是一个参数存放,然后开启第二个网页
//$player = player\getplayer($sid,$dblj);//获取你的ID

$qydthtml =<<<HTML
         <div align="center">
         【<a href="?cmd=$shangdian">怪物</a>|<a href="?cmd=$zhuangbei">NPC</a>|<a href="?cmd=$zhuangbei">地图】</a><br/></div>
    

        $qydthtml<br/>
		<div align="center">
		<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="?cmd=$gonowmid">返回游戏</a>
		</div>
HTML;
echo $qydthtml
?> 


 <?php
// $player = player\getplayer($sid,$dblj);
// $map = '';

// $cxallmap = \player\getqy_all($dblj);
// $br = 0;
// for ($i=0;$i<count($cxallmap);$i++){

    // $qyame = $cxallmap[$i]['qyname'];
    // $mid = $cxallmap[$i]['mid'];
    // if ($mid>0){
        // $cxmid = \player\getmid($mid,$dblj);
        // $mname = $cxmid->mname;
        // $br++;
        // $gomid = $encode->encode("cmd=gomid&newmid=$mid&sid=$sid");
        // $map .=<<<HTML
        // <a href="?cmd=$gomid" >[$qyame]$mname</a>
// HTML;
    // }
    // if ($br >= 3){
        // $br = 0;
        // $map.="<br/>"  ;
    // }
// }


// $gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
// $allmap = <<<HTML
// <!--<IMG width='280' height='50' src='./images/dt.jpg'>-->世界地图：<br/>
// $map<br>
// <br>
// <a href="#" onClick="javascript:history.back(-1);">返回上层</a><br/>
// <a href="game.php?cmd=$gonowmid">返回游戏</a>
// HTML;
// echo $allmap;
// ?>