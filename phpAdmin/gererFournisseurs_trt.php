<?php
	require "inc_commun.php";
	$action=$_GET["action"];
	if ($action=="Supprimer") {
		$idFournisseur=$_GET["idFournisseur"];
		stock::delete($idFournisseur);
	}
	// Redirection
	header('Location: gererFournisseurs.php');
?>