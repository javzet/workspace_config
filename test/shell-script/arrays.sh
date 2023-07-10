#!/bin/bash

mi_array=(dato1 dato2 dato3 dato4)

echo ${mi_array[0]}
echo ${mi_array[1]}
echo ${mi_array[2]}
echo ${mi_array[3]}

#Mostrar todos los elementos del array a la vez
echo ${mi_array[@]}

echo La cantidad de elementos en el array es ${#mi_array[@]}
echo Los índices disponibles son ${!mi_array[@]}

unset mi_array[2]

echo Despues de borrar el elemento 2:
echo La cantidad de elementos en el array es ${#mi_array[@]}
echo Los índices disponibles son ${!mi_array[@]}
