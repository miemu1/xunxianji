<?php
$player = player\getplayer($sid,$dblj);//获取你的ID
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");//【返回游戏的链接】
$qysd = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");//【商店链接】  PHP ，选择文本 ， 加载代码 ，你的身份
$clmid = player\getmid($player->nowmid,$dblj); //获取地图信息
if ($clmid->playerinfo != ''){
    $clmid->playerinfo .='<br/>';
}
//$ydlist = $encode->encode("cmd=shangdian&nid&canshu=ydlist&sid=$sid");//这个是没写完的，也不知道要写什么

//从这里开始第一个网页
// $npchtml = <<<HTML


// $npchtml = '';

// $cxallnpchtml = \player\getqy_all($dblj);
// $br = 0;
// for ($i=0;$i<count($cxallnpchtml);$i++){

    // $qyame = $cxallnpchtml[$i]['qyname'];
    // $mid = $cxallnpchtml[$i]['mid'];
    // if ($mid>0){
        // $cxmid = \player\getmid($mid,$dblj);
        // $mname = $cxmid->mname;
        // $br++;
        // $gomid = $encode->encode("cmd=gomid&newmid=$mid&sid=$sid");
        // $npchtml .=<<<HTML
        // <a href="?cmd=$gomid" >[$qyame]$mname</a>
// HTML;
    // }
    // if ($br >= 3){
        // $br = 0;
        // $npchtml.="<br/>"  ;
    // }
// }



// <br/><a href="?cmd=$shangdian">第一个段落</a><br/>
//HTML;
//结束第一个网页


$yrdthtml = '';
$yrdt = \player\getmid($mid,$dblj);
$cxallnpchtml = \player\getqy_dt($dblj);

$br = 0;
for ($i=0;$i<count($cxallnpchtml);$i++){
     $qyame = $cxallnpchtml[$i]['qyname'];
    $yrdt = \player\getmid($qyid,$dblj);
    $mid = $cxallnpchtml[$i]['mid'];
	
    if ($mid>0){
        $cxmid = \player\getmid($mid,$dblj);
        $mname = $cxmid->mname;
		
        $br++;
        $gomid = $encode->encode("cmd=gomid&newmid=$mid&sid=$sid");
        $yrdthtml .=<<<HTML
        <a href="?cmd=$gomid" >【$qyame $mname 】</a>
HTML;
    }
    if ($br >= 1){
        $br = 0;
        $yrdthtml.="<br/>"  ;
    }
}
$yrdthtml = <<<HTML

<hr>
$yrdthtml
<hr>
HTML;
$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
$goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
$gonowmid = $encode->encode("cmd=gomid&newmid=$clmid->mid&sid=$sid");
$phcmd = $encode->encode("cmd=paihang&sid=$sid");
$getbagcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$cwcmd = $encode->encode("cmd=chongwu&sid=$sid");
$cxall = '';

$upmidlj = $encode->encode("cmd=gomid&newmid=$clmid->upmid&sid=$sid");//上地图
$downmidlj = $encode->encode("cmd=gomid&newmid=$clmid->downmid&sid=$sid");
$leftmidlj = $encode->encode("cmd=gomid&newmid=$clmid->leftmid&sid=$sid");
$rightmidlj = $encode->encode("cmd=gomid&newmid=$clmid->rightmid&sid=$sid");
$upmid = player\getmid($clmid->upmid,$dblj);
$downmid = player\getmid($clmid->downmid,$dblj);
$leftmid = player\getmid($clmid->leftmid,$dblj);
$rightmid = player\getmid($clmid->rightmid,$dblj);
$sx = ($clmid->leftmid)+4;
$dt = $encode->encode("cmd=gomid&newmid=$sx&sid=$sid");//上地图
$dd = player\getmid($sx,$dblj);
$lukouhtml ='';
if ($upmid->mname!=''){
    $lukouhtml .= <<<HTML
    北:<a href="?cmd=$upmidlj">$upmid->mname ↑</a><br/>
HTML;
}

if ($leftmid->mname!=''){
    $lukouhtml .= <<<HTML
    西:<a href="?cmd=$leftmidlj">$leftmid->mname ←</a><br/>
HTML;
}

if ($rightmid->mname!=''){
    $lukouhtml .= <<<HTML
    <a href="?cmd=$rightmidlj">$rightmid->mname →</a><br/>
HTML;
}

if ($downmid->mname!=''){
    $lukouhtml .= <<<HTML
    <a href="?cmd=$downmidlj">$downmid->mname ↓</a><br/>
HTML;
}



$dthtml =<<<HTML

        <div width:100%>
          <div width:100%">
		  <div align="center">
		  <font size="2">
            <div id="playScene" class="" style="height: 50% !important; opacity: 1;">
			<center>我的位置:$clmid->mname<br><hr>
			<center><span id="gtBtn0" data-tp="b"><IMG width='280' height='150' src='./dt/ditu/{$clmid->mqy}.png' style="border-radius: 10px;"></a></span>
			
			</font>
			
          </div>
		</div>
		</div>
		</div>	
		<br><br>		

		<a href="#" onClick="javascript:history.back(-1);" style="float:left; background-color: #ecf7ed;">返回上层</a>
            <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#ecf7ed;" >返回游戏</a>
		<br>
		
</body>
HTML;



$djshtml = <<<HTML
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>计时器 </title>

<script type="text/javascript" src="./chajian/djs/js/jquery.js"></script>
<script type="text/javascript" src="./chajian/djs/js/time_js.js"></script>

<link type="text/css" rel="stylesheet" href="./chajian/djs/css/time_css.css" />

</head>

<body>

<div class="game_time">

	<div class="hold">
		<div class="pie pie1"></div>
	</div>

	<div class="hold">
		<div class="pie pie2"></div>
	</div>

	<div class="bg"> </div>
	
	<div class="time"></div>
	
</div>

<script type="text/javascript">
countDown();
</script>

</body>

HTML;
//上面是倒计时的一段










//下面是一个参数存放,然后开启第二个网页
//$player = player\getplayer($sid,$dblj);//获取你的ID
// $bb = $encode->encode("cmd=getbagyd&sid=$sid");
// $sd = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");
$qydt = $encode->encode("cmd=qydt&sid=$sid");
$qydthtml =<<<HTML
         <div align="center">
         【<a href="?cmd=$qydt">怪物</a>|<a href="?cmd=$qydt">NPC</a>|<a href="?cmd=$qydt" style="
    background-color: #dbf9d5;
">地图】</a><br/>
    
        
        
		<div align="center">
		【区域地图】<br>
		$dthtml<br>
		$yrdthtml<br>
		</div>
		
		<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="?cmd=$gonowmid">返回游戏</a>
		
		</div>
HTML;
echo $qydthtml
?> 










