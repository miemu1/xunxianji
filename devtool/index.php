<?php
session_start();
require_once __DIR__ . '/config.php';

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
    <style>
        body{font-family:"Microsoft YaHei",sans-serif;background:#f2f2f2;}
        .container{max-width:400px;margin:100px auto;padding:20px;background:rgba(255,255,255,0.8);border-radius:10px;border:1px solid #ccc;backdrop-filter:blur(6px);}
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

$tableList = [
    'npc','guaiwu','boss','bossinfo','zhuangbei','daoju','yaodan','yaopin',
    'wugong','renwu','taozhuang','mid','fangshi_dj','fangshi_sd','fangshi_zb',
    'duihuan','fb','fbmid','gameconfig','jineng','zhiye'
];
$table = isset($_GET['table']) ? $_GET['table'] : '';
$action = isset($_GET['action']) ? $_GET['action'] : 'list';

$style = <<<STYLE
<style>
body{font-family:"Microsoft YaHei",sans-serif;background:#f2f2f2;}
.container{max-width:1000px;margin:50px auto;padding:20px;background:rgba(255,255,255,0.8);border-radius:10px;border:1px solid #ccc;backdrop-filter:blur(6px);}
table{width:100%;border-collapse:collapse;}
th,td{border:1px solid #999;padding:5px;text-align:left;}
label{display:block;margin-bottom:10px;}
</style>
STYLE;
$header = '<!DOCTYPE html><html lang="zh-CN"><meta charset="utf-8"><title>开发者工具</title>'.$style.'<body><div class="container">';
$footer = '</div></body></html>';

if (!in_array($table, $tableList)) {
    $table = '';
}

if ($table && $action === 'insert' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $cols = [];
    $vals = [];
    foreach ($_POST as $k => $v) {
        $cols[] = '`'.$k.'`';
        $vals[':'.$k] = $v;
    }
    $sql = 'INSERT INTO `'.$table.'` (' . implode(',', $cols) . ') VALUES (' . implode(',', array_keys($vals)) . ')';
    $stmt = $pdo->prepare($sql);
    $stmt->execute($vals);
    echo $header;
    echo '<p>插入成功。</p><p><a href="index.php?table='.$table.'">返回</a></p>';
    echo $footer;
    exit();
}

if ($table && $action === 'add') {
    $stmt = $pdo->query('SHOW COLUMNS FROM `'.$table.'`');
    $fields = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo $header;
    echo '<h2>新增 '.$table.'</h2>';
    echo '<form method="post" action="index.php?table='.$table.'&action=insert">';
    foreach ($fields as $f) {
        if ($f['Extra'] === 'auto_increment') continue;
        echo '<div><label>'.$f['Field'].': <input name="'.$f['Field'].'"></label></div>';
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
    echo '<h2>'.htmlspecialchars($table).' 列表</h2>';
    echo '<a href="index.php?table='.$table.'&action=add">新增记录</a> | <a href="index.php">返回</a>';
    echo '<table>'; 
    if ($rows) {
        echo '<tr>';
        foreach (array_keys($rows[0]) as $c) {
            echo '<th>'.htmlspecialchars($c).'</th>';
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
?>
<?php echo $header; ?>
<h2>请选择要管理的表</h2>
<ul>
<?php foreach ($tableList as $t): ?>
    <li><a href="index.php?table=<?php echo $t; ?>"><?php echo $t; ?></a></li>
<?php endforeach; ?>
</ul>
<?php echo $footer; ?>
