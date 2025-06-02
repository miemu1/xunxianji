<?php
$boss = \player\getboss($bossid,$dblj);
$pvb = $encode->encode("cmd=pvb&bossid=$bossid&sid=$sid");

if($boss->bosshp>0){
        $dlhtml = '';
        $zbhtml = '';
        $djhtml = '';
        $yphtml = '';
        if ($boss->bosszb!=''){
            $zbarr = explode(',',$boss->bosszb);
            foreach($zbarr as $newstr){
                $zbkzb = \player\getzbkzb($newstr,$dblj);
				//$zhuangbei = new \player\zhuangbei();
                $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbkzb->zbid&sid=$sid");
                $zbhtml .= "<a href='?cmd=$zbcmd'><font color='{$zbkzb->zbys}'>$zbkzb->zbname</font></a>";
            }
            $dlhtml .=$zbhtml;
        }
        if ($boss->bossdj!=''){
            $djarr = explode(',',$boss->bossdj);
            foreach($djarr as $newstr){
                $dj = \player\getdaoju($newstr,$dblj);
                $djinfo = $encode->encode("cmd=djinfo&djid=$dj->djid&sid=$sid");
                $djhtml .= "<font class='djys'><a href='?cmd=$djinfo'>$dj->djname</a></font>";
            }
            $dlhtml .=$djhtml;
        }
        if ($boss->bossyp!=''){
            $yparr = explode(',',$boss->bossyp);
            foreach($yparr as $newstr){
                $yp = \player\getyaopinonce($newstr,$dblj);
                $ypinfo = $encode->encode("cmd=ypinfo&ypid=$yp->ypid&sid=$sid");

                $yphtml .= "<font class='ypys'><a href='?cmd=$ypinfo'>$yp->ypname</a></font>";
            }
            $dlhtml .=$yphtml;
        }

}else{
        $html = <<<HTML
        怪物已经被其他人攻击了！<br/>
        请少侠练习一下手速哦
        <br/>
        <a href="?cmd=$backcmd">返回游戏</a>
HTML;
}
$bossinfohtml = <<<HTML
[$boss->bossname]攻击:{$boss->bossgj}防御:$boss->bossfy<hr>
$boss->bossinfo<hr>
<div style="border: #dcd4a1; border-style: dashed; border-top-width: 1px;
border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px">$dlhtml</div><hr>
<br/>
<!--<IMG width="25" height="15" src="./images/pk.png">-->
<a href="?cmd=$pvb" style="color: #ec0808;">富贵在天！</a>
<!--<IMG width="25" height="15" src="./images/pk.png">-->
<!--<IMG width="25" height="15" src="./images/ct.png">-->
<a style="float:right;" onClick="javascript :history.back(-1);">打扰了...<IMG width="15" height="15" src="./images/ct.png"></a>
<br/>
HTML;
echo $bossinfohtml;

?>