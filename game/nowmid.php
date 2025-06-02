<?php

$player = player\getplayer($sid,$dblj);//获取玩家信息
$lastmid = $player->nowmid;

if (isset($newmid)){
    if ($player->nowmid!=$newmid){
        $clmid = player\getmid($newmid,$dblj); //获取即将走的地图信息
	$playerinfo = $player->uname."向$clmid->mname.走去";
        if ($playerinfo != $clmid->playerinfo){
            $sql = "update mid set playerinfo='$playerinfo' WHERE mid='$lastmid'";
            $dblj->exec($sql);
        }
        if ($player->uhp<=0){
            $retmid = \player\getmid($player->nowmid,$dblj);
            $retqy = \player\getqy($retmid->mqy,$dblj);
            $gonowmid = $encode->encode("cmd=gomid&newmid=$retqy->mid&sid=$sid");
            if ($newmid != $retqy->mid){
                exit("你已经重伤请治疗<br/>".'<a href="?cmd='.$gonowmid.'">返回游戏</a>');
            }

        }
		//想在这添加怪物纠缠，或者随机事件
		// if ($player->uhp<=0){
            // $retmid = \player\getmid($player->nowmid,$dblj);
            // $retqy = \player\getqy($retmid->mqy,$dblj);
            // $gonowmid = $encode->encode("cmd=gomid&newmid=$retqy->mid&sid=$sid");
            // if ($newmid != $retqy->mid){
                // exit("遇到怪物纠缠，无法脱身。<br/>".'<a href="?cmd='.$gonowmid.'">返回游戏</a>');
            // }

        // }
        \player\changeplayersx('nowmid',$newmid,$sid,$dblj);
        $player = player\getplayer($sid,$dblj);//获取玩家信息
    }

}

if ($player->nowmid=='' || $player->nowmid==0){//判断角色是否出现在非法地图
    $gameconfig = \player\getgameconfig($dblj);
    $sql = "update game1 set nowmid='$gameconfig->firstmid' WHERE sid='$sid'";
    $dblj->exec($sql);
    $player->nowmid=$gameconfig->firstmid;
}
$clmid = player\getmid($player->nowmid,$dblj); //获取地图信息
if ($clmid->playerinfo != ''){
    $clmid->playerinfo .='<br/>';
}
$pvphtml = "[安全区]";
if ($clmid->ispvp){
    $pvphtml = "<font color='#FF0000'>[PVP]</font>";
}


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

$lukouhtml ='';
$bosshtml = '';//boss的地址引入
if ($clmid->midinfo == ''){
    $clmid->midinfo = $clmid->mname;
}
$clmid = player\getmid($newmid,$dblj); //获取即将走的地图信息
$boss = player\getboss($clmid->midboss,$dblj);
$bossxl = $boss->bosshp;
$second=floor((strtotime($nowdate) - strtotime($clmid->mgtime))%86400);
if ($bossxl<0 && $clmid->midboss != 0 && $second > $clmid->ms){
	// $sql = "update mid set mgtime='$nowdate' WHERE mid='$player->nowmid'";//增加时间，计数
    // $dblj->exec($sql);
	$sql = "update boss set bosshp = bossmaxhp  WHERE bossid='$clmid->midboss'";//给boss加血,上面判断刷新时间
	$dblj->exec($sql);
	$boss = \player\getboss($clmid->midboss,$dblj);
    $bossinfo = $encode->encode("cmd=boss&bossid=$boss->bossid&sid=$sid");
    $bosshtml = <<<HTML
	<a style="color: #f80a0a;border-radius: 10px;" href="?cmd=$bossinfo">
	$boss->bossname</a>
HTML;
}
    if($bossxl>0 && $clmid->midboss != 0){
    $boss = \player\getboss($clmid->midboss,$dblj);
    $bossinfo = $encode->encode("cmd=boss&bossid=$boss->bossid&sid=$sid");
    $bosshtml = <<<HTML
	<a style="color: #f80a0a;border-radius: 10px;" href="?cmd=$bossinfo">
	$boss->bossname</a>
HTML;
    }

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
    东:<a href="?cmd=$rightmidlj">$rightmid->mname →</a><br/>
HTML;
}

if ($downmid->mname!=''){
    $lukouhtml .= <<<HTML
    南:<a href="?cmd=$downmidlj">$downmid->mname ↓</a><br/>
HTML;
}

