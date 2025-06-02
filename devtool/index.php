<?php
session_start();
require_once __DIR__ . '/config.php';

// 生成随机渐变背景
function random_gradient() {
    $c1 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
    $c2 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
    $c3 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
    $angle = mt_rand(0, 360);
    return "linear-gradient({$angle}deg, {$c1}, {$c2}, {$c3})";
}

function redirect($url) {
    header('Location: ' . $url);
    exit();
}

if (isset($_POST['password'])) {
    if ($_POST['password'] === $dev_password) {
        $_SESSION['devtool'] = true;
        redirect('index.php');
    } else {
        $error = '密码错误';
    }
}

if (!isset($_SESSION['devtool'])) {
    ?>
    <!DOCTYPE html>
    <html lang="zh-CN">
    <meta charset="utf-8">
    <title>开发者工具登录</title>
    <?php $bg = random_gradient(); ?>
    <style>
        body{font-family:"Microsoft YaHei",sans-serif;background:<?php echo $bg; ?>;min-height:100vh;margin:0;}
        .container{max-width:400px;margin:100px auto;padding:20px;background:rgba(255,255,255,0.85);border-radius:10px;border:1px solid rgba(255,255,255,0.6);backdrop-filter:blur(8px);}
        label{display:block;margin-bottom:10px;}
    </style>
    <body>
    <div class="container">
    <form method="post">
        <label>密码: <input type="password" name="password"></label>
        <button type="submit">登录</button>
        <?php if (!empty($error)) echo '<p style="color:red">'.htmlspecialchars($error).'</p>'; ?>
    </form>
    </div>
    </body>
    </html>
    <?php
    exit();
}

$tableList = array(
    'npc' => 'NPC(非玩家角色)',
    'guaiwu' => '怪物',
    'boss' => 'BOSS',
    'bossinfo' => 'BOSS信息',
    'zhuangbei' => '装备',
    'daoju' => '道具',
    'yaodan' => '药丹',
    'yaopin' => '药品',
    'wugong' => '武功',
    'renwu' => '任务',
    'taozhuang' => '套装',
    'mid' => '地图',
    'fangshi_dj' => '方式-道具',
    'fangshi_sd' => '方式-商店',
    'fangshi_zb' => '方式-装备',
    'duihuan' => '兑换',
    'fb' => '副本',
    'fbmid' => '副本地图',
    'gameconfig' => '游戏配置',
    'jineng' => '技能',
    'zhiye' => '职业',
    'addim' => '管理员',
    'midguaiwu' => '地图怪物',
    'zhurenwu' => '主任务',
    'qy' => '区域'
);

$columnLabels = array(
    'npc' => array(
        'id' => '编号',
        'nname' => 'NPC名称',
        'nsex' => 'NPC性别',
        'ninfo' => 'NPC介绍',
        'muban' => '代码文件',
        'taskid' => '任务列表',
        'mz' => '图片',
        'rwqy' => '任务区域'
    )
);

$table = isset($_GET['table']) ? $_GET['table'] : '';
$action = isset($_GET['action']) ? $_GET['action'] : 'list';

$bg = random_gradient();
$style = '<style>
body{font-family:"Microsoft YaHei",sans-serif;background:'.$bg.';min-height:100vh;margin:0;}
.container{max-width:1000px;margin:50px auto;padding:20px;background:rgba(255,255,255,0.85);border-radius:10px;border:1px solid rgba(255,255,255,0.6);backdrop-filter:blur(8px);}
table{width:100%;border-collapse:collapse;}
th,td{border:1px solid #999;padding:5px;text-align:left;}
label{display:block;margin-bottom:10px;}
input[type=text],input[type=password]{width:100%;padding:5px;border-radius:4px;border:1px solid #ccc;}
button{padding:5px 10px;margin-top:10px;}
</style>';
$header = '<!DOCTYPE html><html lang="zh-CN"><meta charset="utf-8"><title>开发者工具</title>'.$style.'<body><div class="container">';
$footer = '</div></body></html>';

if (!array_key_exists($table, $tableList)) {
    $table = '';
}

if ($table && $action === 'insert' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $cols = array();
    $vals = array();
    foreach ($_POST as $k => $v) {
        $cols[] = '`'.$k.'`';
        $vals[':'.$k] = $v;
    }
    $sql = 'INSERT INTO `'.$table.'` (' . implode(',', $cols) . ') VALUES (' . implode(',', array_keys($vals)) . ')';
    $stmt = $pdo->prepare($sql);
    $stmt->execute($vals);

    if ($table === 'npc' && !empty($_POST['muban'])) {
        $file = basename($_POST['muban']);
        $path = dirname(__DIR__).'/npc/muban/'.$file;
        if (!file_exists($path)) {
            $content = "<?php\n// ".(isset($_POST['nname']) ? $_POST['nname'] : '')." 的脚本\n?>\n";
            file_put_contents($path, $content);
        }
    }
    echo $header;
    echo '<p>插入成功。</p><p><a href="index.php?table='.$table.'">返回</a></p>';
    echo $footer;
    exit();
}

if ($table && $action === 'add') {
    $stmt = $pdo->query('SHOW COLUMNS FROM `'.$table.'`');
    $fields = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo $header;
    echo '<h2>新增 '.htmlspecialchars($tableList[$table]).'</h2>';
    echo '<form method="post" action="index.php?table='.$table.'&action=insert">';
    echo '<p><a href="index.php?table='.$table.'">返回列表</a></p>';
    foreach ($fields as $f) {
        if ($f['Extra'] === 'auto_increment') continue;
        $fname = $f['Field'];
        if (isset($columnLabels[$table]) && isset($columnLabels[$table][$fname])) {
            $label = $columnLabels[$table][$fname].'('.$fname.')';
        } else {
            $label = $fname;
        }
        echo '<div><label>'.$label.': <input name="'.$fname.'"></label></div>';
    }
    echo '<button type="submit">保存</button>';
    echo '</form>';
    echo $footer;
    exit();
}

if ($table) {
    $stmt = $pdo->query('SELECT * FROM `'.$table.'` LIMIT 20');
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo $header;
    echo '<h2>'.htmlspecialchars($tableList[$table]).' 列表</h2>';
    echo '<a href="index.php?table='.$table.'&action=add">新增记录</a> | <a href="index.php">返回</a>';
    echo '<table>';
    if ($rows) {
        echo '<tr>';
        foreach (array_keys($rows[0]) as $c) {
            if (isset($columnLabels[$table]) && isset($columnLabels[$table][$c])) {
                $label = $columnLabels[$table][$c].'('.$c.')';
            } else {
                $label = $c;
            }
            echo '<th>'.htmlspecialchars($label).'</th>';
        }
        echo '</tr>';
        foreach ($rows as $r) {
            echo '<tr>';
            foreach ($r as $c) {
                echo '<td>'.htmlspecialchars($c).'</td>';
            }
            echo '</tr>';
        }
    }
    echo '</table>';
    echo $footer;
    exit();
}

echo $header;
?>
<h2>请选择要管理的表</h2>
<ul>
<?php foreach ($tableList as $t => $label): ?>
    <li><a href="index.php?table=<?php echo $t; ?>"><?php echo htmlspecialchars($label); ?></a></li>
<?php endforeach; ?>
</ul>
<?php echo $footer; ?>
