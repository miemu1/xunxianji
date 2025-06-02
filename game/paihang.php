<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 20 21 /6/15
 * Time: 20:36
 */
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$sql = 'SELECT * FROM game1 ORDER BY ulv DESC,uexp ASC LIMIT 10';//列表获取
$player = player\getplayer($sid,$dblj);
$phcxjg = $dblj->query($sql);
$phhtml='';
$phlshtml='';
$backcmd=$encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
if ($phcxjg){
    $ret = $phcxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i < count($ret);$i++){
        $uname = $ret[$i]['uname'];
        $ulv = $ret[$i]['ulv'];
        $uid = $ret[$i]['uid'];
        $cxsid = $ret[$i]['sid'];
        $clubp = \player\getclubplayer_once($cxsid,$dblj);
        if ($clubp){
            $club = \player\getclub($clubp->clubid,$dblj);
            $club->clubname ="[$club->clubname]";
        }else{
            $club = new \player\club();
            $club->clubname ="";
        }
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
        $xuhao = $i+1;
        $phlshtml .="$xuhao.[$ulv]<a href='?cmd=$ucmd'>{$club->clubname}$uname</a><br/>";
    }
    $phhtml.=<<<HTML
    等级 | 攻击 | 防御 | 击杀 | 魔石 | <hr/>
    $phlshtml
    <br/>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 
HTML;
    echo $phhtml;
}
?>