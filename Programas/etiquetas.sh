#!/bin/bash
if [ -f etiquetas.txt ]
then
   echo Leyendo archivo "etiquetas.txt".
else
   echo Creando archivo "etiquetas.txt" de ejemplo.
   echo xxx yyyyyy > etiquetas.txt
fi
while read salida texto
do
   echo Creando etiqueta para "$salida"
   convert -size 60x23 -gravity West -rotate 270 -font Verdana-Regular -pointsize 10 label:"$salida $texto" $salida.jpg
done < etiquetas.txt
