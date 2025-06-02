<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2021 /6/26
 * Time: 15:57
 */
$yphp = '';
$ypgj = '';
$ypfy = '';
$ypbj = '';
$ypxx = '';
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$yaopin = \player\getyaopinonce($ypid,$dblj);
$playeryp = \player\getplayeryaopin($ypid,$sid,$dblj);
$setyp = '';
$tishi='';
if (isset($canshu)){
    switch ($canshu){
        case 'setyp1':
            \player\changeplayersx('yp1',$ypid,$sid,$dblj);
            $tishi = "设置药品1成功<br/>";
            break;
        case 'setyp2':
            \player\changeplayersx('yp2',$ypid,$sid,$dblj);
            $tishi = "设置药品2成功<br/>";
            break;
        case 'setyp3':
            \player\changeplayersx('yp3',$ypid,$sid,$dblj);
            $tishi = "设置药品3成功<br/>";
            break;
        case 'useyp':
            $userypret = \player\useyaopin($ypid,1,$sid,$dblj);
            if ($userypret){
                $tishi = "使用成功<br/>";
            }else{
                $tishi = "使用失败<br/>";
            }
            break;
    }
}
if ($playeryp){
    $setyp1 = $encode->encode("cmd=ypinfo&canshu=setyp1&ypid=$ypid&sid=$sid");
    $setyp2 = $encode->encode("cmd=ypinfo&canshu=setyp2&ypid=$ypid&sid=$sid");
    $setyp3 = $encode->encode("cmd=ypinfo&canshu=setyp3&ypid=$ypid&sid=$sid");
    $useyp = $encode->encode("cmd=ypinfo&canshu=useyp&ypid=$ypid&sid=$sid");
    $setyp = <<<HTML
    <br/><font size="2">药品位置：
    <a href="?cmd=$setyp1">位置1</a>
    <a href="?cmd=$setyp2">位置2</a>
    <a href="?cmd=$setyp3">位置3</a>
	</font><hr>
    <a href="?cmd=$useyp">使用药品</a><hr>
HTML;
}
if($yaopin->yphp!=0){
    $yphp = "恢复气血：".$yaopin->yphp."<br/>";
}
if ($yaopin->ypgj!=0){
    $ypgj = "攻击".$yaopin->ypgj."<br/>";
}
if ($yaopin->ypfy!=0){
    $ypfy = "防御".$yaopin->ypfy."<br/>";
}
if ($yaopin->ypbj!=0){
    $ypbj = "暴击".$yaopin->ypbj."<br/>";
}
if ($yaopin->ypxx!=0){
    $ypxx = "吸血".$yaopin->ypxx."<br/>";
}
$ypsx = "<br/>".$yphp.$ypgj.$ypfy.$ypbj.$ypxx;
$ypinfo = <<<HTML
<IMG width='280' height='140' src='./images/yaopin.png'src="./images/rw.png" style="border-radius: 8px;">

[{$yaopin->ypname}]$tishi
$ypsx
$setyp
<br/>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 
HTML;
echo $ypinfo;