#condition de si l'utilisateur ne rentre rien
if [ $# -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

argument="$1"


if [ "$argument" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Veuillez me dire sois Hello sois Bye"
fi
