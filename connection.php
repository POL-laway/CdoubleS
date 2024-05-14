<html>
<?php
$hostname="localhost";
$username="root";
$password="root";

$conn=mysqli_connect($hostname, $username, $password);

if (!$conn) {
		die("errore nella connesione; tipologia errore: " . mysqli_connect_error());
}

//echo ("connesione effettuata");


$db=mysqli_select_db($conn, "my_paolocapelli");
if (!$db){
		die("errore nella connesione al database: " . mysqli_error());
}

//echo("connesione al db effettuata.");
?>
</html>