<?php
    $user_name = $_POST['user_name'];
    $email = $_POST['email'];
    $phone_number = $_POST['phone_number'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    $dbh = new pdo ('mysql:host=localhost;dbname=form', "root", "");

    if($password == $confirm_password){
        $password= md5($password);
        $dbh->query("INSERT INTO users (user_name,email,phone_number,password) VALUE ('$user_name','$email', '$phone_number', '$password')");
    }else{
        echo 'Пароли не совпадают';
    }
?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Регистрация</title>
</head>
<body>
    <form action="index.php" method="post">
        <input type="text" name="user_name" placeholder="Имя" required>
        <input type="email" name="email" placeholder="Почта" required>
        <input type="tel" name="phone_number" placeholder="Телефон" required>
        <input type="password" name="password" placeholder="Пароль" required>
        <input type="password" name="confirm_password" placeholder="Подтвердите пароль" required>
        <input type="submit" value="Зарегистрироваться">
        <a href="authorization.php"><input type="button" value="Авторизация" src="authorization.php"></a>
    </form>
</body>
</html>