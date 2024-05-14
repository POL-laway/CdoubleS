<html>
<head>
<link href="stili/stilehome.css" rel="stylesheet">
<script>
$(document).ready(function(){

$("#aAutori").click(function(){
  alert("ciao");

});
});
</script>
</head>

<body>

<div id="contenitore">

<header>
<div id="logo">
<img src="immagini/logo.png" alt="logo">

</div>

</header>

<div id="centro">
    <div id="menu">
    <nav>
        <li class="selezionato"><button >HOME</button></li>
        <li><button type="submit" id="aAutori">AUTORI</button></li> 
        <li><button >OPERE</button></li> 
        <li><button >TEMI</button></li>
        <div class="dropdown">
  <button class="dropbtn" >SALE</button>
  <div class="dropdown-content">
    <a href="#">Inserisci</a>
    <a href="#">Modifica</a>
    <a href="#">Elimina</a>
</div>
</div>
       
      </nav>
    </div>
    <div id="box">
    <div id="home">
        <p>Benvenuti al Museo CdoubleS: </br>un luogo dove la storia prende vita e l'arte parla al cuore. Esplora le nostre collezioni uniche che abbracciano secoli di cultura e creatività. Da antiche reliquie a capolavori contemporanei, ogni opera racconta una storia straordinaria.
        </p>
</br>
</br>
</br>
<p> In un viaggio attraverso le epoche, dalla magnificenza dell'antichità alla vivacità del presente. Attraverso mostre interattive, eventi culturali e laboratori creativi, il Museo CdoubleS ti invita a esplorare il mondo con occhi nuovi.</p>
</br>
</br>
</br><p>
Che tu sia un appassionato d'arte, uno studioso della storia o semplicemente un curioso viaggiatore, troverai ispirazione e conoscenza nelle profondità del nostro museo. Unisciti a noi e scopri il fascino senza tempo dell'umanità attraverso le meraviglie esposte al Museo CdoubleS.</p>
    </div>
        <div id="contenuto" >
        <iframe id="autori" src="http://localhost:8888/CdoubleS/autori.php" style="display:none;" title="Autori">
</iframe>
        </div>
    </div>
    

</div>

</div>


<footer>
<div class="footer-container">
    <div class="footer-section">
      <h3>Contatti</h3>
      <p>Indirizzo: Via dell'Arte, 123 - Città</p>
      <p>Telefono: +39 0123 456789</p>
      <p>Email: info@museocdoubles.it</p>
    </div>
    <div class="footer-section">
      <h3>Orari di Apertura</h3>
      <p>Lunedì - Venerdì: 9:00 - 18:00</p>
      <p>Sabato - Domenica: 10:00 - 20:00</p>
      <p>Chiuso il Martedì</p>
    </div>
    <div class="footer-section">
      <h3>Seguici</h3>
      <p>Seguici sui social media per rimanere aggiornato sulle nostre mostre e eventi.</p>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2024 Museo CdoubleS. Tutti i diritti riservati.</p>
  </div>
</footer>
</body>