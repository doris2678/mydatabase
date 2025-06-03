<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>刪除品項111</title>
</head>
<body>
    <h1>刪除品項</h1>
    <?php
    $dsn = "mysql:host=localhost;dbname=store;charset=utf8";
    $pdo = new PDO($dsn, 'root', '');
    $id = $_GET['id'] ?? 0;
    $item= $pdo->query("SELECT * FROM items WHERE id='$id'")->fetch(PDO::FETCH_ASSOC);
    if (!$item) {
        echo "<h2>品項不存在</h2>";
        exit;
    }
    ?>
    <form action="./api/delete_item.php" method="post">
        <label for="name">品項名稱:</label>
        <input type="text" name="name" id="name" value="<?=$item['name'];?>" required>
        <br>
        <label for="price">價格:</label>
        <input type="number" name="price" id="price" value="<?=$item['price'];?>" required>
        <br>
        <label for="cost">成本:</label>
        <input type="text" name="cost" id="cost" value="<?=$item['cost'];?>" required>
        <br>
        <label for="stock">庫存:</label>
        <input type="number" name="stock" id="stock" value="<?=$item['stock'];?>" required>
        <br>
        <input type="hidden" name="id" value="<?=$item['id'];?>">
        <button type="submit">刪除</button>
    </form>
</body>
</html>