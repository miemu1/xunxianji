
<?php
$player = \player\getplayer($sid,$dblj);
$nowmid=$player->nowmid;
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$player->sid");
// $pgjcmd = $encode->encode("cmd=pvb&canshu=ptgj&bossid=$bossid&sid=$sid");原有的boss攻击

$pgjcmd = $encode->encode("cmd=pvbgj&bossid=$bossid&sid=$player->sid&nowmid=$nowmid");
// $pgjcmd = $encode->encode("cmd=pvbgj&bossid=$bossid&sid=$player->sid&nowmid=$nowmid");
$boss = \player\getboss($bossid,$dblj);
 $yboss = new \player\boss();

// $cxmid = \player\getmid($player->nowmid,$dblj);
// $cxqy = \player\getqy($cxmid->mqy,$dblj);
// $gorehpmid = $encode->encode("cmd=gomid&newmid=$cxqy->mid&sid=$player->sid");




 if ($yboss->bossid){
    
	 $yboss = player\getyboss($yboss->bossid,$dblj);
 }
$huode = '';
$useyp1 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp1&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$useyp2 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp2&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$useyp3 = $encode->encode("cmd=pvb&canshu=useyp&ypid=$player->yp3&sid=$sid&bossid=$bossid&nowmid=$nowmid");
$ypname1 = '药品1';
$ypname2 = '药品2';
$ypname3 = '药品3';

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
$cwhurt = '';
$tishihtml='';
if ($boss->bosshp <=0 ){//这里是对于BOSS没生命了进行刷新的人进行提示
	$html = <<<HTML
        BOSS已经回家喝奶，听说掉了一地装备！<br/>
        <br/>
        <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
    echo $html;
    exit();
}

if ($nowmid!=$player->nowmid){
    $html = <<<HTML
        请正常玩游戏！<br/>
        <br/>
        <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
    echo $html;
    exit();
}

if (($boss->sid!=$player->sid && $boss->sid!='') || ($boss->bossid=='')){
        $html = <<<HTML
        怪物已经被其他人攻击了！<br/>
        请少侠练习一下手速哦
        <br/>
        <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
        exit($html);
}
$pvbbj = '';
$pvbxx = '';
if (isset($canshu)){

    if ($canshu == 'useyp'){
        $ret = \player\useyaopin($ypid,1,$sid,$dblj);
        $player =  player\getplayer($sid,$dblj);
    }
}

if($cmd=='pvb' && $boss->sid==''){

    if ($player->ulv >= 1 && $player->uhp <=0){
        $zdjg = -1;
    }else{
        // $sql = "update boss set sid = '$sid' WHERE id='$bossid'";这里删怪，ID写好就行，出现问题，我有点无语12.23
        // $dblj->exec($sql);
        $cw = \player\getchongwu($player->cw,$dblj);
        \player\changecwsx('cwhp',$cw->cwmaxhp,$player->cw,$dblj);
        if($player->ulv <= 10){
            \player\changeplayersx('uhp',$player->umaxhp,$sid,$dblj);
            $player =  player\getplayer($sid,$dblj);
        }
    }

}

