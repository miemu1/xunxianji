<?php
$player =  player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
$cxmid = \player\getmid($player->nowmid,$dblj);
$cxqy = \player\getqy($cxmid->mqy,$dblj);
$gorehpmid = $encode->encode("cmd=gomid&newmid=$cxqy->mid&sid=$player->sid");
$rwts = '';
$cwhtml='';
$pgjcmd = $encode->encode("cmd=pvegj&gid=$gid&sid=$player->sid&nowmid=$nowmid");
$guaiwu = player\getguaiwu($gid,$dblj);
$yguaiwu = new \player\guaiwu();

if ($guaiwu->gyid){
    $yguaiwu = player\getyguaiwu($guaiwu->gyid,$dblj);
}
$huode = '';
$useyp1 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp1&sid=$sid&gid=$gid&nowmid=$nowmid");
$useyp2 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp2&sid=$sid&gid=$gid&nowmid=$nowmid");
$useyp3 = $encode->encode("cmd=pve&canshu=useyp&ypid=$player->yp3&sid=$sid&gid=$gid&nowmid=$nowmid");

$usejn1 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn1&sid=$sid&gid=$gid&nowmid=$nowmid");
$usejn2 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn2&sid=$sid&gid=$gid&nowmid=$nowmid");
$usejn3 = $encode->encode("cmd=pvegj&canshu=usejn&jnid=$player->jn3&sid=$sid&gid=$gid&nowmid=$nowmid");

$ypname1 = '药品1';
$ypname2 = '药品2';
$ypname3 = '药品3';

$jnname1 = '符箓1';
$jnname2 = '符箓2';
$jnname3 = '符箓3';

$cwhurt = '';
$tishihtml='';
if ($nowmid!=$player->nowmid){
    $html = <<<HTML
        请正常玩游戏！<br/>
        <br/>
        <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
    echo $html;
    exit();
}

if (($guaiwu->sid!=$player->sid && $guaiwu->sid!='') || ($guaiwu->gid=='')){
        $html = <<<HTML
        怪物已经被其他人攻击了！<br/>
        请少侠练习一下手速哦
        <br/>
        <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
        exit($html);
}
$pvebj = '';
$pvexx = '';

