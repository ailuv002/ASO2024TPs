#! /bin/bash

#Parte 1 | Ejercicio 7

echo "Escriba un nombre del cual quiera saber su genero."
read nombre_g #Guardando el nombre en la variable.

info=$(curl -s "https://api.genderize.io/?name=${nombre_g}") #API
genero=$(echo $info | jq -r '.gender') #Guardando el género del nombre.

if [ "$genero" == "null" ];
then
    echo "No se ha podido encontrar el genero del nombre ingresado." #Caso si es nulo.

else 
    if [ "$genero" == "male" ];
    then
        echo "El genero del nombre ingresado es: masculino." #Caso si es masculino.

    elif [ "$genero" == "female" ];
    then
        echo "El genero del nombre ingresado es: femenino." #Caso si es femenino.
    
    fi
fi


