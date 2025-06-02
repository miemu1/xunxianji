<?php
$player = player\getplayer($sid,$dblj);
$backcmd=$encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
if ($nowmid!=$player->nowmid){
    $html = <<<HTML
        请正常玩游戏！<br/>
        <br/>
        <a href="?cmd=$backcmd">返回游戏</a>
HTML;
    echo $html;
    exit();
}
if (isset($gid)){
    $guaiwu = player\getguaiwu($gid,$dblj);
    $yguaiwu = \player\getyguaiwu($gyid,$dblj);
    $pvecmd=$encode->encode("cmd=pve&gid=$gid&sid=$sid&nowmid=$nowmid");
    if ($yguaiwu->ginfo==''){
        $yguaiwu->ginfo = '没有任何名气';
    }
    
    if ($guaiwu->sid !='' or $guaiwu->gname==''){
        $html = <<<HTML
        怪物已经被其他人攻击了！<br/>
        请少侠练习一下手速哦
        <br/>
        <a href="?cmd=$backcmd">返回游戏</a>
HTML;
    }  else{
        $dlhtml = '';
        $zbhtml = '';
        $djhtml = '';
        $yphtml = '';
        if ($yguaiwu->gzb!=''){
            $zbarr = explode(',',$yguaiwu->gzb);
            foreach($zbarr as $newstr){
                $zbkzb = \player\getzbkzb($newstr,$dblj);
				//$zhuangbei = new \player\zhuangbei();
                $zbcmd = $encode->encode("cmd=zbinfo_sys&zbid=$zbkzb->zbid&sid=$sid");
                $zbhtml .= "<a href='?cmd=$zbcmd'><font color='{$zbkzb->zbys}'>$zbkzb->zbname</font></a>";
            }
            $dlhtml .=$zbhtml;
        }
        if ($yguaiwu->gdj!=''){
            $djarr = explode(',',$yguaiwu->gdj);
            foreach($djarr as $newstr){
                $dj = \player\getdaoju($newstr,$dblj);
                $djinfo = $encode->encode("cmd=djinfo&djid=$dj->djid&sid=$sid");
                $djhtml .= "<font class='djys'><a href='?cmd=$djinfo'>$dj->djname</a></font>";
            }
            $dlhtml .=$djhtml;
        }
        if ($yguaiwu->gyp!=''){
            $yparr = explode(',',$yguaiwu->gyp);
            foreach($yparr as $newstr){
                $yp = \player\getyaopinonce($newstr,$dblj);
                $ypinfo = $encode->encode("cmd=ypinfo&ypid=$yp->ypid&sid=$sid");

                $yphtml .= "<font class='ypys'><a href='?cmd=$ypinfo'>$yp->ypname</a></font>";
            }
            $dlhtml .=$yphtml;
        }

        if ($dlhtml == ''){
            $dlhtml = '该怪物说你随意，我就是不给你装备,宁死不从。<br/>';
        }
	


	
$sjhtml =<<<HTML
<font face=隶书 color="ae2d61">
<!--<marquee direction="left" style="background: #89EE00;font-size:30 px"></marquee></font>--><!--动态文字条-->
<font color="#09BDAA">
<body> 
<script language="JavaScript">
<!-- Hide
var a = Math.random() + ""
var rand1 = a.charAt(15)
quotes = new Array
quotes[0] = '沉默是金，我都沉默这么久了，怎么就没见到金子。'
quotes[1] = '多抽烟，少运动，你凉了，老婆我帮你照顾^0^'
quotes[2] = '你长的还可以，不过我感觉还是你做面膜的时候好看。'
quotes[3] = '给事物赋予什么样的价值，人们就有什么样的行动。把困难举在头上，它就是灭顶石；把困难踩在脚下，它就是垫脚石。起跑领先一小步，人生领先一大步。'
quotes[4] = '什么都是假的，只有穷是真的。'
quotes[5] = '笑给自己看。泪给自己流。不虚伪。不做作。'
quotes[6] = '真的非常感谢曾经打击我的人，让我学会了打击别的小怪...。'
quotes[7] = '早晨给自己一个微笑，种下一天旳阳光。'
quotes[8] = '朋友如果可以出卖的话，我估计还能发笔小财。'
quotes[9] = '有时候觉得自己变丑了,拿出身份证一看,发现多虑了。'
quotes[10] = '女人不花，何来貌美如花。男人不坏，何来子孙后代。'
quotes[12] = '大虾你现在想干什么就干什么去吧，想吃啥赶紧抓紧吃点...。'
quotes[13] = '如果有来生，我要当条被子，不是躺在床上就是在晒太阳！'
quotes[14] = '任何的恐怖片都抵不上从窗户突然冒出的山大王。'
quotes[15] = '真的非常感谢曾经打击我的人，让我学会了打击别的小怪...。'
var quote = quotes[rand1]
</script>
<script language="JavaScript">
<!-- Hide
document.write(quote)
</script>
</body>
</font>
<font color="#89EE00">---$yguaiwu->gname</font>
</font>
HTML;
		
		
		
		
		
		
		
		
		
		$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
        $html = <<<HTML
        [<font color="#F13F0B">$yguaiwu->gname</font>] · $yguaiwu->gsex<br/>
        等级:$yguaiwu->glv<br/>
		攻击:$guaiwu->ggj<br/>
		防御:$guaiwu->gfy<br/>
		境界:$guaiwu->jingjie<br/>
		信息:<FONT style="TEXT-DECORATION: line-through">$yguaiwu->ginfo</font>当你看这见段文字,才发现这字些都错是乱的。
		$sjhtml<br>
        
        =========掉落========<br/>
        $dlhtml<br>
		=====================<br>
		<a href="?cmd=$pvecmd" style="color: #f50707" >攻击</a>
        <a href="?cmd=$pvecmd" style="float:right;color: #f50707" >攻击</a>
		<br><br>
		<a href="#" onClick="javascript:history.back(-1);" >返回上层</a><!--居左-float:left;-->
            <a href="game.php?cmd=$gonowmid" style="float:right;" >做个良人</a>
HTML;
    }
}
echo $html;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 202 1 myj /6/11
 * Time: 10:08
 */
?>

