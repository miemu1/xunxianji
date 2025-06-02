<?php

$player = player\getplayer($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$taskhtml = '';
$rwztt='';
$npc = player\getnpc($nid,$dblj);

if ($npc->taskid!=''){
    $taskarr = explode(',',$npc->taskid);
    $taskhtml = '';
    for ($i=0;$i<count($taskarr);$i++){
        $task = \player\gettask($taskarr[$i],$dblj);
        $rwztt ='';
        if (!$task){
            continue;
        }
        if ($task->rwlx==1 || $task->rwlx==2){
            $reztarr = array('普通','日常');
            $rwzttext = $reztarr[ $task->rwlx - 1];
            $nowptrw = \player\getplayerrenwuonce($sid,$task->rwid,$dblj);
            if (!$nowptrw){
                if ($task->rwzl != 3){
                    
                    $rwztt = $rwztt."[$rwzttext]";
					$rwztt = '<img src="images/wen.gif" />';
                }elseif($task->rwyq == $nid){
                    
                    $rwztt = $rwztt."[$rwzttext]";
					$rwztt = '<img src="images/wen.gif" />';
                }else{
                    continue;
                }
            }else{
                if($nowptrw->rwzt==2){
                    if ($nowptrw->rwzl != 3){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[$rwzttext]";
                    }elseif($nowptrw->rwcount == $nid){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[$rwzttext]";
                    }else{
                        continue;
                    }
                }else{
                    continue;
                }
            }
        }

        if ($task->rwlx==3){
            $nowzxrw = \player\getplayerrenwuonce($sid,$task->rwid,$dblj);
            if ($nowzxrw){
                if ($nowzxrw->rwzt==2){
                    if ($nowzxrw->rwzl != 3){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[主线]";
                    }elseif($nowzxrw->rwcount == $nid){
                        $rwztt = '<img src="images/tan.gif" />';
                        $rwztt = $rwztt . "[主线]";
                    }else{
                        continue;
                    }
                }else{
                    continue;
                }
            }else{
                if ($task->lastrwid <= 0){
                    if ($task->rwzl != 3){
                        $rwztt = '<img src="images/wen.gif" />';
                        $rwztt = $rwztt.'[主线]';
                    }elseif($task->rwyq == $nid){
                        $rwztt = '<img src="images/wen.gif" />';
                        $rwztt = $rwztt.'[主线]';
                    }else{
                        continue;
                    }

                }else{
                    $lastrw = \player\getplayerrenwuonce($sid,$task->lastrwid,$dblj);
                    if ($lastrw){
                        if ($lastrw->rwzt==3){
                            if ($task->rwzl != 3){
                                $rwztt = '<img src="images/wen.gif" />';
                                $rwztt = $rwztt.'[主线]';
                            }elseif($task->rwyq == $nid){
                                $rwztt = '<img src="images/wen.gif" />';
                                $rwztt = $rwztt.'[主线]';
                            }else{
                                continue;
                            }
                        }else{
                            continue;
                        }
                    }else{
                        continue;
                    }
                }
            }
        }
        $rwcmd = $encode->encode("cmd=task&nid=$nid&rwid=$taskarr[$i]&sid=$sid");
        $taskhtml .=<<<HTML
        <a href="?cmd=$rwcmd">$task->rwname</a>$rwztt<br/>
HTML;
    }
}
if ($taskhtml!=''){
    $taskhtml = '<br/>'.$taskhtml;
}
$gnhtml='';
if ($npc->muban != ''){
    $mubanitem =  explode(',',$npc->muban);
    foreach ($mubanitem as $muban){
        $muban = iconv('UTF-8','GB2312',$muban);
        if (file_exists("./npc/muban/$muban")){
            include "./npc/muban/$muban";
        }
    }
}

$npchtml =<<<HTML
<IMG width="30" height="30" src="./npc/$npc->nname.png"><br/>
        昵称:$npc->nname<br/>
        性别:$npc->nsex<br/>
        信息:$npc->ninfo<br/>
        $taskhtml
        $gnhtml<br/>
		<a href="#" onClick="javascript:history.back(-1);" >返回上层</a><!--居左-float:left;-->
        <a href="game.php?cmd=$gonowmid" style="float:right;" >返回游戏</a>
HTML;
echo $npchtml
?>
