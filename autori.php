<html>
<head>
<link href="stili/stileautori.css" rel="stylesheet">
<script src="jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){

$("#tipo").change(function(){
    var tipo =document.getElementById("tipo").value;
    if(tipo=="Vivo"){
        document.getElementById("FromDataMorte").value="";
        document.getElementById("ToDataMorte").value="";
        document.getElementById("FromDataMorte").disabled=true;
        document.getElementById("ToDataMorte").disabled=true;
    }else{document.getElementById("FromDataMorte").disabled=false;
        document.getElementById("ToDataMorte").disabled=false;
    }
});

$("#cerca").click(function(){
    var tipo =document.getElementById("tipo").value;
    var fromCodice =document.getElementById("fromCodice").value;
    var toCodice =document.getElementById("toCodice").value;
    var nome =document.getElementById("nome").value;
    var cognome =document.getElementById("cognome").value;
    var FromDataNascita =document.getElementById("FromDataNascita").value;
    var ToDataNascita =document.getElementById("ToDataNascita").value;
    var FromDataMorte =document.getElementById("FromDataMorte").value;
    var ToDataMorte =document.getElementById("ToDataMorte").value;
    var nazione =document.getElementById("nazione").value;
    if(tipo=="Seleziona" && fromCodice=="" && toCodice=="" && nome=="" && cognome=="" && FromDataNascita=="" && ToDataNascita=="" && FromDataMorte=="" && ToDataMorte=="" && nazione==""){
       
        alert("Inserisci dei filtri!")
        
        return;

    }
   $("#contenuto").css({"visibility": "hidden","display": "none"});
$.ajax({
    url: 'filtra.php',
    type: 'POST',
    data: {
    tipo: tipo,
    cognome: cognome,
    fromCodice: fromCodice,
    toCodice: toCodice,
    FromDataNascita: FromDataNascita,
    ToDataNascita: ToDataNascita,
    FromDataMorte: FromDataMorte,
    ToDataMorte: ToDataMorte,
    nome: nome,
    nazione: nazione,
    // ... altri parametri
  },
    success: function(str){
        document.getElementById("filtrato").innerHTML = str;
        
    },
    error: function(jqXHR, textStatus, errorThrown){
        console.error("AJAX Error:", textStatus, errorThrown);
        alert ("errore");}
    });
});
});


</script>

</head>
<div id="contenitore">

<label style="font-size: 25pt; color:#F500A2">FILTRA: </label>
            </br>
    <div id="filtro" >
        
        
        
        <div id="f2">
        <div class="codice">
            <label>Codice: </label>
            </br>
            <input type="number"  min="1" step="1" id="fromCodice" placeholder="from"><input type="number" min="1" id="toCodice" placeholder="to">
            </div>
            <div >
            <label>Data di nascita: </label>
            </br>
            <input type="date" id="FromDataNascita"  placeholder="from" >
            <input type="date" id="ToDataNascita"  placeholder="to">
            </div>
            <div >
            <label>Tipo: </label>
            </br>
            <select id="tipo">
                <option>Seleziona</option>
                <option>Vivo</option>
                <option>Morto</option>
            </select>
            </div>
            <div >
            <label>Data di morte: </label>
            </br>
            <input type="date" id="FromDataMorte" placeholder="from" >
            <input type="date" id="ToDataMorte" placeholder="to">
            </div>
            
        </div> 
        </br>
        <div id="f1">
            
            <div >
            <label>Nome: </label>
            </br>
            <input type="text"  id="nome">
            </div>
            <div >
            <label>Cognome: </label>
            </br>
            <input type="text" id="cognome">
            </div>
            <div >
            <label>Nazione: </label>
            </br>
            <input type="text" id="nazione">
            </div>
            <div class="cerca">
            <button type="submit" id="cerca" > 🔍</button>
        </div>
        <div class="ricarica">
            <a href="autori.php">🔄</a>
        </div>
        </div>
               


        

    </div>
    <div id="filtrato" >
         
        
    </div>


        <div id="contenuto" >
                
     
    
<?php

include "connection.php";

$sql="SELECT * FROM Autore";

$ris=mysqli_query($conn, $sql);
echo "<table id='tabella'>";
echo "<tr class='title'>";
	echo "<td>" . "<b>Codice</b>" . "</td>";
	echo "<td>" . "<b>Nome</b>" . "</td>";
	echo "<td>" . "<b>Cognome</b>"	. "</td>";
	echo "<td>" . "<b>Nazione</b>" . "</td>";
	echo "<td>" . "<b>Data di Nascita</b>" . "</td>";
    echo "<td>" . "<b>Tipo</b>" . "</td>";
    echo "<td>" . "<b>Data di Morte</b>" . "</td>";

while ($riga=mysqli_fetch_array($ris)){
	echo "<tr>";
	echo "<td>" . $riga["codice"] . "</td>";
	echo "<td>" . $riga["nome"] . "</td>";
	echo "<td>" . $riga["cognome"] . "</td>";
	echo "<td>" . $riga["nazione"] . "</td>";
	echo "<td>" . $riga["dataNascita"] . "</td>";
    echo "<td>" . $riga["tipo"] . "</td>";
    echo "<td>" . $riga["dataMorte"] . "</td>";
}

echo "</table>";
mysqli_close($conn);



?>
   </div>
   
</div>
</html>