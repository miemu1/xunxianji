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
    <body>
    <form method="post">
        <label>密码: <input type="password" name="password"></label>
        <button type="submit">登录</button>
        <?php if (!empty($error)) echo '<p style="color:red">'.htmlspecialchars($error).'</p>'; ?>
    </form>
    </body>
    </html>
    <?php
    exit();
}

$tableList = ['npc', 'guaiwu', 'zhuangbei', 'daoju', 'yaodan', 'yaopin'];
$table = isset($_GET['table']) ? $_GET['table'] : '';
$action = isset($_GET['action']) ? $_GET['action'] : 'list';

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
    echo '<p>插入成功。</p><p><a href="index.php?table='.$table.'">返回</a></p>';
    exit();
}

if ($table && $action === 'add') {
    $stmt = $pdo->query('SHOW COLUMNS FROM `'.$table.'`');
    $fields = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo '<h2>新增 '.$table.'</h2>';
    echo '<form method="post" action="index.php?table='.$table.'&action=insert">';
    foreach ($fields as $f) {
        if ($f['Extra'] === 'auto_increment') continue;
        echo '<div><label>'.$f['Field'].': <input name="'.$f['Field'].'"></label></div>';
    }
    echo '<button type="submit">保存</button>';
    echo '</form>';
    exit();
}

if ($table) {
    $stmt = $pdo->query('SELECT * FROM `'.$table.'` LIMIT 20');
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo '<h2>'.htmlspecialchars($table).' 列表</h2>';
    echo '<a href="index.php?table='.$table.'&action=add">新增记录</a> | <a href="index.php">返回</a>';
    echo '<table border="1" cellpadding="5" cellspacing="0">';
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
    exit();
}
?>
<!DOCTYPE html>
<html lang="zh-CN">
<meta charset="utf-8">
<title>开发者工具</title>
<body>
<h2>请选择要管理的表</h2>
<ul>
<?php foreach ($tableList as $t): ?>
    <li><a href="index.php?table=<?php echo $t; ?>"><?php echo $t; ?></a></li>
<?php endforeach; ?>
</ul>
</body>
</html>
