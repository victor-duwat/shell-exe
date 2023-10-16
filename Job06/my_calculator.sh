nombre1="$1"
operation="$2"
nombre2="$3"
resultat=0
#le case est plus facile pour comparer des valeurs avec d'autres valeurs 
case "$operation" in
    +)
        resultat=$((nombre1 + nombre2))
        ;;
    -)
        resultat=$((nombre1 - nombre2))
        ;;
    \x)
        resultat=$((nombre1 * nombre2))
        ;;
    /)
        if [ "$nombre2" -eq 0 ]; then
            echo "Vous ne pouvez pas diviser par 0"
            exit 1
        fi
        resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
        ;;
    *)
        esac

echo "Le résultat de $nombre1 $operation $nombre2 est égal à $resultat."
