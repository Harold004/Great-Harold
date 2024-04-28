<?php
	require "inc_commun.php";
	require "header_et_menu.php";
?>
<script type="text/javascript">
function validerForm() {
	if ( document.formulaire.txtNom.value.trim() == "" ) {
		alert ( "Veuillez saisir un nom !" );
		return false;
	}
	return true;
}
</script>

<CENTER>
<br>
<h1>Modifier un Fournisseur</h1>
<br><br><br>

<form method="POST" name="formulaire" onsubmit="return validerForm();" action="modifierFournisseur_trt.php">
<table class="tableCommune">
<?php
	$idFournisseur=$_GET["idFournisseur"];
	$fournisseur = fournisseur::charger($idFournisseur);
	$_SESSION["fournisseur"]=$fournisseur;
	echo "<tr><th>ID</th><td>$fournisseur->idFournisseur</td></tr>";
	echo "<tr><th>Nom</th><td><input autofocus name=\"txtNom\" type=\"text\" value=\"$fournisseur->nom\"></td></tr>";
	echo "<tr><th>Prénom</th><td><input name=\"txtPrenom\" type=\"text\" value=\"$fournisseur->prenom\"></td></tr>";
	echo "<tr><th>Contact</th><td><input name=\"txtContact\" type=\"text\" value=\"$fournisseur->contact\"></td></tr>";
    echo "<tr><th>Service</th><td><input name=\"txtService\" type=\"text\" value=\"$fournisseur->service\"></td></tr>";
	
?>
</table>
<br><br><br>
<button type="submit" class="boutonValider">Valider</button>
&nbsp;&nbsp;&nbsp
<button type="button" class="boutonAnnuler" onclick="javascript:window.location='gererFournisseurs.php'">Annuler</button>
</form>

</CENTER>
<br><br><br><br>
<?php
	require "footer.php";
?>