<?php
$tssb = <<<HTML
<link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<body>
    <font id="error"></font>
<script type="text/javascript">
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("error").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("error").dispatchEvent(e);
		}
	}, 500);
</script>
<script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
<script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<script type="text/javascript">	   
$('#error').click(function(){
   popup({type:'error',msg:"等级不足",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;

$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$getbagzbcmd = $encode->encode("cmd=getbagzb&sid=$sid");
//$clubplayer = \player\getclubplayer_once($sid,$dblj);
//if ($clubplayer){
//    $club = \player\getclub($clubplayer->clubid,$dblj);
//    $clubcmd = $encode->encode("cmd=club&sid=$sid");
//    $clubname ="<a href='?cmd=$clubcmd'>$club->clubname</a>";
//}else{
//    $clubname = "无门无派";
//}
if ($cmd == 'xxzb'){
    if (isset($zbwz)){
        $sql = "update game1 set tool$zbwz = 0 WHERE sid = '$sid'";
        $dblj->exec($sql);
        $player = player\getplayer($sid,$dblj);
    }
}
if ($cmd == 'setzbwz'){
    $arr = array($player->tool1,$player->tool2,$player->tool3,$player->tool4,$player->tool5,$player->tool6,$player->tool7);


    if (isset($zbnowid) && isset($zbwz)){
        if (!in_array($zbnowid,$arr)){
            $nowzb = \player\getzb($zbnowid,$dblj);
            if ($nowzb->uid != $player->uid){
                echo "你没有该装备，无法装备<br/>";

            }elseif($nowzb->zblv - $player->ulv > 5){
                echo "装备大于玩家等级，无法装备<br/>$tssb";
            }elseif($nowzb->tool!=$zbwz && $nowzb->tool){
                echo "装备种类不符合,无法装备<br/>";
            }else{
                $sql = "update game1 set tool{$zbwz} = $zbnowid WHERE sid = '$sid'";
                $dblj->exec($sql);
                $player = player\getplayer($sid,$dblj);
            }

        }
    }
}

$tool1 = '';
$tool2 = '';
$tool3 = '';
$tool4 = '';
$tool5 = '';
$tool6 = '';
$tool7 = '';


if ($player->tool1!=0){
    $zhuangbei = player\getzb($player->tool1,$dblj);
	
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb1 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=1&sid=$sid").'">卸下</a>';
	
$tool1 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool1&uid=$player->uid&sid=$sid").'">
<font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb1;
}
if ($player->tool2!=0){
    $zhuangbei = player\getzb($player->tool2,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb2 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=2&sid=$sid").'">卸下</a>';
    $tool2 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool2&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb2;
}
if ($player->tool3!=0){
    $zhuangbei = player\getzb($player->tool3,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb3 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=3&sid=$sid").'">卸下</a>';
    $tool3 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool3&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb3;
}
if ($player->tool4!=0){
    $zhuangbei = player\getzb($player->tool4,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb4 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=4&sid=$sid").'">卸下</a>';
    $tool4 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool4&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb4;
}
if ($player->tool5!=0){
    $zhuangbei = player\getzb($player->tool5,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb5 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=5&sid=$sid").'">卸下</a>';
    $tool5 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool5&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb5;
}
if ($player->tool6!=0){
    $zhuangbei = player\getzb($player->tool6,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb6 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=6&sid=$sid").'">卸下</a>';
    $tool6 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool6&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb6;

}




if ($player->tool7!=0){
    $zhuangbei = player\getzb($player->tool7,$dblj);
    $qhs = '';
    if ($zhuangbei->qianghua>0){
        $qhs = '+'.$zhuangbei->qianghua;
    }
    $xxzb7 = '<a href="?cmd='.$encode->encode("cmd=xxzb&zbwz=7&sid=$sid").'">卸下</a>';
    $tool7 = '<a href="?cmd='.$encode->encode("cmd=chakanzb&zbnowid=$player->tool7&uid=$player->uid&sid=$sid").'"><font color='.$zhuangbei->zbys.'>'.$zhuangbei->zbname.'</font>'.$qhs.'</a>'.$xxzb7;
}


if (isset($tswb)){
    switch ($tswb){
        case "xy":
            if ($player->ulv>0){ 
$wenben = <<<HTML
             <link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		     <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<body>
<font id="tip"></font>
<script type="text/javascript">
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("tip").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("tip").dispatchEvent(e);
		}
	}, 500);
</script>
<script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
<script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<script type="text/javascript">	   
$('#success').click(function(){
   popup({type:'success',msg:"成功",delay:2000,callBack:function(){
	  console.log('callBack~~~');
   }});
})
$('#error').click(function(){
   popup({type:'error',msg:"操作失败",delay:2000,bg:true,clickDomCancel:true});
})
$('#tip').click(function(){
   popup({type:'tip',msg:"<font color='#ff0000'>战士：【攻,暴】<br>侠士：【防,吸】<br>隐士：【血,运】</font>",delay:100000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;
}}}


$tssb = <<<HTML
<link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<body>
    <font id="error"></font>
<script type="text/javascript">
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("error").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("error").dispatchEvent(e);
		}
	}, 500);
</script>
<script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
<script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
<script type="text/javascript">	   
$('#error').click(function(){
   popup({type:'error',msg:"等级不足",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;
if (isset($jzjr)){
    switch ($jzjr){
        case "xy":
            if ($player->ulv<30){
			  $ts =  "等级小于30,容易走火入魔！无法修炼$tssb <hr>";
                break;}
			 else{
				echo "<hr>修为暂未达到该境界！<hr>";
			 break;}
	}
}
if($player->ulv>=30){
	$tianfu =  $encode->encode("cmd=tianfu&sid=$sid");
}
else{
	$tianfu =  $encode->encode("cmd=zhuangtai&jzjr=xy&sid=$sid");	
}
$player = player\getplayer($sid,$dblj);
$shenfen = array('战士','战士', '侠士', '隐士');
$sf = $shenfen[$player->shenfen];
//$tianfu =  $encode->encode("cmd=tianfu&sid=$sid");
$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
$cwinfo = $encode->encode("cmd=chongwu&cwid=$player->cw&canshu=cwinfo&sid=$sid");
$cwid = $cw['cwid'];
$gm =  $encode->encode("cmd=czbgm&canshu2=gaiming2&sid=$sid");
$xiuliancmd = $encode->encode("cmd=goxiulian&sid=$sid");
$wbts =  $encode->encode("cmd=zhuangtai&tswb=xy&sid=$sid");
$sz =  $encode->encode("cmd=taozhuang&sid=$sid");
$html = <<<HTML

<a href="?cmd=$ztcmd">角色</a><a href="?cmd=$cwinfo"><font color="#9c27b0">宠物</font></a><a href="?cmd=$sz">神装</a><a href="?cmd=$gm">改名</a><br/>
<IMG width="50" height="50" src="./images/$player->usex.png"><BR>
昵称:$player->uname<br/>
身份:$sf <a href="?cmd=$wbts" style="border-radius: 15px;margin-top: 0px;">!</a>$wenben<br>
境界:$player->jingjie$player->cengci<br/>
等级:$player->ulv<br/>
VIP:<IMG width="25" height="15" src="./images/vip$player->vip.png"><br/>
魔石:<font color="#ff0000" size="3.5">$player->uczb</font><br/>
灵石:$player->uyxb<br/>

修为:$player->uexp/$player->umaxexp<br/>
气血:$player->uhp/$player->umaxhp<br/>
攻击:$player->ugj<br>
<!--套装加成:{$gj}00%<br/>-->
防御:$player->ufy<br/>
暴击:$player->ubj<br/>
吸血:$player->uxx<br/>
天赋:$player->tf<br>
幸运:$player->tfxy<br>
闪避:$player->tfsb<br>
<hr>

<IMG width="25" height="15" src="./images/wq.png">武器:<FONT color="#ff7888" size="3.5&sid">$tool1</FONT><br/>
<IMG width="25" height="15" src="./images/fj.png">防具:$tool2<br/>
<IMG width="25" height="15" src="./images/ss.png">首饰:$tool3<br/>
<IMG width="25" height="15" src="./images/sj.png">书籍:$tool4<br/>
<IMG width="25" height="15" src="./images/zq.png">坐骑:$tool5<br/>
<IMG width="25" height="15" src="./images/lp.png">令牌:$tool6<br/>
<IMG width="25" height="15" src="./images/aq.png">暗器:$tool7<br/>
<hr>

<!--<font color="#ff7888" size="3.5">上色代码</font>--!>
$ts
<a href="?cmd=$getbagzbcmd">背包装备</a><a href="?cmd=$tianfu">天赋训炼</a><a href="?cmd=$xiuliancmd">挂机修炼</a>
<br/><br/>
<a href="#" onClick="javascript:history.back(-1);" >返回上层</a><!--居左-float:left;-->
            <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 221 /6/10
 * Time: 17:34
 */?>