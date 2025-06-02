<?php
$player = \player\getplayer($sid,$dblj);
$_SERVER['PHP_SELF'];
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
if ($ltlx == "all"){
    $sql = 'SELECT * FROM ggliaotian ORDER BY id DESC LIMIT 10';//聊天列表获取10
    $ltcxjg = $dblj->query($sql);
    $lthtml='';

    if ($ltcxjg){
        $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
        $goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
        $imliaotian = $encode->encode("cmd=liaotian&ltlx=im&sid=$sid");
        $lthtml = "【公共|<a href='?cmd=$imliaotian'>私聊</a>】<div style='border: #dcd4a1; border-style: dashed; border-top-width: 1px;
border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px'>";
        for ($i=0;$i < count($ret);$i++){
            $uname = $ret[count($ret) - $i-1]['name'];
            $umsg = $ret[count($ret) - $i-1]['msg'];
            $uid = $ret[count($ret) - $i-1]['uid'];
            $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
            if ($uid){
                $lthtml .="<font color=#F4911A></font><font color=#F18E17></font><font color=#EE8B14></font><font color=#EB8811></font><a href='?cmd=$ucmd'>$uname</a>：$umsg<br/>";//修改公共聊天前【公共】
            }else{
                $lthtml .="<font color=#F4911A></font><font color=#F18E17></font><font color=#EE8B14></font><font color=#EB8811></font><div class='hpys' style='display: inline'>$uname</div>：$umsg<br/>";
            }

        }
        $lthtml.=<<<HTML
</div>
<form>
<input type="hidden" name="cmd" value="sendliaotian">
<input type="hidden" name="ltlx" value="all">
<input type="hidden" name="sid" value="$sid">
<!--<input type="text" name="ltmsg">-->
<input type="text" name="ltmsg" maxlength="50">
<input type="submit" value="发送"><font size="2" ><a href='?cmd=$goliaotian' style="    padding: 0px 2px;">刷新</a></font>

</form>
HTML;
    }
}
if ($ltlx == 'im'){

    $sql = "SELECT * FROM imliaotian WHERE uid= {$player->uid} or imuid = {$player->uid} ORDER BY id DESC LIMIT 10";//聊天列表获取10
    $ltcxjg = $dblj->query($sql);
    
    $lthtml='';

    if ($ltcxjg){
        $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
        $goliaotian = $encode->encode("cmd=liaotian&ltlx=all&sid=$sid");
        $imliaotian = $encode->encode("cmd=liaotian&ltlx=im&sid=$sid");
        $lthtml = "【<a href='?cmd=$goliaotian'>公共</a>|私聊】<br/>";
        for ($i=0;$i < count($ret);$i++){
            $uname = $ret[count($ret) - $i-1]['name'];
            $umsg = $ret[count($ret) - $i-1]['msg'];
            $uid = $ret[count($ret) - $i-1]['uid'];
            $imuid = $ret[count($ret) - $i-1]['imuid'];
            $uplayer = \player\getplayer1($imuid,$dblj);
            $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$player->sid");
            $imucmd = $encode->encode("cmd=getplayerinfo&uid=$imuid&sid=$player->sid");
            if ($uid){
                $lthtml .="[私聊]<a href='?cmd=$ucmd'>$uname</a>-->><a href='?cmd=$imucmd'>$uplayer->uname</a>:$umsg<br/>";
            }
        }
    }
}

$html = <<<HTML
$lthtml
<br/>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 
HTML;
echo $html;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/6/13
 * Time: 21:49
 */?>