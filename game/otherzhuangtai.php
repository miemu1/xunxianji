<?php
$player = player\getplayer($sid,$dblj);
$player1 = player\getplayer1($uid,$dblj);
$immenu='';

$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$pkcmd = $encode->encode("cmd=pvp&uid=$uid&sid=$sid");
$clubplayer = \player\getclubplayer_once($player1->sid,$dblj);
if (isset($canshu)){
    if ($canshu == "addim"){
        \player\addim($uid,$sid,$dblj);
    }
}

if ($clubplayer){
    $club = \player\getclub($clubplayer->clubid,$dblj);
    $clubcmd = $encode->encode("cmd=club&clubid=$club->clubid&sid=$sid");
    $clubname ="<a href='?cmd=$clubcmd'>$club->clubname</a>";
}else{
    $clubname = "无门无派";
}
if ($player->sid != $player1->sid){
    $immenu = "<a href='?cmd=$pkcmd' style='color:#ff0000'>攻击</a>";
    $ret = \player\isim($uid,$sid,$dblj);
    if (!$ret){
        $addim=  $encode->encode("cmd=getplayerinfo&canshu=addim&uid=$uid&sid=$sid");
        $immenu.="<a href='?cmd=$addim' style='
    color: #009688;'>结交</a><hr>";
    }else{
        $chat=  $encode->encode("cmd=getplayerinfo&canshu=addim&uid=$uid&sid=$sid");
        $deim=  $encode->encode("cmd=im&canshu=deim&uid=$uid&sid=$sid");
        $immenu.=<<<HTML
        </a><a href='?cmd=$deim'>删除好友</a>
<form>
<input type="hidden" name="cmd" value="sendliaotian">
<input type="hidden" name="ltlx" value="im">
<input type="hidden" name="sid" value="$sid">
<input type="hidden" name="imuid" value="$uid">
<input name="ltmsg">
<input type="submit" value="发送私聊">
</form>

HTML;
    }
    $immenu .= "<br/>";
}

$tool1 = '';
$tool2 = '';
$tool3 = '';
$tool4 = '';
$tool5 = '';
$tool6 = '';
$tool7 = '';

if ($player1->tool1!=0){
    $zhuangbei = player\getzb($player1->tool1,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool1&uid=$player1->uid&sid=$sid");
	
$tool1 = "武器:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";//两个点的括号内上色不用'.#FFF.'直接'#FF'

}
if ($player1->tool2!=0){
    $zhuangbei = player\getzb($player1->tool2,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool2&uid=$player1->uid&sid=$sid");
    $tool2 = "防具:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";
}
if ($player1->tool3!=0){
    $zhuangbei = player\getzb($player1->tool3,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool3&uid=$player1->uid&sid=$sid");
    $tool3 = "首饰:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";
}
if ($player1->tool4!=0){
    $zhuangbei = player\getzb($player1->tool4,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool4&uid=$player1->uid&sid=$sid");
    $tool4 = "书籍:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";
}
if ($player1->tool5!=0){
    $zhuangbei = player\getzb($player1->tool5,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool5&uid=$player1->uid&sid=$sid");
    $tool5 = "坐骑:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";;
}
if ($player1->tool6!=0){
    $zhuangbei = player\getzb($player1->tool6,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool6&uid=$player1->uid&sid=$sid");
    $tool6 = "令牌:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";;
}
if ($player1->tool7!=0){
    $zhuangbei = player\getzb($player1->tool7,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $zbcmd = $encode->encode("cmd=chakanzb&zbnowid=$player1->tool7&uid=$player1->uid&sid=$sid");
    $tool7 = "暗器:<a href='?cmd=$zbcmd'><font color='$zhuangbei->zbys'>{$zhuangbei->zbname}</font>{$qhs}</a><br/>";;
}
//引入武功，顺手牵羊
$wgid = $player->wugong;
$cxwg = \player\wgcx($wgid,$sid,$dblj);
$wglx = $cxwg->wglx;
$wgys = $cxwg->wgys;
if ($player->wugong!=0&&$wglx==0){
	$tishi = "<a href='?cmd=$gonowmid' style='color:$wgys'>$cxwg->wgname</a>";
}

$ztcmd = $encode->encode("cmd=otherzhuangtai&sid=$sid");//个人信息
$cwinfo = $encode->encode("cmd=chongwu&cwid=$player1->cw&canshu=cwinfo&sid=$sid");//宠物链接
$html = <<<HTML
【<a>个人信息</a><a href="?cmd=$cwinfo"><font color="#e28e0c">宠物信息</font></a>】<br/>
昵称:$player1->uname<br/>
门派:$clubname<br/>
境界:$player1->jingjie$player1->cengci<br/>
等级:$player1->ulv<br/>
修为:$player1->uexp/$player1->umaxexp<br/>
灵石:$player1->uyxb$tishi<br/>
魔石:$player1->uczb<br/>
气血:$player1->uhp/$player1->umaxhp<br/>
攻击:$player1->ugj<br/>
防御:$player1->ufy<br/>
暴击:$player1->ubj<br/>
吸血:$player1->uxx<br/>
<hr>
$tool1
$tool2
$tool3
$tool4
$tool5
$tool6
$tool7
<hr>
$immenu
<a href="#" onClick="javascript:history.back(-1);" style=" background-color: #ecf7ed;">返回上层</a><!--居左-float:left;-->
<a href="game.php?cmd=$gonowmid" style="float:right;background-color:#ecf7ed;" >返回游戏</a>
HTML;
echo $html;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/ 12/01
 * Time: 18:10
 */?>