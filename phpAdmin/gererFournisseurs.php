<?php
	require "inc_commun.php";
	require "header_et_menu.php";
?>
<script type="text/javascript">
function supprimer(idFournisseur) {
	if (confirm('Etes vous sur(e) de vouloir SUPPRIMER ce Fournisseur ?')) {
		window.location="gererFournisseurs_trt.php?action=Supprimer&idFournisseur=" + idFournisseur;
	}
}
</script>
<CENTER>

<br>
<h1>Gérer les Fournisseurs</h1>
<br>

<table class="tableCommune">
<tr><th>ID</th><th>Nom</th><th>Prénom</th><th>Contact</th><th>Service</th><th>Modifier</th><th>Supprimer</th></tr>
<?php
	$fournisseur = fournisseur::chargerToutSansLigne();
	foreach ($fournisseur as $fournisseur) {
		echo "<tr><td>$fournisseur->idFournisseur</td><td>$fournisseur->nom</td><td>$fournisseur->prenom</td><td>$fournisseur->contact</td><td>$fournisseur->service</td><td><a href=\"modifierFournisseur.php?idFournisseur=$fournisseur->idFournisseur\">Modifier</a></td><td><a href=\"javascript:supprimer('$fournisseur->idFournisseur');\">Supprimer</a></td></tr>";
	}
?>
</table>
<br><br><br><br>
<a class="menu" href="ajouterFournisseur.php">Ajouter un Fournisseur</a><br>
<a class="menu" href="pagePrincipaleAdmin.php">Retour Page Accueil</a>

</CENTER>
<br><br><br><br>
<?php
	require "footer.php";
?>