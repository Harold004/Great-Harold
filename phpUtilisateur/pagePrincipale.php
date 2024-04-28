<?php
require "inc_commun.php";
	require "header_et_menu.php";
?>

<CENTER>
<br><br>
<h1>Stock</h1>
<a class="menu" href="visualiserStock.php">Consulter le stock (réel et virtuel)</a><br>
<a class="menu" href="editerStock.php">Modifier le contenu du stock</a><br>
<a class="menu" href="changerStockAGerer.php">Changer le stock à gérer</a><br>
<br>
<h1>Sorties</h1>
<a class="menu" href="consulterSorties.php">Consulter les sorties</a><br>
<a class="menu" href="ajouterSortie.php">Ajouter une nouvelle sortie</a><br>
<br>
<h1>Statistiques</h1>
<a class="menu" href="statCoutParMois.php">Coût des sorties, par mois</a><br>
<br>
<h1>Commandes</h1>
<a class="menu" href="commande.php">Veillez passer votre commande</a><br>
<br>
<h1>Expedition</h1>
<a class="menu" href="ajouterExpedition.php">Expedier</a><br>
<h1>Stock de l'agence</h1>
<a class="menu" href="receptionniste.php">Regarder le stock de L'agence</a><br>
<br><br>

</CENTER>
<?php
	require "footer.php";
?>