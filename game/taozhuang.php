<?php

//测试套装
$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");

$zb1 = player\getzb($player->tool1,$dblj);
$zb2 = player\getzb($player->tool2,$dblj);
$zb3 = player\getzb($player->tool3,$dblj);
$zb4 = player\getzb($player->tool4,$dblj);
$zb5 = player\getzb($player->tool5,$dblj);
$zb6 = player\getzb($player->tool6,$dblj);
$zb7 = player\getzb($player->tool7,$dblj);

$zhuangbei1 = $zb1->taozhuang;
$zhuangbei2 = $zb2->taozhuang;
$zhuangbei3 = $zb3->taozhuang ;
$zhuangbei4 = $zb4->taozhuang ;
$zhuangbei5 = $zb5->taozhuang ;
$zhuangbei6 = $zb6->taozhuang ;
$zhuangbei7 = $zb7->taozhuang ;

$zbmz1 = $zb1->zbname;
$zbmz2 = $zb2->zbname;
$zbmz3 = $zb3->zbname ;
$zbmz4 = $zb4->zbname ;
$zbmz5 = $zb5->zbname ;
$zbmz6 = $zb6->zbname ;
$zbmz7 = $zb7->zbname ;

if($zbmz1==''){
	$zbmz1 = "武器为空！" ;
}
if($zbmz2==''){
	$zbmz2 = "防具为空！" ;
}
if($zbmz3==''){
	$zbmz3 = "首饰为空！" ;
}
if($zbmz4==''){
	$zbmz4 = "书籍为空！" ;
}
if($zbmz5==''){
	$zbmz5 = "坐骑为空！" ;
}
if($zbmz6==''){
	$zbmz6 = "令牌为空！" ;
}
if($zbmz7==''){
	$zbmz7 = "暗器为空！" ;
}








// if($zhuangbei1==$zhuangbei2){$taozhuang=1;
// }else{
// if($zhuangbei1==$zhuangbei3){$taozhuang=1;
// }else{
// if($zhuangbei1==$zhuangbei4){$taozhuang=1;
// }else{
// if($zhuangbei1==$zhuangbei5){$taozhuang=1;
// }else{
// if($zhuangbei1==$zhuangbei6){$taozhuang=1;
// }else{
// if($zhuangbei1==$zhuangbei7){$taozhuang=1;
// }else{
// if($zhuangbei2==$zhuangbei3){$taozhuang=1;
// }else{
// if($zhuangbei2==$zhuangbei4){$taozhuang=1;
// }else{
// if($zhuangbei2==$zhuangbei5){$taozhuang=1;
// }else{
// if($zhuangbei2==$zhuangbei6){$taozhuang=1;
// }else{
// if($zhuangbei2==$zhuangbei7){$taozhuang=1;
// }else{
// if($zhuangbei3==$zhuangbei4){$taozhuang=1;
// }else{
// if($zhuangbei3==$zhuangbei5){$taozhuang=1;
// }else{
// if($zhuangbei3==$zhuangbei6){$taozhuang=1;
// }else{
// if($zhuangbei3==$zhuangbei7){$taozhuang=1;
// }else{
// if($zhuangbei4==$zhuangbei5){$taozhuang=1;
// }else{
// if($zhuangbei4==$zhuangbei6){$taozhuang=1;
// }else{
// if($zhuangbei4==$zhuangbei7){$taozhuang=1;
// }else{
// if($zhuangbei5==$zhuangbei6){$taozhuang=1;
// }else{
// if($zhuangbei5==$zhuangbei7){$taozhuang=1;
// }else{
// if($zhuangbei6==$zhuangbei7){$taozhuang=1;
// }}}}}}}}}}}}}}}}}}}}}


// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei5){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei3&&$zhuangbei2==$zhuangbei4){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei3&&$zhuangbei2==$zhuangbei5){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei3&&$zhuangbei2==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei3&&$zhuangbei2==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei4&&$zhuangbei2==$zhuangbei5){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei4&&$zhuangbei2==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei4&&$zhuangbei2==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei5&&$zhuangbei2==$zhuangbei7){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei5&&$zhuangbei2==$zhuangbei6){$taozhuang=2;
// }else{
// if($zhuangbei2==$zhuangbei6&&$zhuangbei2==$zhuangbei7){$taozhuang=2;
// }
// }}}}}}}}}}}}}}}}}}}}}}}}



// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }else{
// if($zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=3;
// }}}}}}}}}}}}}}}}}}}}


// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5){$taozhuang=4;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6){$taozhuang=4;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }}}


// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=4;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }}

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=4;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }}

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=4;
// }


// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6){$taozhuang=5;
// }else{
// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei7){$taozhuang=5;
// }}


// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=5;
// }else{

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=5;
// }else{

// if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=5;
// }else{

// if($zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==$zhuangbei7){$taozhuang=5;
// }}}}

$czb1 = $zb1->taozhuang;
$czb2 = $zb2->taozhuang;
$czb3 = $zb3->taozhuang ;
$czb4 = $zb4->taozhuang ;
$czb5 = $zb5->taozhuang ;
$czb6 = $zb6->taozhuang ;
$czb7 = $zb7->taozhuang ;

if($czb1*$czb2*$czb3*$czb4*$czb5*$czb6*$czb7 != 0){
        if($zhuangbei1==$zhuangbei2&&$zhuangbei1==$zhuangbei3&&$zhuangbei1==$zhuangbei4&&$zhuangbei1==$zhuangbei5&&$zhuangbei1==$zhuangbei6&&$zhuangbei1==     $zhuangbei7){$taozhuang="当前神装正在筹划阶段，能看见这段话，你根本就不是普通玩家！！！";
        }else{
        $taozhuang="激活提示：需要穿戴色彩和款式相同的装备才可激活，当前装备未达到开启条件！<br><br>";
         }
}else{
	$taozhuang = "五颜六色的装备无法进行激活,需要穿戴色彩和款式一样的！<br><br>" ;
}

$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
$cwinfo = $encode->encode("cmd=chongwu&cwid=$player->cw&canshu=cwinfo&sid=$sid");
$gm =  $encode->encode("cmd=czbgm&canshu2=gaiming2&sid=$sid");
$sz =  $encode->encode("cmd=taozhuang&sid=$sid");
//测试套装

$tzhtml =<<<HTML
<a href="?cmd=$ztcmd">角色</a><a href="?cmd=$cwinfo"><font color="#9c27b0">宠物</font></a><a href="?cmd=$sz">神装</a><a href="?cmd=$gm">改名</a>
<hr>
装备情况：<br>
<font style="color: $zb1->zbys;">$zbmz1</font> 款式：$zhuangbei1<br>
<font style="color: $zb2->zbys;">$zbmz2</font> 款式：$zhuangbei2<br>
<font style="color: $zb3->zbys;">$zbmz3</font> 款式：$zhuangbei3<br>
<font style="color: $zb4->zbys;">$zbmz4</font> 款式：$zhuangbei4<br>
<font style="color: $zb5->zbys;">$zbmz5</font> 款式：$zhuangbei5<br>
<font style="color: $zb6->zbys;">$zbmz6</font> 款式：$zhuangbei6<br>
<font style="color: $zb7->zbys;">$zbmz7</font> 款式：$zhuangbei7<br><br>
$taozhuang
<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
<a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $tzhtml;

?>