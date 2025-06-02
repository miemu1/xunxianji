<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/27 0027
 * Time: 11:49
 */
$clublist = '';
$allclub = \player\getclub_all($dblj);
$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

if ($allclub){
    $i = 0;
    foreach ($allclub as $club){
        $i++;
        $clubcmd = $encode->encode("cmd=club&clubid={$club['clubid']}&sid=$sid");
        $clublist .= "[$i]<a href='?cmd=$clubcmd' >{$club['clubname']}</a><br/>";
    }
}

$clubhtml =<<<HTML
<IMG width='280' height='140' src='./images/menpai.png'src="./images/rw.png" style="border-radius: 8px;">
===========门派天榜===========
      <br/>
      $clublist<br/>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 
HTML;



echo $clubhtml;