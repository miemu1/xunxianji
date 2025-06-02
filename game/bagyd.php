

<?php
/*
这里我布置背包,主要是商店功能存放的
*/


$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagjncmd = $encode->encode("cmd=getbagjn&sid=$sid");
$getbagydcmd = $encode->encode("cmd=getbagyd&sid=$sid");
$yaodan = player\getplayeryaodanall($sid,$dblj);

$allyd= '';
$suoyin = 0;
if ($yaodan){
    foreach ($yaodan as $yd){
        $ydsum = $yd['ydsum'];
        if ($ydsum > 0){
            $suoyin += 1;
            $ydid = $yd['ydid'];
            $ydname = $yd['ydname'];
            $ydcmd = $encode->encode("cmd=ydinfo&ydid=$ydid&sid=$sid");
			
			$playeryd = \player\getplayeryaodan($ydid,$sid,$dblj);
			
            $useyd = $encode->encode("cmd=ydinfo&canshu=useyd&ydid=$ydid&sid=$sid");
			
			$yaodan1 = \player\getyaodanonce($ydid,$dblj);//引入颜色文件
			
            $allyd .= <<<HTML
            [$suoyin].<a href="?cmd=$ydcmd"><font color='{$yaodan1->ydys}'>{$ydname}</font>x$ydsum</a><a href="?cmd=$useyd">使用</a>
			<br/>
HTML;
        }
    }
}
        $shangdian = $encode->encode("cmd=shangdian&canshu=gogoumai&sid=$sid");
		$shangdian1 = $encode->encode("cmd=shangdian&canshu1=gogoumai1&sid=$sid");
		$beibaocmd = $encode->encode("cmd=getbagyd&sid=$sid");
		$getbagydcmd = $encode->encode("cmd=getbagyd&sid=$sid");

$bagydhtml =<<<HTML
 <IMG width='280' height='140' src='./images/miji.png'src="./images/rw.png" style="border-radius: 8px;">
<!--【<a href="?cmd=$getbagzbcmd">装备</a>|<a href="?cmd=$getbagdjcmd">道具</a>|药品|<a href="?cmd=$getbagjncmd">符箓</a>】<br/>-->
[<a href="?cmd=$shangdian">灵石丹药</a></a><a href="?cmd=$shangdian1"><font color="#9c27b0">魔石丹药</font></a>
			<a href="?cmd=$beibaocmd">药房</a>]<br/>
<br/>
$allyd
<br/>

<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
HTML;
echo $bagydhtml;

?>