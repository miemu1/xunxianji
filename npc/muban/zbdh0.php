<?php
/**
 * Created by PhpStorm.
 * User: �� �� һ ����www. 9 0 1 75.com
 * Date: 2016/8/16
 * Time: 19:37
 */
$jnlistcmd = $encode->encode("cmd=npc&nid=$nid&canshu=jnlist&sid=$sid");
$jnlist='<br/>========�һ��б�========<br/>';
$gnhtml = <<<HTML
<br/><a href="?cmd=$jnlistcmd">װ���һ�</a><br/>
HTML;
$suoyin = 0;
if (isset($canshu)){
    switch ($canshu){
        case 'jnlist':
            $retjn = \player\getjineng_all($dblj);
            foreach ($retjn as $jn){
                $suoyin += 1;
                $jnid = $jn['jnid'];
                $jnname= $jn['jnname'];
                $jncmd = $encode->encode("cmd=jninfo&jnid=$jnid&sid=$sid");
                $jnlist .= "[$suoyin]<a href='?cmd=$jncmd'>$jnname</a><br/>";
            }
            $gnhtml = $jnlist;
            break;
    }

}