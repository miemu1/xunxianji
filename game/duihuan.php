<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 20 21 /12 /20
 * Time: 18:39
 */

$sjhtml =<<<HTML
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>字体闪烁效果</title>
    <style>
        body {
            /* background-color: black; */
        }
        div {
            margin: 0px auto;
            width: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
           /*  color: #97BCA8; */
        }
        span {
            animation: shan 4s linear infinite;
            text-transform: uppercase;
        }
        div span:nth-child(1){
            animation-delay: 0s;
        }
        div span:nth-child(2){
            animation-delay: .4s;
        }
        div span:nth-child(3){
            animation-delay: .8s;
        }
        div span:nth-child(4){
            animation-delay: 1.2s;
        }
        div span:nth-child(5){
            animation-delay: 1.6s;
        }
        div span:nth-child(6){
            animation-delay: 2s;
        }
        div span:nth-child(7){
            animation-delay: 2.4s;
        }
        div span:nth-child(8){
            animation-delay: 2.8s;
        }
        div span:nth-child(9){
            animation-delay: 3.2s;
        }
        @keyframes shan {
            0% ,100%{
                color: white;
                text-shadow: 0 0 4px  pink ,
                                0 0 10px pink ,
                                0 0 20px pink ,
                                0 0 30px pink ,
                                0 0 40px pink ,
                                0 0 50px pink ,
                                0 0 60px pink ,
                                0 0 70px pink ,
                                0 0 80px pink ,
                                0 0 90px pink ,
                                0 0 100px pink;
            }
            30%,90% {
                color: transparent;
                text-shadow: none;
            }
        }
    </style>
</head>
<body>
    <div>
        <span>v</span>
        <span>i</span>
        <span>p</span>
        <span>6</span>
        <span>6</span>
        <span>6</span>
        <span>8</span>
        <span>8</span>
        <span>8</span>
    </div>
</body>
</html>
HTML;
 

$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$tishi = '';
if (isset($dhm)){
		
    $dhm = htmlspecialchars($dhm);
	//下面写的是判断领取VIP666的礼包情况
		if ($dhm==vip666 && $player->dhvip==0){
		$dhm=vip666;
		$sql = "update game1 set dhvip = $player->dhvip + 1  WHERE sid='$sid'";//<!--兑换加1-->
		$dblj->exec($sql);
	}
			if ($dhm==vip666888 && $player->dhvip1==0){
		$dhm=vip666888;
		$sql = "update game1 set dhvip1 = $player->dhvip1 + 1  WHERE sid='$sid'";//<!--兑换加1-->
		$dblj->exec($sql);
	}
	if ($dhm==vip666888 && $player->dhvip1==1){
		$tishi =  '重复嫖一个CDK，臣妾做不到！';
	}else{
	
			if ($dhm==vip666 && $player->dhvip==1){
		$tishi =  '重复嫖一个CDK，臣妾做不到！';
	}
  else{
    $duihuan = \player\getduihuan($dhm,$dblj);
    if ($duihuan){
        // $sql = "delete from duihuan WHERE dhm = '$dhm'";
        // $dblj->exec($sql);
        //及时删除兑换码， 开启自动删除数据库使用的兑换码
        $tishi = "兑换【{$duihuan->dhname}】兑换码成功，获得:<br/>";
        $retallzb = explode(',',$duihuan->dhzb);
        foreach ($retallzb as $zb){
            if ($zb){
                \player\addzb($sid,$zb,$dblj);
                $zhuangbei = \player\getzbkzb($zb,$dblj);
                $tishi .= "$zhuangbei->zbname<br/>";
            }
        }
        $djitem = explode(',',$duihuan->dhdj);
        foreach ($djitem as $djinfo){
            if ($djinfo){
                $dj = explode('|',$djinfo);
                $djid = $dj[0];
                $djcount = $dj[1];
                \player\adddj($sid,$djid,$djcount,$dblj);
                $daoju = \player\getdaoju($djid,$dblj);
                $tishi .= "{$daoju->djname}x{$djcount}<br/>";
                \player\changerwyq1(1,$djid,$djcount,$sid,$dblj);
            }
        }
        $ypitem = explode(',',$duihuan->dhyp);
        foreach ($ypitem as $ypinfo){
            if ($ypinfo){
                $yp = explode('|',$ypinfo);
                $ypid = $yp[0];
                $ypcount = $yp[1];
                \player\addyaopin($sid,$ypid,$ypcount,$dblj);
                $yaopin = \player\getyaopinonce($ypid,$dblj);
                $tishi .= "{$yaopin->ypname}x{$ypcount}<br/>";
            }
        }
        if ($duihuan->dhyxb){
            \player\changeyxb(1,$duihuan->dhyxb,$sid,$dblj);
            $tishi .= "灵石：$duihuan->dhyxb<br/>";
        }
        if ($duihuan->dhczb){
            \player\changeczb(1,$duihuan->dhczb,$sid,$dblj);
            $tishi .= "魔石：$duihuan->dhczb<br/>";
        }
        if ($duihuan->dhexp){
            \player\changeexp($sid,$dblj,$duihuan->dhexp);
            $tishi .= "经验：$duihuan->dhexp<br/>";
        }

    }else{
        $tishi =  '兑换失败,错误CDK';
    }
  }//判断VIP礼包领取情况2
	}//判断vip礼包1

}



$dhhtml =<<<HTML
<form>
    <input type="hidden" name="cmd" value="duihuan">
    <input type="hidden" name="sid" value="$sid">
	
	<div align="center">
	<IMG width='280' height='140' src='./images/duihuan.png'src="./images/rw.png" style="border-radius: 8px;">
	<hr>
    兑换码:$dhm
	$sjhtml
	<hr>
	<p style="color: #f70808;">$tishi</p>
    <input name="dhm" style="background-color: #ddf7e9;"> <input type="submit" value="兑换">
	</div>
	<br/><br/>
</form>
	<a href="#" onClick="javascript:history.back(-1);">返回上层</a>
    <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a> 

HTML;
echo $dhhtml;
?>

