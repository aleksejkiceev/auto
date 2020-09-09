<?php
session_start();

$dbh = new pdo ('mysql:host=localhost;dbname=forma', "root", "");

$email = $_POST['email'];
$password = $_POST['password'];

$stmt = $dbh->query('SELECT email, password FROM `users` WHERE email="'.$email.'"');

$result = $stmt->fetch();


if ($_POST['submit'])
    {
    if(md5($password) == $result['password']){
        $_SESSION['auth'] = true;
        header("Location: close_page.php");
        exit;
    }else echo 'Такого пользователя не существует';
}
?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="author.css">
    <title>Авторизация</title>
</head>
<body>
<div class="container">
    <form class="form">

    <input type="email" name="email" placeholder="Почта" required>
    <input type="password" name="password" placeholder="Пароль" required>
    <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
    <input type="submit" value="Войти" name="submit">
    <a href="index.php"><input type="button" value="Регистрация" src="authorization.php"></a>
</form>
</div>
</body>
</html>