elseif ($cmd == 'pvbgj' && $bossid != 0){
    //普通攻击
    $hurt = false;
    $ghurt = 0;
    // $jineng = new \player\jineng();

    // if (isset($canshu)){
        // switch ($canshu){
            // case 'usejn':
                // $ret = \player\delejnsum($jnid,1,$sid,$dblj);
                // if ($ret){
                    // $jineng = \player\getplayerjineng($jnid,$sid,$dblj);
                    // $tishihtml = "使用技能：$jineng->jnname<br/>";
                // }else{
                    // $tishihtml = "技能数量不足<br/>";
                // }

                // break;
        // }
   // }

    // $player->ugj +=$jineng->jngj;
    // $player->ufy +=$jineng->jnfy;
    // $player->ubj +=$jineng->jnbj;
    // $player->uxx +=$jineng->jnxx;

    $lvc = $player->ulv - $boss->bosslv;
	//攻击伤害计算
    if ($lvc <= 0){
        $lvc = 0;
    }

    $phurt = 0 ;
	

    $phurt = round($boss->bossgj - ($player->ufy * 0.75),0);
	
    if ($phurt < $boss->bossgj*0.15){
        $phurt = round($boss->bossgj*0.15);
    }

    $ran = mt_rand(1,100);//控制暴击概率
    if ($player->ubj >= $ran){
        $player->ugj = round($player->ugj * 1.72);
        $pvbbj = '暴击';
    }
     $cw = \player\getchongwu($player->cw,$dblj);//引入宠物,判断宠物死活
	 if ($cw->cwhp > 0){
        $cwgj = round($cw->cwgj * 1);   
    }else{
        $cwgj = 0 ;
    }
	 
	 
    $gphurt = round($cwgj + $player->ugj - ($boss->bossfy * 0.75),0);//主角攻击怪物扣血情况，本身攻击+宠物攻击
    if ($gphurt < $player->ugj*0.15){
        $gphurt = round( $player->ugj * 0.15);
    }
    $pvbxx = ceil($gphurt * ($player->uxx/100) );//控制吸血强度

    if ($phurt <= 0){
        $hurt = true;
    }

    if ($phurt < $pvbxx){
        $pvbxx = $phurt - 7;

        if ($pvbxx<0){
            $pvbxx = 0;
			
        }
    }









    $cw = \player\getchongwu($player->cw,$dblj);
    $sql = "update boss set bosshp = bosshp - {$gphurt} WHERE bossid='$bossid'";
    $dblj->exec($sql);
    $boss = player\getboss($bossid,$dblj);
	
	
	
	
	
	
	
	
    if ($boss->bosshp <=0 ){//怪物死亡,奖励计算
	    
        $sql = "delete from boss where bossid = $bossid AND sid='$player->sid'";//删除怪物
        $dblj->exec($sql);
		$sql = "update mid set mgtime='$nowdate' WHERE mid='$player->nowmid'";//增加时间，计数
        $dblj->exec($sql);
		//$sql = "update boss set bosshp = bossmaxhp  WHERE bossid='$bossid'";//给boss加血
		//$dblj->exec($sql);
        $yxb = round($boss->bosslv*2.9) + 110;//游戏币计算
        if ($hurt || $lvc >=5){
            $yxb = 0;//大于五级游戏币为零
        }
		
		$sj = mt_rand(1,5);
        $ret = \player\changeyxb(1,$yxb,$sid,$dblj);//选择1方案（加钱），改变数量=yxb，id，关闭数据库；
		$ret1 = \player\changeczb(1,$sj,$sid,$dblj);//魔石增加
        if ($ret){
            $huode .= "获得灵石:$yxb<br/>获得魔石:$sj<br>";
        }
        $taskarr = \player\getplayerrenwu($sid,$dblj);//这里是任务情况
        \player\changerwyq1(2,$boss->gyid,1,$sid,$dblj);
        for ($i=0;$i<count($taskarr);$i++){
            $rwyq = $taskarr[$i]['rwyq'];
            $rwid = $taskarr[$i]['rwid'];
            $rwzl = $taskarr[$i]['rwzl'];
            $rwzt = $taskarr[$i]['rwzt'];
            if ($rwyq==$boss->gyid && $rwzl==2 && $rwzt!=3){
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
        if ($boss->dljv >=$sjjv && $boss->bosszb != ''){
            $sql = "select * from zhuangbei WHERE zbid in ($boss->bosszb)";
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
                    $stmt->execute(array('【号外】',"[{$player->uname}]{$jisha}[{$boss->bossname}]获得[{$zbname}]令人羡慕。",'0'));//系统公告
					}
            }
        }
		//道具计算
        $sjjv = mt_rand(1,100);
        if ($boss->djjv >= $sjjv && $boss->bossdj != ''){
            $sql = "select * from daoju WHERE djid in ($boss->bossdj)";
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
        if ($boss->ypjv >= $sjjv && $boss->bossyp != ''){
            $sql = "select * from yaopin WHERE ypid in ($boss->bossyp)";
            $cxdljg = $dblj->query($sql);
            $retyp = $cxdljg->fetchAll(PDO::FETCH_ASSOC);
            $sjdj = mt_rand(0, count($retyp) - 1);
            $ypname = $retyp[$sjdj]['ypname'];
            $ypid = $retyp[$sjdj]['ypid'];
            $ypsum = mt_rand(1, 2);//药品掉落数量
            \player\addyaopin($sid,$ypid,$ypsum,$dblj);
            $huode .= "获得:<div class='ypys'>$ypname x$ypsum</div>";
        }

       // $boss->bossexp = round($boss->bossexp / ($lvc+1),0);//经验计算
	   $boss->bossexp = round($boss->bossgj / 2+$player->ugj/2+$player->ufy/2,0);
        if($boss->bossexp < 3){
            $boss->bossexp = 3;
        }
        $zdjg = 1;
    }
	
    $pzssh = $phurt - $pvbxx;//变量
	
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

// if ($player->jn1!=0){
    // $jineng = \player\getplayerjineng($player->jn1,$sid,$dblj);
    // if ($jineng){
        // $jnname1 = $jineng->jnname.'('.$jineng->jncount.')';
    // }
// }
// if ($player->jn2!=0){
    // $jineng = \player\getplayerjineng($player->jn2,$sid,$dblj);
    // if ($jineng){
        // $jnname2 = $jineng->jnname.'('.$jineng->jncount.')';
    // }
// }
// if ($player->jn3!=0){
    // $jineng = \player\getplayerjineng($player->jn3,$sid,$dblj);;
    // if ($jineng){
        // $jnname3 = $jineng->jnname.'('.$jineng->jncount.')';
    // }
// }

if (isset($zdjg)){//这里是战斗经过，有三个0 1 -1 选择
    switch ($zdjg){
        case 1:

            player\changeexp($sid,$dblj,$boss->bossexp);
			player\changecwexp($player->cw,$boss->bossexp,$dblj);
            $huode.='获得修为:'.$boss->bossexp.'<br/>';

            $html = <<<HTML
            战斗结果:<br/>
            你打死了$boss->bossname<br/>
            战斗胜利！<br/>
            $huode
            $rwts<br/>
            <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
            break;
        case 0:
            $html = <<<HTML
            战斗结果:<br/>
            你被$boss->bossname 打死了<br/>
            战斗失败！<br/>
            请少侠重来<br/>
            <br/>
            <a href="?cmd=$gonowmid">返回游戏</a>
HTML;
            break;
        case -1:
            $html = <<<HTML
            战斗结果:<br/>
            你已经重伤，无法再次进行战斗！<br/>
            请少侠恢复之后重来<br/>
            <br/>
            <a href="?cmd=$gonowmid">返回游戏</a>
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

    if ($pvbxx>0){
        $pvbxx="(+".$pvbxx.')';
    }else{
        $pvbxx = '';
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

if($boss->bosshp >9500){
$sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
$stmt = $dblj->prepare($sql);
$stmt->execute(array('【最新】',"有人发现[{$player->uname}]正在挑战{$boss->bossname}，谁会获胜，让我们拭目以待！",'0'));//系统公告
}
if($boss->bosshp <2200 && $boss->bosshp>1500){
$sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
$stmt = $dblj->prepare($sql);
$stmt->execute(array('【最新】',"抢BOSS了,[{$player->uname}]将要击杀{$boss->bossname},会掉落什么宝物呢？",'0'));//系统公告
}



$yaopin = \player\getplayeryaopin($player->yp1,$sid,$dblj);
$ypname1 = $yaopin->ypname.'('.$yaopin->ypsum.')';
$yaopin = \player\getplayeryaopin($player->yp2,$sid,$dblj);
$ypname2 = $yaopin->ypname.'('.$yaopin->ypsum.')';
$yaopin = \player\getplayeryaopin($player->yp3,$sid,$dblj);
$ypname3 = $yaopin->ypname.'('.$yaopin->ypsum.')';
$html=<<<HTML
==BOSS战斗==<br/>
<IMG width="50" height="50" src="./images/cqgs.png"><BR>
$boss->bossname:[lv:$boss->bosslv]<br/>
气血:(<div class="hpys" style="display: inline">$boss->bosshp</div>/<div class="hpys" style="display: inline">$boss->bossmaxhp</div>)$pvbbj$ghurt<br/>
攻击:($boss->bossgj)<br/>
防御:($boss->bossfy)<br/>
当前攻击人数:<br/>
===================<br/>
$player->uname [lv:$player->ulv]<br/>
气血:(<div class="hpys" style="display: inline">$player->uhp</div>/<div class="hpys" style="display: inline">$player->umaxhp</div>)$phurt$pvbxx<br/>
攻击:($player->ugj)<br/>
防御:($player->ufy)<br/>
$tishihtml
<br/>
<ul>
<li><a href="?cmd=$gonowmid">逃跑</a></li><br/>
<li><a href="?cmd=$pgjcmd">攻击</a></li>
</ul>

<a href="?cmd=$useyp1">$ypname1</a>.<a href="?cmd=$useyp2">$ypname2</a><!--.<a href="?cmd=$useyp3">$ypname3</a><br/>-->
<br/>
HTML;
}
echo $html

?>