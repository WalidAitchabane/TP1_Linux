#!/bin/sh

declare -A prod
prod[0,0]="Produit1"
prod[0,1]=100
prod[0,2]=150
prod[0,3]=15
prod[1,0]="Produit2"
prod[1,1]=120
prod[1,2]=140
prod[1,3]=2
prod[2,0]="Produit3"
prod[2,1]=95
prod[2,2]=130
prod[2,3]=7
prod[3,0]="Produit4"
prod[3,1]=85
prod[3,2]=102
prod[3,3]=5
prod[4,0]="Produit5"
prod[4,1]=40
prod[4,2]=45
prod[4,3]=5
prod[5,0]="Prosuit6"
prod[5,1]=35
prod[5,2]=37
prod[5,3]=3
prod[6,0]="Produit7"
prod[6,1]=114
prod[6,2]=118
prod[6,3]=1
prod[7,0]="Produit8"
prod[7,1]=66
prod[7,2]=110
prod[7,3]=17


echo "Le benefice de chaque produit est"
bnftotal=0
for ((i=0; i < 8; i++)); do
     bnf[$i]=$((${prod[$i,2]} - ${prod[$i,1]} - ${prod[$i,3]}))
     echo "${prod[$i,0]} = ${bnf[$i]} euros"
     bnftotal=$(($bnftotal + ${bnf[$i]}))
     if [ ${bnf[$i]} -le 3 ]; then
     echo "${prod[$i,0]}, ${prod[$i,1]}, ${prod[$i,2]}, ${prod[$i,3]}, ${bnf[$i]}" >> produit_risque_revente_a_perte.csv
     fi
     
done

echo

echo "Le benefice total est $bnftotal euros" 



