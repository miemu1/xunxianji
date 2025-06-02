<?php
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$zhuangbei = new \player\zhuangbei();
$zhuangbei = player\getzbkzb($zbid,$dblj);
$tools = array("不限","武器","防具","首饰","书籍","坐骑","令牌","暗器");
$tool = $tools[$zhuangbei->tool];
//种类：$tool<br/>==========<br/>
$html = <<<HTML
装备名称:<font color='$zhuangbei->zbys'>【 $zhuangbei->zbname 】</font><br/>
装备攻击:$zhuangbei->zbgj<br/>
装备防御:$zhuangbei->zbfy<br/>
增加气血:$zhuangbei->zbhp<br/>
装备暴击:$zhuangbei->zbbj%<br/>
装备吸血:$zhuangbei->zbxx%<br/>
==========<br/>
种类：$tool<br/>==========<br/>
装备信息:$zhuangbei->zbinfo<br/>

<br/>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 
HTML;
echo $html;
?>