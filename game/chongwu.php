<?php

$player = \player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$cwhtml='';
$cwnamehtml= '';
$chouqucmd = $encode->encode("cmd=chongwu&canshu=chouqu&sid=$sid");
$queren = $encode->encode("cmd=chongwu&canshu=queren&sid=$sid");

//这里想搭建个成功提示框
$tskcg = <<<HTML
<html> 
<body>
<!--这里我进行隐藏，用于下面模拟点击-->
    <font id="success"></font>
	
    <!--<input type="button" id="error" value="错误" />
    <input type="button" id="load" value="正在加载" />
    <input type="button" id="tip" value="提示" />-->

<script type="text/javascript">
//多少秒模拟点击,自动执行点击input,也就是ID
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("success").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("success").dispatchEvent(e);
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
   popup({type:'tip',msg:"提示信息",delay:3000,bg:true,clickDomCancel:true});
})
</script>
</body>
</html>
HTML;


$tsksb = <<<HTML
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
   popup({type:'error',msg:"白嫖失败!",delay:2000,bg:true,clickDomCancel:true});
})
</script>
</body>
HTML;
//未修改完成
$cwcmd = $encode->encode("cmd=chongwu&sid=$sid");
$qr1 =<<<html
<div align="center">
<a id="load" href="?cmd=$chouqucmd"style="color: #fd0000;">确认抽取</a>
<a id="load" href="?cmd=$cwcmd">取消抽取</a><br>
<br>
</div>
html;

if (isset($canshu)){
    switch ($canshu) {
		case 'queren':
		$qr = "$qr1";
		 break;
		
        case 'chouqu':
            if (\player\changeczb(2, 50, $sid, $dblj)) {
                \player\addchongwu($sid, $dblj);
				$tscg .= "".$tskcg."";
            } else {
              //  echo "魔石不足50<br/>";
				$tssb .= "".$tsksb."";
            }
            break;
        case 'chuzhan':
            \player\changeplayersx('cw',$cwid,$sid,$dblj);
            $player = \player\getplayer($sid,$dblj);
            break;
        case 'shouhui':
            \player\changeplayersx('cw',0,$sid,$dblj);
            $player = \player\getplayer($sid,$dblj);
            break;
        case 'fangsheng':
            \player\delechongwu($cwid,$sid,$dblj);
            break;
        case 'cwinfo':
            $chongwu = \player\getchongwu($cwid, $dblj);
            $pzarr = array('<font color=#00C000>普通</font>', '<font color=#1a80da>优秀</font>', '<font color=#a08f0a>卓越</font>', '<font color=#14b8b9>非凡</font>', '<font color=#f16613>完美</font>', '<font color=#ec0909>逆天</font>');
            $cwpz = $pzarr[$chongwu->cwpz];
            $chongwu->cwpz = $chongwu->cwpz * 10;
			$ztcmd = $encode->encode("cmd=zhuangtai&sid=$sid");
            $cwinfo = $encode->encode("cmd=chongwu&cwid=$player->cw&canshu=cwinfo&sid=$sid");
            $cwid = $cw['cwid'];
            $gm =  $encode->encode("cmd=czbgm&canshu2=gaiming2&sid=$sid");
			$sz =  $encode->encode("cmd=taozhuang&sid=$sid");
            $cwhtml = <<<HTML
			<a href="?cmd=$ztcmd">角色</a><a href="?cmd=$cwinfo"><font color="#9c27b0">宠物</font></a><a href="?cmd=$sz">神装</a><a href="?cmd=$gm">改名</a><br/>
            名字:[$chongwu->cwname]<br/>
            等级:$chongwu->cwlv<br/>
            品质:$cwpz<br/>
            经验:$chongwu->cwexp/$chongwu->cwmaxexp<br/>
            气血:($chongwu->cwhp/$chongwu->cwmaxhp)<br/>
            攻击:$chongwu->cwgj<br/>
            防御:$chongwu->cwfy<br/>
            暴击:$chongwu->cwbj<br/>
            吸血:$chongwu->cwxx<br/>
            <hr>
            气血成长:$chongwu->uphp<br/>
            攻击成长:$chongwu->upgj<br/>
            防御成长:$chongwu->upfy<br/>
            品质[$cwpz]在升级时加成$chongwu->cwpz%<br/>
            <hr>
            <a href="#" onClick="javascript:history.back(-1);" style="background-color: #cff3d2;">返回上层</a>
            <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cff3d2;color: #755d5d;" >返回游戏</a>
HTML;
            echo $cwhtml;
            exit();
            break;
    }
}

$allcw = \player\getchongwuall($sid,$dblj);
if ($allcw){
    foreach ($allcw as $cw){
        $cwid = $cw['cwid'];
        $czcmd='';
        if ($cwid!=$player->cw){
            $czcmd = $encode->encode("cmd=chongwu&canshu=chuzhan&cwid=$cwid&sid=$sid");
            $fscmd = $encode->encode("cmd=chongwu&canshu=fangsheng&cwid=$cwid&sid=$sid");
            $czcmd = '<a href="?cmd='.$czcmd.'">出战</a>';
            $fscmd = '<a href="?cmd='.$fscmd.'">放生</a>';
            $gncmd = $czcmd.$fscmd;
        }else{
            $shcmd = $encode->encode("cmd=chongwu&canshu=shouhui&cwid=$cwid&sid=$sid");
            $shcmd = '<a href="?cmd='.$shcmd.'">收回</a>';
            $gncmd = '<a style="background-color: #ef0a0a;color: #ecf3ea;border-radius:10px;">(已出战)</a>'.$shcmd;
        }
        $cwinfo = $encode->encode("cmd=chongwu&cwid=$cwid&canshu=cwinfo&sid=$sid");
		$chongwu = \player\getchongwu($cwid, $dblj);
        $sc = array('#00C000', '#1a80da', '#a08f0a', '#14b8b9', '#f16613', '#ec0909');
		$pz = array('普通', '优秀', '卓越', '非凡', '完美', '逆天');
        $cwsc = $sc[$chongwu->cwpz];//宠物色彩
		$cwpinzhi = $pz[$chongwu->cwpz];//宠物品质
        $cwnamehtml.="[$cwpinzhi]".'<a href="?cmd='.$cwinfo.'"><font color='.$cwsc.'>'.$cw['cwname'].'</font></a>'.$gncmd.'<br/>';
        
    }
}else{
    $cwnamehtml= '你当前没有宠物';
}

$cwhtml = <<<HTML
<IMG width='280' height='140' src='./images/cw.png'src="./images/rw.png" style="border-radius: 8px;">
$cwnamehtml
$tssb
$tscg
<br/><div align="center">
$qr
<a id="load" href="?cmd=$queren"style="color: #18a558;">抽取宠物[魔石50]</a></div>
<br/>
<a href="#" onClick="javascript:history.back(-1);" style="">返回上层</a>
<a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>

            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0" />
            <link rel="stylesheet" type="text/css" href="./chajian/tishikuang/style/dialog.css">
		    <script src="./chajian/tishikuang/javascript/zepto.min.js"></script>
             <script type="text/javascript" src="./chajian/tishikuang/javascript/dialog.min.js"></script>
             <script type="text/javascript">
               $('#load').click(function(){
               popup({type:'load',msg:"请等待",delay:1500,callBack:function(){
           	  popup({type:"success",msg:"加载成功",delay:1000});
                 }});
                  })
            </script>
HTML;
echo $cwhtml;