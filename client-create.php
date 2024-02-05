<?php
require_once('Classe/CRUD.php');
$crud = new CRUD;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creer un client</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form action="client-store.php" method="post">
        <label>Nom
            <input type="text" name="nom">
        </label>
        <label>Adresse
            <input type="text" name="adresse">
        </label>
       
        <label>Phone
            <input type="text" name="phone">
        </label>
       
        <label>Courriel
            <input type="email" name="courriel">
        </label>
        <input type="submit" value="save">
    </form>
    
</body>
</html>