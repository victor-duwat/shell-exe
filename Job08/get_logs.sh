#celui la j'ai un peux galérer et je sis pas sure que ça fasse exactement ce qui est demandé mais y'a de l'idée
backup_dir=~/Job8:Backup

mkdir -p "$backup_dir"

nombre_de_connexions=$(grep -c "Accepted password" /var/log/auth.log)

date_heure=$(date +"%d-%m-%Y-%H:%M")

echo "$nombre_de_connexions" > "$backup_dir/number_connection-$date_heure"

tar -czf "$backup_dir/number_connection-$date_heure.tar" "$backup_dir/number_connection-$date_heure"

echo "Extraction et archivage des logs terminés à $date_heure."
