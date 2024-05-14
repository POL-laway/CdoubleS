<?php
include "connection.php";

$tipo=$_POST["tipo"];
$nome=$_POST["nome"];
$cognome=$_POST["cognome"];
$nazione=$_POST["nazione"];
$fromCodice=$_POST["fromCodice"];
$toCodice=$_POST["toCodice"];
$ToDataNascita=$_POST["ToDataNascita"];
$FromDataNascita=$_POST["FromDataNascita"];
$FromDataMorte=$_POST["FromDataMorte"];
$ToDataMorte=$_POST["ToDataMorte"];


if ($tipo!="Seleziona"){
	$tipo=" tipo='" . $tipo . "'";
}else{$tipo= " tipo!= ''";}

if ($nome!=""){
	$nome=" nome='" . $nome . "'";
}else{$nome= " nome!= ''";}

if ($cognome!=""){
	$cognome=" cognome='" . $cognome . "'";
}else{$cognome= " cognome!= ''";}

if ($nazione!=""){
	$nazione=" nazione='" . $nazione . "'";
}else{$nazione= " nazione!= ''";}

if ($fromCodice != 0 and $toCodice!= 0 ){
	$codice=" codice BETWEEN " . $fromCodice . " AND " . $toCodice;
}else{$codice= " codice > 0";} 

if ($FromDataMorte != "" and $ToDataMorte != "") {
	$dataMorte=" (dataMorte BETWEEN '" . $FromDataMorte . "' AND '" . $ToDataMorte . "')";
}else{$dataMorte= " (dataMorte IS NULL OR dataMorte > 0000-00-00)";} 

if ($FromDataNascita != "" and $ToDataNascita != "") {
	$dataNascita=" (dataNascita BETWEEN '" . $FromDataNascita . "' AND '" . $ToDataNascita . "')";
}else{$dataNascita= " (dataNascita IS NULL OR dataNascita > 0000-00-00)";} 






	 $sql="SELECT * FROM Autore WHERE" . $tipo . " AND " . $nome . " AND " . $cognome . " AND " . $nazione . " AND " . $codice . " AND " . $dataMorte . " AND " . $dataNascita;
	
	$ris=mysqli_query($conn, $sql);
	$str="";
$str= "<table id='tabella'>
		<tr class='title'>
	<td><b>Codice</b></td>
	<td><b>Nome</b></td>
	<td><b>Cognome</b></td>
	<td><b>Nazione</b></td>
	<td><b>Data di Nascita</b></td>
    <td><b>Tipo</b></td>
    <td><b>Data di Morte</b></td>";
	
	$cont=0;
while ($riga=mysqli_fetch_array($ris)){
	
	$cont +=1;
	$str.= "<tr>";
	$str.= "<td>" . $riga["codice"] . "</td>";
	$str.= "<td>" . $riga["nome"] . "</td>";
	$str.= "<td>" . $riga["cognome"] . "</td>";
	$str.= "<td>" . $riga["nazione"] . "</td>";
	$str.= "<td>" . $riga["dataNascita"] . "</td>";
    $str.= "<td>" . $riga["tipo"] . "</td>";
    $str.= "<td>" . $riga["dataMorte"] . "</td>";
}
	echo "La query ha restituito <b>" . $cont . "</b> record!";
	echo $str; 
mysqli_close($conn);



?>

