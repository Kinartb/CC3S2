# Http-Uri
vizualizar el Http_Uri.pdf

# Introducción a HTTP y URI
Comenzamos visitando el generador de palabras aleatorias en tu navegador favorito para obtener una vista de usuario de lo que hay en la página principal.

## Comprendiendo Request y Response
1. Realizamos un HTTP GET a un sitio, usando CURL

Ingresamos el comando ``` curl 'http://randomword.saasbook.info' ```

2. Guardamos la salida de curl en un archivo y lo visualizamos

Pregunta: _¿Cuáles son las dos diferencias principales que has visto anteriormente y lo que ves en
un navegador web 'normal'? ¿Qué explica estas diferencias?_

Las dos diferencias principales que se observan son: la dirección de la página ahora muestra una
dirección local de archivo y la imagen no se carga correctamente.

La dirección de la página se debe al contexto en el que se interpreta la URL, ya sea como una
dirección web en línea o como una dirección local de archivo. La imagen no cargada
correctamente se debe a que está vinculada a una dirección web externa que no está accesible desde tu sistema de archivos locales
