<?php
//error_reporting(0);
require_once 'class/player.php';
require_once 'class/encode.php';
include_once 'pdo.php';

header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");

$encode = new \encode\encode();
$player = new \player\player();
$guaiwu = new \player\guaiwu();
$clmid = new \player\clmid();
$npc = new \player\npc();

$ym = 'game/nowmid.php';
$Dcmd = $_SERVER['QUERY_STRING'];
$pvpts ='';
$tpts = '';
session_start();
$allow_sep = "220";
function getMillisecond() {
    list($t1, $t2) = explode(' ', microtime());
    return (float)sprintf('%.0f',(floatval($t1) + floatval($t2)) * 1000);
}
if (isset($_SESSION["post_sep"]))
{

    if (getMillisecond() - $_SESSION["post_sep"] < $allow_sep)
    {

        $msg = '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">你点击太快了^_^!<br/><a href="?'.$Dcmd.'">继续</a>';
        exit($msg);
    }
    else
    {
        $_SESSION["post_sep"] = getMillisecond();
    }
}
else
{
    $_SESSION["post_sep"] = getMillisecond();
}

parse_str($Dcmd);
if (isset($cmd)){

    if ($cmd == 'cjplayer'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'djinfo'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'zbinfo'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'npc'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'duihuan'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
	if ($cmd == 'shangdian'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    if ($cmd == 'sendliaotian'){
        $Dcmd = $encode->encode($Dcmd);
        header("refresh:1;url=?cmd=$Dcmd");
        exit();
    }
    $Dcmd = $encode->decode($cmd);
//    var_dump($Dcmd);
    parse_str($Dcmd);
    switch ($cmd){
        case 'cj':
            $ym = 'game/cj.php';
            break;
        case 'login';
            $player = \player\getplayer($sid,$dblj);
            $gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
            $nowdate = date('Y-m-d H:i:s');
            $sql = "update game1 set endtime='$nowdate',sfzx=1 WHERE sid='$sid'";
            $cxjg = $dblj->exec($sql);
            header("refresh:1;url=?cmd=$gonowmid");
            exit();
            break;
        case 'zhuangtai';
            $ym = 'game/zhuangtai.php';
            break;
        case 'cjplayer':

            if (isset($token) && isset($username) && isset($sex)){
				
				//判断名字重复
				 $sql = "select * from game1 where uname=?";
                 $stmt = $dblj->prepare($sql);
                 $stmt->execute(array($username));
                 $stmt->bindColumn('uname',$cxusername);
                 $ret = $stmt->fetch(PDO::FETCH_ASSOC);
				 
				 if($ret){
                  $tishi = '玩家:【'.$cxusername.'】已经存在<br><br>';
				  $ym = 'game/cj.php';
				  break;
				 }
				//判断名字长短
                if(strlen($username)<6 || strlen($username)>12){
                    //echo "用户名不能太短或者太长";
					$tishi = "用户名不能太短或者太长<br><br>";
                    $ym = 'game/cj.php';
                    break;
                }
                $username = htmlspecialchars($username);
                $sid = md5($username.$token.'229');//初始复活点，非常重要，必须设置对
                $sql="select * from game1 where token='$token'";
                $cxjg = $dblj->query($sql);
                $cxjg->bindColumn('sid',$player->sid);
                $ret = $cxjg->fetch(PDO::FETCH_ASSOC);
                $nowdate = date('Y-m-d H:i:s');
                if ($player->sid ==''){
                    $gameconfig = \player\getgameconfig($dblj);
                    $firstmid = $gameconfig->firstmid;
                    $sql = "insert into game1(token,sid,uname,ulv,uyxb,uczb,uexp,uhp,umaxhp,ugj,ufy,uwx,usex,vip,nowmid,endtime,sfzx,shenfen) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    $stmt = $dblj->prepare($sql);
                    $stmt->execute(array($token,$sid,$username,'1','2000','100','0','35','35','12','5','0',$sex,'0',$firstmid,$nowdate,$shenfen,$shenfen));//进入参数设置
//进入参数设置
                    $gonowmid = $encode->encode("cmd=gomid&newmid=$gameconfig->firstmid&sid=$sid");
                    echo '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">';
					
                    echo $username."<font color=#8EBE67>欢</font><font color=#9FB85B>迎</font><font color=#B0B24F>来</font><font color=#C1AC43>到</font><font color=#D2A637>寻</font><font color=#E3A02B>仙</font><font color=#F49A1F>纪,正在加载……</font>";
					
                    $sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
                    $stmt = $dblj->prepare($sql);
                    $stmt->execute(array('【系统】',"万中无一的{$username}踏上了仙途",'0'));//系统公告
					
                    header("refresh:2;url=?cmd=$gonowmid");//延迟时间
                }
                exit();
            }
            break;
        case 'gomid':
            $ym = 'game/nowmid.php';
            break;
        case 'getginfo':
            $ym = 'game/ginfo.php';
            break;
        case 'pve':
            $ym = 'game/pve.php';
            break;
        case 'pvp':
            $ym = 'game/pvp.php';
            break;
        case 'pvegj':
            $ym = 'game/pve.php';
            break;
		case 'pvbgj':
            $ym = 'game/boss.php';
            break;
        case 'sendliaotian':
            if (isset($ltlx) && isset($ltmsg)){
                switch ($ltlx){
                    case 'all':
                        $player = player\getplayer($sid,$dblj);
                        if ($player->uname!=''){
                            $ltmsg = htmlspecialchars($ltmsg);
                            $sql = "insert into ggliaotian(name,msg,uid) values(?,?,?)";
                            $stmt = $dblj->prepare($sql);
                            $exeres = $stmt->execute(array($player->uname,$ltmsg,$player->uid));
                        }
                        $ym = 'game/liaotian.php';
                        break;
                    case "im":
                        $player = player\getplayer($sid,$dblj);
                        if ($player->uname!=''){
                            $ltmsg = htmlspecialchars($ltmsg);
                            $sql = "insert into imliaotian(name,msg,uid,imuid) values('$player->uname','$ltmsg',$player->uid,{$imuid})";

                            $cxjg = $dblj->exec($sql);
                            
                        }
                        $ym = 'game/liaotian.php';
                        break;
                }
            }
            break;
        case 'liaotian':
            $ym ='game/liaotian.php';
            break;
        case 'getplayerinfo':
            $ym ='game/otherzhuangtai.php';
            break;
        case 'zbinfo':
            $ym = 'game/zbinfo.php';
            break;
        case 'npc':
            $ym = "npc/npc.php";
            break;
        case 'paihang';
            $ym = 'game/paihang.php';
            break;
        case 'chakanzb':
            $ym = 'game/zbinfo.php';
            break;
        case 'djinfo':
            $ym = 'game/djinfo.php';
            break;
        case 'getbagzb':
            $ym = 'game/bagzb.php';
            break;
        case 'getbagyp':
            $ym = 'game/bagyp.php';
            break;
        case 'getbagyd':
            $ym = 'game/bagyd.php';
            break;
		
		case 'getbagjn':
            $ym = 'game/bagjn.php';
            break;
        case 'xxzb':
            $ym = 'game/zhuangtai.php';
            break;
        case 'setzbwz':
            $ym = 'game/zhuangtai.php';
            break;
        case 'allmap':
            $ym = 'game/allmap.php';
            break;
        case 'delezb':
            $ym = 'game/bagzb.php';
            break;
        case 'getbagdj':
            $ym = 'game/bagdj.php';
            break;
        case 'upzb':
            $ym = 'game/zbinfo.php';
            break;
        case 'goxiulian':
            $ym = 'game/xiulian.php';
            break;
		case 'wgxiulian':
            $ym = 'game/wugong.php';
            break;
		case 'wgxl':
            $ym = 'game/wugong.php';
            break;
		case 'taopao':
            $ym = 'game/boss.php';
            break;
		case 'jswg':
            $ym = 'game/wugong.php';
            break;
		case 'xxwg':
            $ym = 'game/xxwg.php';
            break;
        case 'startxiulian':
            $ym = 'game/xiulian.php';
            break;
        case 'endxiulian':
            $ym = 'game/xiulian.php';
            break;
        case 'task':
            $ym = 'game/task.php';
            break;
        case 'mytask':
            $ym = 'game/playertask.php';
            break;
        case 'mytaskinfo':
            $ym = 'game/playertaskinfo.php';
            break;
        case 'boss':
            $ym = 'game/bossinfo.php';
            break;
        case 'ypinfo':
            $ym = 'game/ypinfo.php';
            break;
		case 'ydinfo':
            $ym = 'game/ydinfo.php';
            break;
        case 'pvb':
            $ym = 'game/boss.php';
            break;
        case 'chongwu':
            $ym = 'game/chongwu.php';
            break;
        case 'jninfo':
            $ym = 'game/jninfo.php';
            break;
        case "zbinfo_sys":
            $ym = 'game/zbinfo_sys.php';
            break;
        case "tupo":
            $ym = 'game/tupo.php';
            break;
        case "fangshi":
            $ym = "game/fangshi.php";
            break;
        case "club":
            $ym = "game/club.php";
            break;
        case "clublist":
            $ym = "game/clublist.php";
            break;
        case "duihuan":
            $ym = "game/duihuan.php";
            break;
        case "im":
            $ym = "game/im.php";
            break;
		case "shangdian":
            $ym = "game/shangdian.php";
            break;
		case "qydt":
            $ym = "game/qydt.php";
			break;
		case "ditu":
            $ym = "dt/ditu.html";
			break;
		case "gaiming":
            $ym = "npc/muban/gaiming.php";
			break;
		case "czbgm":
            $ym = "npc/muban/czbgm.php";
			break;
		case "tianfu":
            $ym = "game/tianfu.php";
			break;
		case "taozhuang":
            $ym = "game/taozhuang.php";
			break;
    }
    if (!isset($sid) || $sid=='' ){

        if ($cmd!='cj' && $cmd!=='cjplayer'){
            header("refresh:1;url=index.php");
            exit();
        }
		 
         
		
    }else{
		 

         if ($cmd != 'pve' && $cmd!='pvegj'){//打开pve的逻辑，添加判断试试看
		 
		     // $guaiwu = player\getguaiwu($gid,$dblj);
		     // $gwhp = $guaiwu->ghp ;
		     // if ( $gwhp <= 0 ){
             $sql = "delete from midguaiwu where sid='$sid'";//删除地图该玩家已经被攻击怪物，这里应该在加个判断，不然直接接触就删，不ok
             $dblj->exec($sql);//关闭数据库
		    }
			
		if ($cmd != 'pvb' && $cmd!='pvbgj'){
			$sql = "delete from boss where sid='$sid'";
		    $dblj->exec($sql);}
		
		
        $player = \player\getplayer($sid,$dblj);
        if ($player->ispvp!=0){
            $pvper = \player\getplayer1($player->ispvp,$dblj);
            $pvpcmd = $encode->encode("cmd=pvp&uid=$pvper->uid&sid=$sid");
            $pvpcmd = "<a href='?cmd=$pvpcmd'>还击</a>";
            $pvpts = "$pvper->uname 正在攻击你：$pvpcmd<br/>";
        }//8开启8个阶段的触发突破
        if (\player\istupo($sid,$dblj) !=8 && $player->uexp >= $player->umaxexp){
            $tupocmd = $encode->encode("cmd=tupo&sid=$sid");//判断触发
            $tupocmd = "<a href='?cmd=$tupocmd'><font color='#FF0000'>突破</font></a>";
            $tpts =  "<strong style='background:#FFC100'><font color='#000000'>你需要突破,否则不能获得经验:$tupocmd<hr></font></strong>";
        }
        $nowdate = date('Y-m-d H:i:s');
        $second=floor((strtotime($nowdate)-strtotime($player->endtime))%1000);//获取刷新间隔
        if ($second>=900){
            echo '<meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">';
            echo $player->uname."离线时间过长，请重新登陆";
            header("refresh:1;url=index.php");
            exit();
        }else{
            $sql = "update game1 set endtime='$nowdate',sfzx=1 WHERE sid='$sid'";
            $dblj->exec($sql);
        }
    }
}else{
    header("refresh:1;url=index.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" content="width=device-width,user-scalable=no" name="viewport">
    <title>寻仙记</title>
    <link rel="stylesheet" href="css/gamecss.css">
</head>
<body>
<div class="main">
<?php
    if (!$ym==''){
        echo$tpts;
        if ($ym!="game/pvp.php"){
            echo $pvpts;
        }
        include "$ym";
    }?>
</div>
</body>

<!-- <script>//F12禁用
    // debug调试时跳转页面,F12被禁用,配合下面
    // var element = new Image();
    // Object.defineProperty(element,'id',{get:function(){window.location.href="index.php"}});
    // console.log(element);
// </script>
 <script>//F12被禁用，配合
      // setInterval(function() {
        // check();
      // }, 2000);
      // var check = function() {
        // function doCheck(a) {
          // if (('' + a / a)['length'] !== 1 || a % 20 === 0) {
            // (function() {}['constructor']('debugger')());
          // } else {
            // (function() {}['constructor']('debugger')());
          // }
          // doCheck(++a);
        // }
        // try {
          // doCheck(0);
        // } catch (err) {}
      // };
      // check();
	  	// document.onkeydown = function(){
    // if(window.event && window.event.keyCode == 123) {
        // alert("这样就没意思了!");
        // event.keyCode=0;
        // event.returnValue=false;
    // }
    // if(window.event && window.event.keyCode == 13) {
        // window.event.keyCode = 505;
    // }
    // if(window.event && window.event.keyCode == 8) {
        // alert(str+"\n请使用Del键进行字符的删除操作！");
        // window.event.returnValue=false;
    // }
// }
  // </script>-->



<div class="footer">
<footer>
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script>

	function changetime(){
	var ary = Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
	var Timehtml = document.getElementById('CurrentTime');
	var date = new Date();
	Timehtml.innerHTML = ''+date.toLocaleString()+' '+ary[date.getDay()];
	}
	window.onload = function(){
	changetime();
	setInterval(changetime,1000);
	}
	</script>
	<div id="CurrentTime"><?php echo date('Y-m-d H:i:s') ?></div>
</footer>
</div>
</html>