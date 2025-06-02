<?php
$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$tfxy =  $encode->encode("cmd=tianfu&canshuxy=xy&sid=$sid");
$tfsb =  $encode->encode("cmd=tianfu&canshusb=xy&sid=$sid");
$tffy =  $encode->encode("cmd=tianfu&canshufy=xy&sid=$sid");
$tfhp =  $encode->encode("cmd=tianfu&canshuhp=xy&sid=$sid");
$tfbj =  $encode->encode("cmd=tianfu&canshubj=xy&sid=$sid");
$tfxx =  $encode->encode("cmd=tianfu&canshuxx=xy&sid=$sid");
$tfgj =  $encode->encode("cmd=tianfu&canshugj=xy&sid=$sid");
$ntgm =  $encode->encode("cmd=tianfu&nt=xy&sid=$sid");//逆天改命
$wbts =  $encode->encode("cmd=tianfu&wbts1=xy&sid=$sid");//文本提示

//小于30级无法进入
$jzjr = <<<HTML
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
            if ($player->ulv<30){
				echo "<hr>等级小于30，容易走火入魔！<hr>$jzjr";
			}
			//这里显示无法中断，不理了，反正能看见这段的都是不正常玩家

$tswb = <<<HTML
  <div class="inner">
  <p>幸运：掉落宝物概率*1;闪避：躲避能力*2;狂暴：暴击概率*1.5;力量：攻击力*5;韧性：防御*5;体魄：血量*50;逆天改命：重置天赋,需要一定幸运，当前不收费，无限制。
  </p>
  </div>
HTML;
//文本提示
if (isset($wbts1)){
    switch ($wbts1){
        case "xy":
            if ($player->uczb>0){
                $ts= $tswb;
				    $sx = $player->uczb;
				    $sql = "update game1 set uczb = $sx - '1' WHERE sid='$sid'";//玩家属性--减少魔石-1
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>没钱我就不告诉你！<hr>";
			 }
	}
}

//逆天改命
if (isset($nt)){
    switch ($nt){
        case "xy":
		$sjs = mt_rand(1,30-$player->tfxy);
            if ($player->ulv !=0 && $sjs <10){
				$ts = "<hr>逆天改命成功！天赋重置.<hr>";
				
				     $sx = $player->ulv*5;
				     $sql = "update game1 set tf = '$sx' WHERE sid='$sid'";//改变玩家属性---初始化天赋
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfbj =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfgj =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfhp =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfxy =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tffy =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfsb =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 $sql = "update game1 set tfxx =  '0' WHERE sid='$sid'";//天赋初始化
                     $ret = $dblj->exec($sql);
					 
                }
			 else{
				$ts = "<hr>天命难违，逆天失算！或许你差些幸运.<hr>";
			 }
	}
}

if (isset($canshuxy)){
    switch ($canshuxy){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfxy;
				    $sql = "update game1 set tfxy = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshusb)){
    switch ($canshusb){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfsb;
				    $sql = "update game1 set tfsb = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshugj)){
    switch ($canshugj){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfgj;
				    $sql = "update game1 set tfgj = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshufy)){
    switch ($canshufy){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tffy;
				    $sql = "update game1 set tffy = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshubj)){
    switch ($canshubj){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfbj;
				    $sql = "update game1 set tfbj = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshuhp)){
    switch ($canshuhp){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfhp;
				    $sql = "update game1 set tfhp = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
if (isset($canshuxx)){
    switch ($canshuxx){
        case "xy":
            if ($player->tf>0){
                $ts= "<hr>提升成功<hr>";
				    $sx = $player->tfxx;
				    $sql = "update game1 set tfxx = $sx + '1' WHERE sid='$sid'";//增加玩家属性
                    $ret = $dblj->exec($sql);
					$sql = "update game1 set tf = $player->tf - '1' WHERE sid='$sid'";//天赋总减
                    $ret = $dblj->exec($sql);
                }
			 else{
				$ts = "<hr>天赋值不足，提升失败！<hr>";
			 }
	}
}
$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
$cwinfo = $encode->encode("cmd=chongwu&cwid=$player->cw&canshu=cwinfo&sid=$sid");
$cwid = $cw['cwid'];
$gm =  $encode->encode("cmd=czbgm&canshu2=gaiming2&sid=$sid");
$player = player\getplayer($sid,$dblj);
$html = <<<HTML
<link rel="stylesheet" href="./chajian/tishiwenben/css/style.css">
<a href="?cmd=$ztcmd">个人信息</a><a href="?cmd=$cwinfo"><font color="#9c27b0">宠物信息</font></a><a href="?cmd=$gm">改名</a><br><br>
天赋剩余:$player->tf<br>
气血:$player->uhp/$player->umaxhp<br/>
攻击:$player->ugj<br/>
防御:$player->ufy<br/>
暴击:$player->ubj<br/>
吸血:$player->uxx<br/>
幸运:$player->tfxy<br>
闪避:$player->tfsb<br>
$ts
<a href="?cmd=$tfxy">提升幸运</a><a href="?cmd=$tfsb">提升闪避</a><a href="?cmd=$tfxx">提升恢复</a><br>
<a href="?cmd=$tfgj">提升力量</a><a href="?cmd=$tfbj">提升狂暴</a><a href="?cmd=$tfhp">提升体魄</a><br>
<a href="?cmd=$tffy">提升韧性</a><a href="?cmd=$ntgm"><font color=#FB4A0E>逆天改命</font></a><a href="?cmd=$wbts">提示文本</a>
<br>
<hr>
<br/>
<a href="#" onClick="javascript:history.back(-1);" >返回上层</a><!--居左-float:left;-->
<a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $html;
?>