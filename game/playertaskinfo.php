<?php
$task = \player\getplayerrenwuonce($sid,$rwid,$dblj);
$cs = \player\gettask($rwid,$dblj);
$player = \player\getplayer($sid,$dblj);

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$rwdjarr = explode(',',$task->rwdj);
$rwjlhtml = '任务奖励：<br/>';
$rwhtml='';
if ($task->rwdj!=''){
    for ($i=0;$i<count($rwdjarr);$i++){
        $djarr = explode('|',$rwdjarr[$i]);
        $djid = $djarr[0];
        $djcount = $djarr[1];
        $rwdj = \player\getdaoju($djid,$dblj);
        $djinfo = $encode->encode("cmd=djinfo&djid=$rwdj->djid&sid=$sid");
        $rwjlhtml .="<div class='djys'><a href='?cmd=$djinfo'>$rwdj->djname</a>x$djcount</div>";
    }
}
if ($task->rwzb!=''){
    $sql = "select * from zhuangbei where zbid IN ($task->rwzb)";
    $cxjg = $dblj->query($sql);
    $ret = $cxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i<count($ret);$i++){
        $zbname = $ret[$i]['zbname'];
        $zbid = $ret[$i]['zbid'];
        $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbid&sid=$sid");
        $rwjlhtml.="<div class='zbys'><a href='?cmd=$zbcmd'>$zbname</a></div>";
    }
}
if ($task->rwexp!=''){
    $rwjlhtml.="经验：$task->rwexp<br/>";
}
if ($task->rwyxb!=''){
    $rwjlhtml.="灵石：$task->rwyxb<br/>";
}


//下面想进行一个收费传送搭建
$cs = \player\gettask($rwid,$dblj);//传送地址ID
$upmidlj = $encode->encode("cmd=gomid&newmid=$cs->rwqy&sid=$sid");//传送链接获取
$dt = player\getmid($cs->rwqy,$dblj);
//$xiaohao = round($player->ulv*2);//计算灵石传送消耗
$xiaohao = round($player->ulv*12+500);
if ($player->uyxb>$xiaohao){
                    \player\changeyxb(2,$xiaohao,$sid,$dblj);
                    //\player\changeplayersx('uhp',$player->umaxhp,$sid,$dblj);这里加血
                    $player = \player\getplayer($sid,$dblj);
                    $sfhtml =<<<HTML
					<a href='?cmd=$upmidlj'>传送[{$xiaohao}]</a><br>
HTML;
                }else{
                    $sfhtml ="<font color='#12e271'>【传送关闭】</font>想白嫖?不足:$xiaohao<hr>任务地图：$dt->mname<hr>"
					;	
                }
//2021 12 1 8 写的（抄），就这样吧，毛一角 11710 20 663 嘎嘎嘎



switch ($task->rwzl){
    case 1://收集
        $daoju = \player\getplayerdaoju($sid,$task->rwyq,$dblj);
        $rwyq = \player\getdaoju($cs->rwyq,$dblj);
		//$cs = \player\gettask($rwid,$dblj);传送地址获取,意思是找到SQL 任务中的某条ID， 下面进行该条ID元素上面进行查找关键词
		//$upmidlj = $encode->encode("cmd=gomid&newmid=$cs->rwqy&sid=$sid");//传送链接获取 <a href='?cmd=$upmidlj'>传送</a>
        $rwhtml ="收集$task->rwcount$rwyq->djname<br/>进度：$task->rwnowcount/$task->rwcount";
        break;
    case 2://打怪
        $rwyq = \player\getyguaiwu($task->rwyq,$dblj);
		//$upmidlj = $encode->encode("cmd=gomid&newmid=$cs->rwqy&sid=$sid");
        $rwhtml ="击杀$task->rwcount$rwyq->gname<br/>进度：$task->rwnowcount/$task->rwcount";
        break;
    case 3://对话
        $tjnpc = \player\getnpc($task->rwcount,$dblj);
        
		//$upmidlj = $encode->encode("cmd=gomid&newmid=$cs->rwqy&sid=$sid");//地图
        $rwhtml ="去找$tjnpc->nname";
        break;
}
$taskinfo = <<<HTML

$task->rwname:<br/>
$rwhtml<br/>
$rwjlhtml
$sfhtml<br>
<a href="#" onClick="javascript:history.back(-1);">返回上层</a><br/>
<a href="?cmd=$gonowmid">返回游戏</a>
HTML;
echo $taskinfo;
?>