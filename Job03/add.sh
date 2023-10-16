#la commande read va affecter a la variable ce qu'a entrez l'utilisateur
echo "Entrez le premier nombre :"
read nombre1

echo "Entrez le deuxième nombre :"
read nombre2

resultat=$((nombre1 + nombre2))

echo "La somme de $nombre1 et $nombre2 est égale à $resultat."
