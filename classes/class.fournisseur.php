<?php
// OK
class fournisseur {
	var $idFournisseur;
	var $nom;
	var $prenom;
	var $contact;
	var $service;
	
	static function charger($idFournisseur) {
		$result = executeSqlSelect("SELECT * FROM fournisseur WHERE idFournisseur=$idFournisseur");
		$row = mysqli_fetch_array($result);
		$fournisseur = new fournisseur();
		$fournisseur->idFournisseur = $row['idFournisseur'];
		$fournisseur->nom = $row['nom'];
		$fournisseur->prenom = $row['prenom'];
		$fournisseur->contact = $row['contact'];
		$fournisseur->service = $row['service'];
		return $fournisseur;
	}
	
	static function chargerToutSansLigne() {
		$fournisseurs = array();
		$result = executeSqlSelect("SELECT * FROM fournisseur");
		while($row = mysqli_fetch_array($result)) {
			$fournisseur = new fournisseur();
			$fournisseur->idFournisseur = $row['idFournisseur'];
			$fournisseur->nom = $row['nom'];
			$fournisseur->prenom = $row['prenom'];
			$fournisseur->contact = $row['contact'];
			$fournisseur->service = $row['service'];
			$fournisseurs[] = $fournisseur;
		}
		return $fournisseurs;
	}
	
	static function delete($idFournisseur) {
		beginTransaction();
		$sql = "DELETE FROM fournisseur WHERE idFournisseur=$idFournisseur";
		executeSql($sql);
		commit();
	}
}
?>