$sql = "select * from midguaiwu where mid='$player->nowmid' AND sid = ''";//获取当前地图怪物
$cxjg = $dblj->query($sql);
$cxallguaiwu = $cxjg->rowCount();
$nowdate = date('Y-m-d H:i:s');
$second=floor((strtotime($nowdate)-strtotime($clmid->mgtime))%86400);//获取刷新间隔86400
if ($second > $clmid->ms  && $cxallguaiwu<= 0 && $clmid->mgid!=''){//刷新怪物,剩余多少怪物刷新，可以在修改修改，改成怪物死亡啥在刷新啥
    $sql = "update mid set mgtime='$nowdate' WHERE mid='$player->nowmid'";
    $dblj->exec($sql);
    $retgw = explode(",",$clmid->mgid);
    foreach ($retgw as $itemgw){
        $gwinfo = explode("|",$itemgw);
        $guaiwu = \player\getyguaiwu($gwinfo[0],$dblj);
        $guaiwu->gyid = $gwinfo[0];
        $sjexp = mt_rand(6,8) + 100;//原有加成0.5，我改成100..
        $guaiwu->gexp = round($guaiwu->glv * $sjexp,0);
        for ($n=0;$n<$gwinfo[1];$n++){
            $sql = "insert into midguaiwu(mid,gname,glv,ghp,ggj,gfy,gbj,gxx,gexp,gyid,gmaxhp) 
                    values('$player->nowmid',
                    '$guaiwu->gname',
                    '$guaiwu->glv',
                    '$guaiwu->ghp',
                    '$guaiwu->ggj',
                    '$guaiwu->gfy',
                    '$guaiwu->gbj',
                    '$guaiwu->gxx',
                    '$guaiwu->gexp',
                    '$guaiwu->gyid',
                    '$guaiwu->ghp')";
            $cxjg = $dblj->exec($sql);
        }

    }
}
//倒计时，已经抛弃
// if ($clmid->ms == 600){
// $djshtml = <<<HTML
// <head>
// <script type="text/javascript" src="./chajian/djs/js/jquery.js"></script>
// <script type="text/javascript" src="./chajian/djs/js/time_js.js"></script>
// <link type="text/css" rel="stylesheet" href="./chajian/djs/css/time_css.css" />
// </head>
// <body>	
// <div class="time"></div>
// <script type="text/javascript">
// countDown();
// </script>
// </body>

// HTML;
// }else{
        // ;
    // }
	
	// if ($clmid->ms > 0){
        // $djshtml;
    // }else{
        // $djshtml ;
    // }
//上面是倒计时的一段




$sql = "select * from midguaiwu where mid='$player->nowmid' AND sid = ''";//获取当前地图怪物
$cxjg = $dblj->query($sql);
$cxallguaiwu = $cxjg->fetchAll(PDO::FETCH_ASSOC);
$gwhtml = '';
for ($i = 0;$i<count($cxallguaiwu);$i++){
    $gwcmd = $encode->encode("cmd=getginfo&gid=".$cxallguaiwu[$i]['id']."&gyid=".$cxallguaiwu[$i]['gyid']."&sid=$sid&nowmid=$player->nowmid");
    $gwhtml .="<a href='?cmd=$gwcmd'>".$cxallguaiwu[$i]['gname']."</a>";
}

$sql = "select * from game1 where nowmid='$player->nowmid' AND sfzx = 1";//获取当前地图玩家
$cxjg = $dblj->query($sql);
$playerhtml = '';
if ($cxjg){
    $cxallplayer = $cxjg->fetchAll(PDO::FETCH_ASSOC);
    $nowdate = date('Y-m-d H:i:s');
    for ($i = 0;$i<count($cxallplayer);$i++){
        if ($cxallplayer[$i]['uname']!=""){
            $cxtime = $cxallplayer[$i]['endtime'];
            $cxuid = $cxallplayer[$i]['uid'];
            $cxsid = $cxallplayer[$i]['sid'];
            $cxuname = $cxallplayer[$i]['uname'];
            $cxuname = $cxallplayer[$i]['uname'];
            $second=floor((strtotime($nowdate)-strtotime($cxtime))%86400);//获取刷新间隔
            if ($second > 3000){
                $sql = "update game1 set sfzx=0 WHERE sid='$cxsid'";
                $dblj->exec($sql);
            }else{
                $clubp = \player\getclubplayer_once($cxsid,$dblj);
                if ($clubp){
                    $club = \player\getclub($clubp->clubid,$dblj);
                    $club->clubname ="[$club->clubname]";
                }else{
                    $club = new \player\club();
                    $club->clubname ="";
                }
                $playercmd = $encode->encode("cmd=getplayerinfo&uid=$cxuid&sid=$sid");
                $playerhtml .="<a href='?cmd=$playercmd'>{$club->clubname}$cxuname</a>";
            }

        }
    }
}


$npchtml='';
$task = \player\getplayerrenwu($sid,$dblj);//玩家任务数组

