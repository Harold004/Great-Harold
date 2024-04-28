<?php
// Inclure les fichiers nécessaires
require "inc_commun.php";
require "header_et_menu.php";

// Récupérer la liste des fournisseurs et des articles disponibles
$tFournisseurs = fournisseur::chargerToutSansLigne();
$tArticles = article::chargerTout();

// Vérifier si le formulaire de commande a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $utilisateur=$_SESSION["utilisateur"]; // Vous devez avoir une session utilisateur en cours
    $idFournisseur = $_POST["fournisseur"];
    $idArticle = $_POST["article"];
    $quantite = $_POST["quantite"];

    // Créer un objet Commande et enregistrer la commande
    $commande = new Commande($utilisateur, $idFournisseur, $idArticle, $quantite);
    $commande->enregistrerCommande();

    // Afficher un message de succès
    echo "<p><b>Votre commande a été envoyée avec succès!</b></p>";
}

?>
<link rel="stylesheet" type="text/css" href="formatage.css">
<!-- Afficher le formulaire de commande -->
<center>
    <h1>Passer une commande</h1><br>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="fournisseur">Choisissez un fournisseur:</label>
        <select name="fournisseur" id="fournisseur">
            <?php foreach ($tFournisseurs as $fournisseur) {
                echo "<option value='$fournisseur->idFournisseur'>$fournisseur->nom $fournisseur->prenom</option>";
            } ?>
        </select>
        <br><br>
        <br><br><label for="article">Choisissez un article:</label>
        <select name="article" id="article">
            <?php foreach ($tArticles as $article) {
                echo "<option value='$article->idArticle'>$article->nom</option>";
            } ?>
        </select>
        <br><br>
        <br><br><label for="quantite">Quantité:</label>
        <input type="number" name="quantite" id="quantite" min="1" required>
        <br><br><br>
        <button type="submit" class="boutonValider">Passer la commande</button>
        <input type="submit" value="Passer la commande">
    </form>
    <br><br>
    <a class="menu" href="pagePrincipale.php">Retour Page Accueil</a>
</center>

<?php
require "footer.php";
?>
