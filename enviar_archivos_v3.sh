#!/bin/bash

OLDIFS=$IFS
IFS=","
ruta='/home/profesor/Escritorio/alumnos/1BCH' #¡CAMBIAR!
echo "Nombre del archivo a depositar, sin extensión(p.e P1)"
read nombre_archivo
echo "Extensión del archivo a depositar, (p.e py)"
read ext_archivo

while read curso nre name password
do
     touch $ruta/"$name"/$nombre_archivo"_""$name""."$ext_archivo #se copian achivos a la carpeta del alumno
     chown "$nre":"$nre" $ruta/"$name"/$nombre_archivo"_""$name""."$ext_archivo  #se cambia propietario del archivo al alumno
     chmod 770 $ruta/"$name"/$nombre_archivo"_""$name""."$ext_archivo #se ponen permisos de escritura al alumno
     
done < user1bch.csv #¡CAMBIAR!
