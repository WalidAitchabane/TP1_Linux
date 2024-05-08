#!/bo -n

echo  "Saisissez le nom du repertoire : "
read rep

if [ -d $rep ]; then
    echo "Le repertoire demande existe deja"
else
    mkdir $rep
    echo "Le repertoire $rep a ete cree"
fi

