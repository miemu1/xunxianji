<?php

$rwhtml .= <<<HTML
<IMG width='280' height='140' src='./images/rw.png'src="./images/rw.png" style="border-radius: 8px;">
HTML;

$playertask = \player\getplayerrenwu($sid,$dblj);
$gonowmid = $encode->encode("cmd=gomid&newmid=$player->nowmid&sid=$sid");
$mytaskinfo = '';
$taskhtml='';
$rwzt='';
$rwhtml;
for ($n=0;$n<count($playertask);$n++){
    $rwid = $playertask[$n]['rwid'];
    $mytaskinfo = $encode->encode("cmd=mytaskinfo&rwid=$rwid&sid=$sid");
    $rwname = $playertask[$n]['rwname'];
    $rwlx = $playertask[$n]['rwlx'];
	
    if ($rwlx==2 && $playertask[$n]['rwzt']!=3){
        $taskhtml .='[每日]';
    }
    if ($rwlx==3 && $playertask[$n]['rwzt']!=3){
		
        $taskhtml .='[<font class="aa" color="#F3160B">主线</font>]';
    }
    if ($rwlx==1 && $playertask[$n]['rwzt']!=3){
        $taskhtml .='[普通]';
    }
    switch ($playertask[$n]['rwzt']){
        case 1:
            $taskhtml .=<<<HTML
			
            <img src="images/wen.gif"/><a href="?cmd=$mytaskinfo">$rwname</a><br/>
HTML;
            break;
        case 2:
            $taskhtml .=<<<HTML
            <img src="images/tan.gif"/><a href="?cmd=$mytaskinfo">$rwname</a><br/>
HTML;
            break;
        case 3:
            break;
    }
}
$html .= <<<HTML
$rwhtml<br>
$taskhtml
<br/>
<a href="#" onClick="javascript:history.back(-1);"  background-color: #ecf7ed;">返回上层</a>
            <a href="game.php?cmd=$gonowmid" style="float:right;background-color:#cdefea57;" >返回游戏</a>
HTML;
echo $html;