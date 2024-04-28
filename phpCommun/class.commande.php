<?php
class Commande {
    var $idCommande;
    var $produit;
    var $quantite;
    var $utilisateur;
    var $idFournisseur;

    static function passerCommande($produit, $quantite, $utilisateur, $idFournisseur) {
        // Connexion à la base de données
        $serveur = "localhost";
        $utilisateur = "root";
        $mot_de_passe = "";
        $base_de_donnees = "harold";
        $connexion = new mysqli($serveur, $utilisateur, $mot_de_passe, $base_de_donnees);

        // Vérification de la connexion
        if ($connexion->connect_error) {
            die("Échec de la connexion : " . $connexion->connect_error);
        }

        // Requête d'insertion de la commande dans la base de données
        $requete = "INSERT INTO commande (produit, quantite, utilisateur, idFournisseur) VALUES ('$produit', $quantite, '$utilisateur', $idFournisseur)";

        if ($connexion->query($requete) === TRUE) {
            echo "Commande passée avec succès !";
        } else {
            echo "Erreur lors de la commande : " . $connexion->error;
        }

        // Fermeture de la connexion
        $connexion->close();
    }
}
?>
