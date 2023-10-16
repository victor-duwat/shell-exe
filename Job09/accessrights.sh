#celui la est vraiment celui qui m'as mis le plus de temps 
csv_file="/home/isen/shell/Job09/Shell_Userlist.csv"
#focntion crée pour crée des utilisateurs
create_user() {
    Prenom="$1"
    Nom="$2"
    Mdp="$3"
    Role="$4"
    is_admin="$5"


    #petit test pour savoir si l'utilisateur existe déjà pour que la boucle ne soit pas infini
    if [ -d "/home/$Prenom" ]; then
        echo "$Prenom existe déjà."
    else
        sudo useradd -m "$Prenom" -p "$(openssl passwd -1 "$Mdp")"

        if [ "$is_admin" == "admin" ]; then #ajout des droits d'admin aux personne au role d'admin
            sudo usermod -aG sudo "$Prenom"
        fi

        echo "$Prenom a été créé avec le rôle $Role."
    fi
}
#boucle while qui va créer tout les utilisateurs du fichier a l'aide du IFS et de la fonction create_user
while IFS=',' read -r Prenom Nom Mdp Role is_admin; do
    create_user "$Prenom" "$Nom" "$Mdp" "$Role" "$is_admin"
done < "$csv_file"