$sql = "select * from playerrenwu WHERE sid='$sid' AND rwlx = 2";
$cxjg = $dblj->query($sql);
$mrrw = $cxjg->fetchAll(PDO::FETCH_ASSOC);
for ($n=0;$n<count($mrrw);$n++){
    if ($mrrw[$n]['data']!=date('d') ){
        $rwid = $mrrw[$n]['rwid'];
        $sql="delete from playerrenwu WHERE rwid=$rwid AND sid='$sid'";
        $dblj->exec($sql);
    }
}

$sql = "select * from playerrenwu WHERE sid='$sid' AND rwzt!=3";
$cxjg = $dblj->query($sql);
$wtjrw = $cxjg->fetchAll(PDO::FETCH_ASSOC);
$taskcount = count($wtjrw);

if ($clmid->mnpc !=""){
    $sql = "select * from npc where id in ($clmid->mnpc)";//获取npc
    $cxjg = $dblj->query($sql);
    $cxnpcall = $cxjg->fetchAll(PDO::FETCH_ASSOC);

    for ($i=0;$i < count($cxnpcall);$i++){
        $nname = $cxnpcall[$i]['nname'];
        $nid = $cxnpcall[$i]['id'];
        $taskid = $cxnpcall[$i]['taskid'];
        $taskarr = explode(',',$taskid);
        $yrw = false;
        if ($taskid!=''){
            for ($l=0;$l<count($taskarr);$l++){
                $nowrw = \player\gettask($taskarr[$l],$dblj);
                $rwret = \player\getplayerrenwuonce($sid,$taskarr[$l],$dblj);
                $lastrwid = $nowrw->lastrwid;

                if ($nowrw->rwlx == 1 || $nowrw->rwlx == 2){
                    if (!$rwret){
                        if ($nowrw->rwzl != 3){
                            $npchtml .='<img src="images/wen.gif" />';
                        }elseif($nowrw->rwyq == $nid){
                            $npchtml .='<img src="images/wen.gif" />';
                        }else{
                            continue;
                        }
                    }elseif ($rwret->rwzt==2){
                        if ($nowrw->rwzl != 3){
                            $npchtml .='<img src="images/tan.gif" />';
                        }elseif ($nowrw->rwcount == $nid){
                            $npchtml .='<img src="images/tan.gif" />';
                        }else{
                            continue;
                        }

                    }
                }
                if ($nowrw->rwlx == 3){
                    if ($rwret){
                        if ($rwret->rwzt==2){
                            if ($nowrw->rwzl != 3){
                                $npchtml .='<img src="images/tan.gif" />';
                            }elseif ($nowrw->rwcount == $nid){
                                $npchtml .='<img src="images/tan.gif" />';
                            }else{
                                continue;
                            }
                        }
                    }else{
                        if ($lastrwid<=0 ){
                            if ($nowrw->rwzl != 3){
                                $npchtml .='<img src="images/wen.gif" />';
                            }elseif ($nowrw->rwyq == $nid){
                                $npchtml .='<img src="images/wen.gif" />';
                            }else{
                                continue;
                            }
                        }else{
                            $rwret = \player\getplayerrenwuonce($sid,$lastrwid,$dblj);
                            if ($rwret){
                                if ($rwret->rwzt==3){
                                    if ($nowrw->rwzl != 3){
                                        $npchtml .='<img src="images/wen.gif" />';
                                    }elseif ($nowrw->rwyq == $nid){
                                        $npchtml .='<img src="images/wen.gif" />';
                                    }else{
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        $npccmd = $encode->encode("cmd=npc&nid=$nid&sid=$player->sid");
		
        $npchtml .= <<<HTML
      
	<a href="?cmd=$npccmd">{$nname}</a>
HTML;
    }//这个是$npchtml.....任务NPC的问号提示...
}
$texiao = <<<HTML

<IMG width='15' height='15' src='./images/texiao.png'>

HTML;


$sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT 2';//聊天列表获取<!--xiamian下面为公共聊天前称【公共】，我已经取消--!>
$ltcxjg = $dblj->query($sql);
$lthtml='';
if ($ltcxjg){
    $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i < count($ret);$i++){
        $uname = $ret[count($ret) - $i-1]['name'];
        $umsg = $ret[count($ret) - $i-1]['msg'];
        $uid = $ret[count($ret) - $i-1]['uid'];
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        if ($uid){
            $lthtml .="<font color=#F4911A></font><font color=#F80000>$texiao</font><font color=#EE8B14></font><font color=#EB8811></font>
			<a href='?cmd=$ucmd''>$uname</a>:$umsg<br>";
        }else{
            $lthtml .="<font color=#F4911A></font><font color=#F80000>$texiao</font><font color=#EE8B14></font><font color=#EB8811></font>
			<div class='hpys' style='display: inline'>$uname:</div>$umsg<br>";
        }

    }
}
//新的倒计时，配合BOSS攻击计算时间
$second=floor((strtotime($nowdate)-strtotime($clmid->mgtime))%86400);//获取刷新间隔86400
$sj = $clmid->ms - $second ;
$sx = $sj+1;
    if ($sj < 0){
        $sj = 0;
	}
    if ($sj>0 && $bossxl<0){  
$djs =<<<HTML
<html>
<body>
<div align="center">
<span class="STYLE7" id="clock" style="color: #f50e0e;">$sj</span>
<strong><span class="STYLE8">秒后刷新BOSS</span>
<script type="text/javascript">
var oclock=document.getElementById("clock");
var start1 = oclock.innerHTML;
var finish = "0";
var timer = null;
run();
function run() {//定义时间函数，让秒表每100ms变化一次
timer =setInterval("onTimer()", 1000);//100ms的定时器
}
function onTimer()
{
if (start1 == finish)//如果倒计时结束清除时间函数
{
clearInterval(timer);
start1="1";//(清除时间函数后还是会执行一次 所以多给一个10ms再动态赋值)
}
start1 -= 1;//每次执行ms减10
oclock.innerHTML = start1;//重新给oclock赋值
}
</script>
</strong>
<meta http-equiv="refresh" content="$sx">
</div>
</body>
</html>
HTML;
}
	




$mapcmd = $encode->encode("cmd=allmap&sid=$sid");
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$mytask = $encode->encode("cmd=mytask&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$fangshi = $encode->encode("cmd=fangshi&fangshi=daoju&sid=$sid");
$shangdian = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");
$clubcmd = $encode->encode("cmd=club&sid=$sid");
$duihuancmd = $encode->encode("cmd=duihuan&sid=$sid");
$imcmd = $encode->encode("cmd=im&sid=$sid");
$lb = $encode->encode("cmd=getbagyd&sid=$sid");
$qydt = $encode->encode("cmd=qydt&sid=$sid");
$nowhtml = <<<HTML
<font face=隶书 color="ae2d61">
<marquee direction="left" style="background: #ffffff;font-size:30 px">
<font color="#FFA000">【 $clmid->mname 】</font>
<font color="#7FE000">$pvphtml</font>
$clmid->midinfo---->有人看见$clmid->playerinfo
</marquee>
</font>
<!--=====NPC=====<br>-->
$npchtml<br>
<!--=====怪物=====<br>--><hr style="height:3px;border:none;border-top:3px double #efa1a1;" />
$djs
$djshtml
$gwhtml
$bosshtml
<!--<div class="juzhong1">=====方向=====</div>-->
<hr>
$lukouhtml
<!--<div class="juzhong1">===== $clmid->mname =====</div>-->

<hr>
$playerhtml
<br/>
<div id="ltmsg">
<hr>
</div>
$lthtml
<hr>
<div align="center">
<a href="?cmd=$mapcmd">
<strong style="background:#00E000">
<font color=#FCFCFC>[</font><font color=#F9F9F9>查看</font><font color=#F6F6F6>世界</font><font color=#F3F3F3>]</font></strong>
</a>
<a href="?cmd=$mytask">任务($taskcount)</a>
<a href="?cmd=$qydt">地图</a>
<!--<a href="?cmd=$gonowmid">刷新</a>-->
<br/>
<hr style="width:280px; height:0px;border:none;border-top:10px groove #a5eaad;"  />
<a href="?cmd=$ztcmd">状态</a> <a href="?cmd=$getbagcmd" >包裹</a> <a href="?cmd=$goliaotian" >聊天</a> <a href="?cmd=$cwcmd"      style="background-color:#;color:#f59b11;">宠物</a>
<!--<a href="?cmd=$lb" >礼包</a>-->
<br/>
<a href="?cmd=$phcmd" >排行</a> <a href="?cmd=$xiuliancmd" >修炼</a> <a href="?cmd=$fangshi" >交易</a> <a href="?cmd=$clubcmd" >门派</a>
<br/>
<a href="?cmd=$imcmd" >好友</a> <a href="?cmd=$duihuancmd" >兑换</a>
<a href="?cmd=$shangdian">
<!--<IMG width="20" height="15" src="./images/pz.png">-->
<font color=#FB4A0E>铺子</font></a> 
<!--<a href="index.php"><div class="hsds">退出</div></a>-->
<a href="index.php"><div>退出</div></a>
</div>
HTML;
echo $nowhtml;
?>
<!--<font color="#FF2800">铺</font><font color="#FF5000">子</font>--!>
<!--<a href="http://playdreamer.cn/alipay/?id=9&user_id=$player->uid" target="_blank">充值</a>--!>