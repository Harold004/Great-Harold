<?php
	require "inc_commun.php";
	$nom=$_POST["txtNom"];
	$prenom=$_POST["txtPrenom"];
	$contact=$_POST["txtContact"];
    $service=$_POST["txtService"];
	$fournisseur=$_SESSION["fournisseur"];
	$fournisseur->nom=$nom;
	$fournisseur->prenom=$prenom;
	$fournisseur->contact=$contact;
	$fournisseur->service=$service;

	
	$fournisseur->update();
	
	// Redirection
	header('Location: gererFournisseurs.php');
?>