if (isset($canshu)){

    if ($canshu == 'useyp'){
        $ret = \player\useyaopin($ypid,1,$sid,$dblj);
        $player =  player\getplayer($sid,$dblj);
    }
}
//宠物攻击啥的
if($cmd=='pve' && $guaiwu->sid==''){

    if ($player->ulv >= 10 && $player->uhp <=0){
        $zdjg = -1;
    }else{
        $sql = "update midguaiwu set sid = '$sid' WHERE id='$gid'";
        $dblj->exec($sql);
        $cw = \player\getchongwu($player->cw,$dblj);
        \player\changecwsx('cwhp',$cw->cwmaxhp,$player->cw,$dblj);
        if($player->ulv <= 10){
            \player\changeplayersx('uhp',$player->umaxhp,$sid,$dblj);
            $player =  player\getplayer($sid,$dblj);
        }
    }

}elseif ($cmd == 'pvegj' && $gid != 0){
    //普通攻击
    $hurt = false;
    $ghurt = 0;
    $jineng = new \player\jineng();

    if (isset($canshu)){
        switch ($canshu){
            case 'usejn':
                $ret = \player\delejnsum($jnid,1,$sid,$dblj);
                if ($ret){
                    $jineng = \player\getplayerjineng($jnid,$sid,$dblj);
                    $tishihtml = "使用技能：$jineng->jnname<br/>";
                }else{
                    $tishihtml = "技能数量不足<br/>";
                }

                break;
        }
    }

    $player->ugj +=$jineng->jngj;
    $player->ufy +=$jineng->jnfy;
    $player->ubj +=$jineng->jnbj;
    $player->uxx +=$jineng->jnxx;

    $lvc = $player->ulv - $guaiwu->glv;
	//攻击伤害计算
    if ($lvc <= 0){
        $lvc = 0;
    }

    $phurt = 0 ;
	

    $phurt = round($guaiwu->ggj - ($player->ufy * 0.75),0);
	
    if ($phurt < $guaiwu->ggj*0.15){
        $phurt = round($guaiwu->ggj*0.15);
    }

    $ran = mt_rand(1,200);//控制暴击概率
    if ($player->ubj >= $ran){
        $player->ugj = round($player->ugj * 1.72);
        $pvebj = '暴击';
    }
     $cw = \player\getchongwu($player->cw,$dblj);//引入宠物,判断宠物死活
	 if ($cw->cwhp > 0){
        $cwgj = round($cw->cwgj * 1);   
    }else{
        $cwgj = 0 ;
    }
	 
	 
    $gphurt = round($cwgj + $player->ugj - ($guaiwu->gfy * 0.75),0);//主角攻击怪物扣血情况，本身攻击+宠物攻击
    if ($gphurt < $player->ugj*0.15){
        $gphurt = round( $player->ugj * 0.15);
    }
    $pvexx = ceil($gphurt * ($player->uxx/200) );//控制吸血强度

    if ($phurt <= 0){
        $hurt = true;
    }

    if ($phurt < $pvexx){
        $pvexx = $phurt - 7;

        if ($pvexx<0){
            $pvexx = 0;
			
        }
    }
     $cw = \player\getchongwu($player->cw,$dblj);
    $sql = "update midguaiwu set ghp = ghp - {$gphurt} WHERE id='$gid'";
    $dblj->exec($sql);
    $guaiwu = player\getguaiwu($gid,$dblj);
    if ($guaiwu->ghp<=0){//怪物死亡,奖励计算
        $sql = "delete from midguaiwu where id = $gid AND sid='$player->sid'";//删除怪物
        $dblj->exec($sql);
		$sjyxb = mt_rand(1,200);
        $yxb = round($guaiwu->glv*22.5) + $sjyxb;//游戏币灵石战斗后计算
        if ($hurt || $lvc >=30){//判断怪物等级小于玩家30级，无灵石掉落
            $yxb = 0;
        }

        $ret = \player\changeyxb(1,$yxb,$sid,$dblj);
        if ($ret){
            $huode .= "获得灵石:$yxb<br/>";
        }
        $taskarr = \player\getplayerrenwu($sid,$dblj);
        \player\changerwyq1(2,$guaiwu->gyid,1,$sid,$dblj);
        for ($i=0;$i<count($taskarr);$i++){
            $rwyq = $taskarr[$i]['rwyq'];
            $rwid = $taskarr[$i]['rwid'];
            $rwzl = $taskarr[$i]['rwzl'];
            $rwzt = $taskarr[$i]['rwzt'];
            if ($rwyq==$guaiwu->gyid && $rwzl==2 && $rwzt!=3){
                $rwnowcount = $taskarr[$i]['rwnowcount']+ 1;
                $rwts = $taskarr[$i]['rwname'].'('.$rwnowcount."/".$taskarr[$i]['rwcount'].')<br/>';
                break;
            }
        }
		
$jisha = <<<HTML

<IMG width='15' height='15' src='./images/jisha.png' >

HTML;
		
		
		
		//装备计算

        $sjjv = mt_rand(1,120);
        if ($yguaiwu->dljv >=$sjjv && $yguaiwu->gzb != ''){
            $sql = "select * from zhuangbei WHERE zbid in ($yguaiwu->gzb)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg){
				
                $retzb = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdl = mt_rand(0,count($retzb)-1);
                $zbname = $retzb[$sjdl]['zbname'];
                $zbid = $retzb[$sjdl]['zbid'];
                $zbnowid = player\addzb($sid,$zbid,$dblj);
				$zbys = \player\getzbkzb($zbid,$dblj);//获取装备ID地址，这是用来获取色彩
                $chakanzb = $encode->encode("cmd=chakanzb&zbnowid=$zbnowid&uid=$player->uid&sid=$sid");
			$huode .= "获得:".'<a href="?cmd='.$chakanzb.'"><font color='.$zbys->zbys.' >'.$zbname .'</font></a><br>';//装备要素
			        $zbpz = $zbys->zbgj + $zbys->zbfy + $zbys->zbxx +$zbys->zbbj ;//写一个公告，获得装备
					if ($zbpz >=5){
			        $sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
                    $stmt = $dblj->prepare($sql);
                    $stmt->execute(array('【号外】',"[{$player->uname}]{$jisha}[{$guaiwu->gname}]获得[{$zbname}]令人羡慕。",'0'));//系统公告
					}
            }
        }
		//道具计算
        $sjjv = mt_rand(1,180);
        if ($yguaiwu->djjv >= $sjjv && $yguaiwu->gdj != ''){
            $sql = "select * from daoju WHERE djid in ($yguaiwu->gdj)";
            $cxdljg = $dblj->query($sql);
            if ($cxdljg){
                $retdj = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
                $sjdj = mt_rand(0,count($retdj)-1);
                $djname = $retdj[$sjdj]['djname'];
                $djid = $retdj[$sjdj]['djid'];
                if ($djid == 1 && $lvc == 0){
                    goto yp;
                }
                $djsum = mt_rand(1,2);
                \player\adddj($sid,$djid,$djsum,$dblj);
                $huode .= "获得:<div class='djys'>$djname x$djsum</div>";//色彩要素

                for ($i=0;$i<count($taskarr);$i++){
                    $rwyq = $taskarr[$i]['rwyq'];
                    $rwid = $taskarr[$i]['rwid'];
                    $rwzl = $taskarr[$i]['rwzl'];
                    $rwzt = $taskarr[$i]['rwzt'];
                    if ($rwyq==$djid && $rwzl==1 && $rwzt!=3){
                        $rwnowcount = $taskarr[$i]['rwnowcount']+ $djsum;
                        $rwts = $taskarr[$i]['rwname'].'('.$rwnowcount."/".$taskarr[$i]['rwcount'].')<br/>';
                        break;
                    }
                }

            }
        }
        yp:
        $sjjv = mt_rand(1,100);
        if ($yguaiwu->ypjv >= $sjjv && $yguaiwu->gyp != ''){
            $sql = "select * from yaopin WHERE ypid in ($yguaiwu->gyp)";
            $cxdljg = $dblj->query($sql);
            $retyp = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
            $sjdj = mt_rand(0, count($retyp) - 1);
            $ypname = $retyp[$sjdj]['ypname'];
            $ypid = $retyp[$sjdj]['ypid'];
            $ypsum = mt_rand(1, 2);//药品掉落数量
            \player\addyaopin($sid,$ypid,$ypsum,$dblj);
            $huode .= "获得:<div class='ypys'>$ypname x$ypsum</div>";
        }

        $guaiwu->gexp = round($guaiwu->gexp / ($lvc+1),0);//经验计算
        if($guaiwu->gexp < 3){
            $guaiwu->gexp = 3;
        }
        $zdjg = 1;
    }
	
    $pzssh = $phurt - $pvexx;//变量
	
    $sql = "update game1 set uhp = uhp - $pzssh  WHERE sid = '$sid'";//访问数据库，名称，量，id，
	
    $dblj->exec($sql);                                                     //关闭数据库
    $player =  player\getplayer($sid,$dblj);//个人ID及其他属性
    if ($player->uhp > $player->umaxhp){//判断吸血溢出
        $sql = "update game1 set uhp = $player->umaxhp WHERE sid = '$sid'";//血量溢出重新计算
		//$cwjx = "update playerchongwu set cwhp = cwhp - $cwxl WHERE sid = '$sid'";//宠物血量也重新来一下，多余的...
        $dblj->exec($sql);//关闭数据库
        $player->uhp = $player->umaxhp;//给值
		
    }
	$cwxl = round($phurt*2.2);//宠物被攻击伤害计算
	$sql = "update playerchongwu set cwhp = cwhp - $cwxl  WHERE sid = '$sid'";
	$dblj->exec($sql);
	$cw = \player\getchongwu($player->cw,$dblj);
	    if ($cw->cwhp >0){
        $cwts="(-".$cwxl.')';
    }else{
        $cwts = '嗝屁';
    }
	
	
	
	
    if ($player->uhp <= 0){//判断战斗经过，血量过低时候
        $zdjg = 0;//跳转到$zdjg 战斗经过 
    }
}

