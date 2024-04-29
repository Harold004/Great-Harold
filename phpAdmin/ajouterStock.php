<?php
	require "inc_commun.php";
	require "header_et_menu.php";
?>
<CENTER>

<br>
<h1>Add stock</h1>
<br><br><br>

<form method="POST" action="ajouterStock_trt.php">
<br>
<b>Nom</b><br>
<br><input autofocus name="txtNomStock" type="text" value="">
<br><br><br><br>
<b>Paramétrage</b><br>
<br>
Colonne "Destinataire" sur les sortie : <select name="selDestinataire"><option value="O">OUI</option><option selected value="N">NON</option></select>
<br><br><br><br><br>
<button type="submit" class="boutonValider">send</button>
&nbsp;&nbsp;&nbsp
<button type="button" class="boutonAnnuler" onclick="javascript:window.location='gererStocks.php'">dismiss</button>
</form>

</CENTER>
<br><br><br><br>
<?php
	require "footer.php";
?>
