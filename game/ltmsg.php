﻿<?php
include "../pdo.php" ;
require_once '../class/encode.php';
$sid = $_GET['sid'];
$encode = new \encode\encode();
if (!isset($_GET['ltsl'])){
    $ltsl = 10;
}else{
    $ltsl = $_GET['ltsl'];
}
$sql = "SELECT * FROM ggliaotian ORDER BY id DESC LIMIT $ltsl";
$ltcxjg = $dblj->query($sql);
$lthtml='<link rel="stylesheet" href="../css/gamecss.css">';
if ($ltcxjg){
    $ret = $ltcxjg->fetchAll(PDO::FETCH_ASSOC);
    for ($i=0;$i < count($ret);$i++){
        $uname = $ret[count($ret) - $i-1]['name'];
        $umsg = $ret[count($ret) - $i-1]['msg'];
        $uid = $ret[count($ret) - $i-1]['uid'];
        $ucmd = $encode->encode("cmd=getplayerinfo&uid=$uid&sid=$sid");
        if ($uid !='0'){
            $lthtml .="<a href='?cmd=$ucmd''>$uname</a>:$umsg<br/>";
        }else{
            $lthtml .="<div class='hpys' style='display: inline'>$uname:</div>$umsg<br/>";
//主页聊天系统：设置【公共】
        }

    }
    echo $lthtml;
}
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/ 12/01
 * Time: 21:04
 */?>