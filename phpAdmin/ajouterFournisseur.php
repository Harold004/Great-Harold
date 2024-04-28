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
	txtLogin=document.formulaire.txtLogin.value;
	if ( txtLogin.trim() == "" ) {
		alert ( "Veuillez saisir un login !" );
		return false;
	}
	if ( txtLogin.indexOf(" ")!=-1 ) {
		alert ( "Le login ne doit pas comporter d'espace !" );
		return false;
	}
	return true;
}
</script>

<CENTER>
<br>
<h1>Ajouter un Fournisseur</h1>
<br><br><br>

<form method="POST" name="formulaire" onsubmit="return validerForm();" action="ajouterFournisseur_trt.php">
<table class="tableCommune">
<?php
	echo "<tr><th>Nom</th><td><input autofocus name=\"txtNom\" type=\"text\" value=\"\"></td></tr>";
	echo "<tr><th>Prénom</th><td><input name=\"txtPrenom\" type=\"text\" value=\"\"></td></tr>";
	echo "<tr><th>Contact</th><td><input name=\"txtContact\" type=\"text\" value=\"\"></td></tr>";
	echo "<tr><th>Service</th><td><input name=\"txtService\" type=\"text\" value=\"\"></td></tr>";
	
?>
</table>
<br><br><br>
<button type="submit" class="boutonValider">Valider</button>
&nbsp;&nbsp;&nbsp
<button type="button" class="boutonAnnuler" onclick="javascript:window.location='gererFournisseurs.php'">Annuler</button>
</form>
<br><br><br>
<b>Remarque :</b> si un mot de passe est saisi, il ne sera pas<br>recherché dans l'annuaire LDAP au moment de la connexion.
</CENTER>
<br><br><br><br>
<?php
	require "footer.php";
?>