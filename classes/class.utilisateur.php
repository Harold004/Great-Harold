<?php
require_once "../classes/class.ldap.php";
class utilisateur {
	var $idUtilisateur;
	var $login;
	var $password;
	var $nom;
	var $prenom;
	var $administrateur;	// 'O' ou 'N'
	var $agence;
	var $tStocks;			// Tableau des idStock auquel l'utilisateur est autoris� d'acc�der
	var $idStockDefaut;
	
	// TODO: LDAP, v�rifier
	static function charger($login) {
		$login=strtolower(trim($login));
		$result = executeSqlSelect("SELECT * FROM utilisateur where lower(trim(login))='$login'");
		$row = mysqli_fetch_array($result);
		if ($row) {
			$utilisateur = self::instanceDepuisSqlRow($row);
			$utilisateur->chargerStocksAutorise();
		} else {
			$utilisateur=false;
		}
		return $utilisateur;
	}

	static function chargerTout() {
		$tUtilisateurs=array();
		$result = executeSqlSelect("SELECT * FROM utilisateur");
		while($row = mysqli_fetch_array($result)) {
			$utilisateur=self::instanceDepuisSqlRow($row);
			$utilisateur->chargerStocksAutorise();
			$tUtilisateurs[]=$utilisateur;
		}
		return $tUtilisateurs;
	}

	static function instanceDepuisSqlRow($row) {
		$utilisateur = new utilisateur();
		$utilisateur->idUtilisateur=$row['idUtilisateur'];
		$utilisateur->login=$row['login'];
		$utilisateur->password=$row['password'];
		$utilisateur->nom=$row['nom'];
		$utilisateur->prenom=$row['prenom'];
		$utilisateur->administrateur=$row['administrateur'];
		$utilisateur->agence=$row['agence'];
		return $utilisateur;
	}

	function verifierLoginPasswordBase($passwordSaisi) {
		return strtolower(trim($passwordSaisi))==strtolower(trim($this->password));
	}

	function verifierLoginPasswordLDAP($passwordSaisi, $tConnexionLDAP) {
		$sLdap = $tConnexionLDAP["utiliserLDAP"];
		$bAuthLDAP = (trim(strtolower($sLdap))=="oui");
		if ($bAuthLDAP) {
			$bRet=ldap::verifierLoginPassword($this->login, $passwordSaisi, $tConnexionLDAP);
		} else {
			$bRet=false;
		}
		return $bRet;
	}

	function chargerStocksAutorise() {
		$this->idStockDefaut=null;
		$result = executeSqlSelect("SELECT idStock, defaut FROM stock_autorise where idUtilisateur=$this->idUtilisateur");
		$this->tStocks=array();
		while($row = mysqli_fetch_array($result)) {
			$idStock=$row['idStock'];
			$this->tStocks[]=$idStock;
			if ($row['defaut']=="O") {
				$this->idStockDefaut=$idStock;
			}
		}
		if ($this->idStockDefaut==null && sizeof($this->tStocks)>0) {
			// Si aucun stock par d�faut n'a �t� trouv�, le premier est consid�r� comme celui par d�faut
			$this->idStockDefaut=$this->tStocks[0];
		}
	}
	
	function autorisePourStock($aIdStock) {
		foreach ($this->tStocks as $idStock) {
			if ($aIdStock==$idStock) return true;
		}
		return false;
	}

	function estAdministrateur() {
		return ($this->administrateur=="O");
	}

	function estUser() {
		return ($this->administrateur=="R");
	}

	function update() {
		$sql="update utilisateur set nom='".mysqlEscape($this->nom)."', prenom='".mysqlEscape($this->prenom)."', password='".mysqlEscape($this->password)."', agence='".mysqlEscape($this->agence)."' where idUtilisateur=$this->idUtilisateur";
		executeSql($sql);
		// Update des stocks autoris�s
		$this->insertUpdateStockAutorise();
	}

	function insert() {
		$sql="insert into utilisateur (nom, prenom, login, password, agence) value ('".mysqlEscape($this->nom)."', '".mysqlEscape($this->prenom)."', '".mysqlEscape($this->login)."', '".mysqlEscape($this->password)."', '".mysqlEscape($this->agence)."')";
		executeSql($sql);
		$this->idUtilisateur=dernierIdAttribue();
		// Insert des stocks autoris�s
		$this->insertUpdateStockAutorise();
	}
	
	static function delete($idUtilisateur) {
		$sql="delete from stock_autorise where idUtilisateur=$idUtilisateur";
		executeSql($sql);
		$sql="delete from utilisateur where idUtilisateur=$idUtilisateur";
		executeSql($sql);
	}

	function insertUpdateStockAutorise() {
		$sql="delete from stock_autorise where idUtilisateur=$this->idUtilisateur";
		executeSql($sql);
		foreach ($this->tStocks as $idStock) {
			if ($idStock==$this->idStockDefaut) {
				$estStockDefaut="O";
			} else {
				$estStockDefaut="N";
			}
			$sql="insert into stock_autorise (idStock, idUtilisateur, defaut) value ($idStock, $this->idUtilisateur, '$estStockDefaut')";
			executeSql($sql);
		}
	}
}
?>