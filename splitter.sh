// Este script divide todos los archivos de la carpeta actual en subcarpetas de una cantidad especifica.

i=0;
for f in *;
do
    d=dir_$(printf %03d $((i/$cantidad_de_archivos+1))); 
    mkdir -p $d;
    mv "$f" $d;
    let i++;
done
