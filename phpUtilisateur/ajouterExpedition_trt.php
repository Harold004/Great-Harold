<?php
require "inc_commun.php";

// Vérifier si le champ 'destinataire' existe dans le formulaire
if(isset($_POST['utilisateur'])) {
    // Récupérer les données du formulaire
    $nomSortie = $_POST['txtNomSortie'];
    $date = $_POST['txtDate'];
    $commentaire = $_POST['txtCommentaire'];
    $ressources = $_POST['txtRessources'];
    $idUtilisateur = $_POST['utilisateur'];

    // Récupérer les détails de l'utilisateur destinataire en fonction de son ID
    $destinataire = utilisateur::charger($idUtilisateur); // Utiliser l'ID du destinataire comme argument

    // Parcourir les articles sélectionnés et effectuer le transfert
    foreach ($_POST as $key => $value) {
        if (strpos($key, 'QUANTITE_') === 0) {
            $idArticle = substr($key, strlen('QUANTITE_'));
            $quantite = $value;

            // Décrémenter la quantité chez l'utilisateur actuel
            $idStock = new stock(); // Créer une instance de la classe stock
            $idArticle->retirerArticle($idArticle, $quantite); // Appeler la méthode retirerArticle()

            // Incrémenter la quantité chez le destinataire
            $destinataire->ajouterArticle($idArticle, $quantite);
        }
    }

    // Enregistrer la sortie dans la base de données
    $sortie = new Sortie();
    $sortie->nom = $nomSortie;
    $sortie->date = $date;
    $sortie->commentaire = $commentaire;
    $sortie->ressources = $ressources;
    $sortie->idUtilisateur = $idUtilisateur;

    // Enregistrer la sortie dans la base de données
    $sortie->enregistrer();

    // Redirection vers la page principale ou une autre page de votre choix
    header("Location: pagePrincipale.php");
    exit();
} 
?>
