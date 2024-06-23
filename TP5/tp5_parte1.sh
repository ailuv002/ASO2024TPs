#! /bin/bash

#Parte 1 | Ejercicio 1

n_aleatorio=$(((RANDOM % 100) + 1)) #Generando un número aleatorio entre 1 y 100.

echo "Se ha generado un numero aleatorio en el rango de 1 a 100. Adivine el numero."
read n_usuario #Leyendo el número ingresado por el usuario.

until [ $n_usuario -eq $n_aleatorio ] #Bucle repetitivo.

do 
    if [ $n_usuario -gt $n_aleatorio ] #Caso si es mayor.
    then
        echo ">> $n_usuario << Es mayor que el numero aleatorio." 

    elif [ $n_usuario -lt $n_aleatorio ] #Caso si es menor.
    then
        echo ">> $n_usuario << Es menor que el numero aleatorio."

    fi
    echo "--Vuelva a intentarlo--"
    read n_usuario #Leyendo el nuevo intento.

done 

echo "Felicitaciones! Haz encontrado el numero >> $n_aleatorio <<" #Numero encontrado.