if ($player->yp1!=0){
    $yaopin = \player\getplayeryaopin($player->yp1,$sid,$dblj);
    $ypname1 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}
if ($player->yp2!=0){
    $yaopin = \player\getplayeryaopin($player->yp2,$sid,$dblj);
    $ypname2 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}
if ($player->yp3!=0){
    $yaopin = \player\getplayeryaopin($player->yp3,$sid,$dblj);
    $ypname3 = $yaopin->ypname.'('.$yaopin->ypsum.')';
}

if ($player->jn1!=0){
    $jineng = \player\getplayerjineng($player->jn1,$sid,$dblj);
    if ($jineng){
        $jnname1 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}
if ($player->jn2!=0){
    $jineng = \player\getplayerjineng($player->jn2,$sid,$dblj);
    if ($jineng){
        $jnname2 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}
if ($player->jn3!=0){
    $jineng = \player\getplayerjineng($player->jn3,$sid,$dblj);;
    if ($jineng){
        $jnname3 = $jineng->jnname.'('.$jineng->jncount.')';
    }
}

if (isset($zdjg)){//这里是战斗经过，有三个0 1 -1 选择
    switch ($zdjg){
        case 1:

            player\changeexp($sid,$dblj,$guaiwu->gexp);
			player\changecwexp($player->cw,$guaiwu->gexp,$dblj);
            $huode.='获得修为:'.$guaiwu->gexp.'<br/>';

            $html = <<<HTML
            战斗结果:<br/>
            你打死了$guaiwu->gname<br/>
            战斗胜利！<br/>
            $huode
            $rwts<br/>
            <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
            break;
        case 0:
            $html = <<<HTML
            战斗结果:<br/>
            你被$guaiwu->gname 打死了<br/>
            战斗失败！<br/>
            请少侠重来<br/>
            <br/>
            <a href="?cmd=$gorehpmid">返回游戏</a>
HTML;
            break;
        case -1:
            $html = <<<HTML
            战斗结果:<br/>
            你已经重伤，无法再次进行战斗！<br/>
            请少侠恢复之后重来<br/>
            <br/>
            <a href="?cmd=$gorehpmid">返回游戏</a>
HTML;
            break;
    }
}

//判断，执行无生命值大于零，可进行战斗
else{
    if (isset($gphurt) && $gphurt>0){
        $ghurt='-'.$gphurt;
    }else{
        $ghurt='';
    }
    if (isset($cwhurt) && $cwhurt>0){
        $cwhurt='-'.$cwhurt;
    }else{
        $cwhurt='';
    }
    if (isset($phurt) && $phurt>0){
        $phurt='-'.$phurt;
    }else{
        $phurt='';
    }

    if ($pvexx>0){
        $pvexx="(+".$pvexx.')';
    }else{
        $pvexx = '';
    }

    if ($player->cw!=0){
        $cw = \player\getchongwu($player->cw,$dblj);
		
        if ($cwhurt!='' || $cw->cwhp>0){
            $cwhtml=<<<HTML
            ===================<br/>
            宠物:$cw->cwname[lv:$cw->cwlv]<br/>
            气血:(<div class="hpys" style="display: inline">$cw->cwhp</div>/<div class="hpys" style="display: inline">$cw->cwmaxhp</div>)$cwhurt$cwts<br/>
            攻击:($cw->cwgj)<br/>
            防御:($cw->cwfy)<br/>
HTML;
        }

    }
	
	
	
	
$djshtml = <<<HTML
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>计时器 </title>

<script type="text/javascript" src="./chajian/djs/js/jquery.js"></script>
<script type="text/javascript" src="./chajian/djs/js/time_js.js"></script>

<link type="text/css" rel="stylesheet" href="./chajian/djs/css/time_css.css" />

</head>

<body>

<div class="game_time">

	<div class="hold">
		<div class="pie pie1"></div>
	</div>

	<div class="hold">
		<div class="pie pie2"></div>
	</div>

	<div class="bg"> </div>
	
	<div class="time"></div>
	
</div>

<script type="text/javascript">
countDown();
</script>

</body>

HTML;
//上面是倒计时的一段
	
	
	
	
	
$gwxl = $guaiwu->ghp / $guaiwu->gmaxhp *100 ;
$html = <<<HTML
==战斗==<br/>
$guaiwu->gname [lv:$guaiwu->glv]<br/>
<link rel="stylesheet"  href="./css/css.css">
<div class = "dise" width="100" height="100%">
<img class = "skills"  width="$gwxl%" height="100%"></img >
</div> 
气血:(<div class="hpys" style="display: inline">$guaiwu->ghp</div>/<div class="hpys" style="display: inline">$guaiwu->gmaxhp</div>)$pvebj$ghurt<br/>
攻击:($guaiwu->ggj)<br/>
防御:($guaiwu->gfy)<br/>
===================<br/>
$player->uname [lv:$player->ulv]<br/>
气血:(<div class="hpys" style="display: inline">$player->uhp</div>/<div class="hpys" style="display: inline">$player->umaxhp</div>)$phurt$pvexx<br/>
攻击:($player->ugj)<br/>
防御:($player->ufy)<br/>
$tishihtml
$cwhtml
<meta http-equiv="refresh" content="2"><!--自动攻击刷新间隔-->
<br/>
<ul>
<li><a href="?cmd=$gonowmid">逃跑</a></li><br/>
<li><a href="?cmd=$pgjcmd">攻击</a></li>
</ul>
<a href="?cmd=$usejn1">$jnname1</a>.<a href="?cmd=$usejn2">$jnname2</a>.<a href="?cmd=$usejn3">$jnname3</a><br/>
<a href="?cmd=$useyp1">$ypname1</a>.<a href="?cmd=$useyp2">$ypname2</a>.<a href="?cmd=$useyp3">$ypname3</a><br/>
<br/>
HTML;


}
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2021 /6/11
 * Time: 12:09
 */
?>