<?php
class Commande {
    private $idCommande;
    private $idUtilisateur;
    private $idFournisseur;
    private $idArticle;
    private $quantite;

    public function __construct($idUtilisateur, $idFournisseur, $idArticle, $quantite) {
        $this->utilisateur = $idUtilisateur;
        $this->idFournisseur = $idFournisseur;
        $this->idArticle = $idArticle;
        $this->quantite = $quantite;
    }

    public function enregistrerCommande() {
        // Connexion à la base de données (à adapter selon votre configuration)
        $connexion = new PDO("mysql:host=localhost;dbname=gss", "root", "");

        // Préparation de la requête d'insertion
        $requete = $connexion->prepare("INSERT INTO commande (idUtilisateur, idFournisseur, idArticle, quantite) VALUES (:utilisateur, :idFournisseur, :idArticle, :quantite)");

        // Liaison des paramètres
        $requete->bindParam(':utilisateur', $this->idUtilisateur);
        $requete->bindParam(':idFournisseur', $this->idFournisseur);
        $requete->bindParam(':idArticle', $this->idArticle);
        $requete->bindParam(':quantite', $this->quantite);

        // Exécution de la requête
        $requete->execute();
        // Exécution de la requête

    }

}


?>