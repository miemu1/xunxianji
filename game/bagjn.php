<?php
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
$getbagdjcmd = $encode->encode("cmd=getbagdj&sid=$sid");
$getbagypcmd = $encode->encode("cmd=getbagyp&sid=$sid");
$jineng = \player\getplayerjineng_all($sid,$dblj);

$alljn= '';
$suoyin = 0;
if ($jineng){
    foreach ($jineng as $jn){
        $jnsum = $jn['jncount'];
        if ($jnsum > 0){
            $suoyin += 1;
            $jnid = $jn['jnid'];
            $jnname = $jn['jnname'];
            $jncmd = $encode->encode("cmd=jninfo&jnid=$jnid&sid=$sid");
            $alljn .= <<<HTML
            [$suoyin].<a href="?cmd=$jncmd">$jnname x$jnsum</a><br/>
HTML;
        }
    }
}
$getbagydcmd = $encode->encode("cmd=getbagyd&sid=$sid");
$bagyphtml =<<<HTML

[<font size="2"><a href="?cmd=$getbagzbcmd">装备</a>|<a href="?cmd=$getbagdjcmd">道具</a>|<a href="?cmd=$getbagypcmd">药品</a>|技能<a href="?cmd=$getbagydcmd">药丹</a></font>]<br>
<br/>
$alljn
<br/>

<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
        <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
HTML;
echo $bagyphtml;

?>