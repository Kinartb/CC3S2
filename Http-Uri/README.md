# Http-Uri
vizualizar el Http_Uri.pdf

# Introducción a HTTP y URI
Comenzamos visitando el generador de palabras aleatorias en tu navegador favorito para obtener una vista de usuario de lo que hay en la página principal.

## Comprendiendo Request y Response
**1. Realizamos un HTTP GET a un sitio, usando CUR**

Ingresamos el comando ``` curl 'http://randomword.saasbook.info' ```

**2. Guardamos la salida de curl en un archivo y lo visualizamos**

***Pregunta: ¿Cuáles son las dos diferencias principales que has visto anteriormente y lo que ves en
un navegador web 'normal'? ¿Qué explica estas diferencias?***

Las dos diferencias principales que se observan son: la dirección de la página ahora muestra una
dirección local de archivo y la imagen no se carga correctamente.

La dirección de la página se debe al contexto en el que se interpreta la URL, ya sea como una
dirección web en línea o como una dirección local de archivo. La imagen no cargada
correctamente se debe a que está vinculada a una dirección web externa que no está accesible desde tu sistema de archivos locales

**3. Simulamos un servidor Web usando Netcat**

***Pregunta: Suponiendo que estás ejecutando curl desde otro shell ¿qué URL tendrás que pasarle
a curl para intentar acceder a tu servidor falso y por qué?***

La URL que tendrías que pasarle a curl para intentar acceder al servidor falso es
http://192.168.18.18:8081. Esto se debe a que en la solicitud GET enviada al servidor falso, la línea
Host: 192.168.18.18:8081 indica la dirección IP (192.168.18.18) y el puerto (8081) al cual debes
apuntar con curl.

***Pregunta: La primera línea de la solicitud identifica qué URL desea recuperar el cliente. ¿Por qué
no ves http://localhost:8081 en ninguna parte de esa línea?***


La primera línea de la solicitud no contiene "http://localhost:8081" porque el cliente está
especificando la ruta relativa ("/") en lugar de una URL completa. El cliente y el servidor ya
establecieron la conexión a través de la dirección IP y puerto.

**4. Vemos los encabezados de respuesta del servidor**

***Pregunta: Según los encabezados del servidor, ¿cuál es el código de respuesta HTTP del servidor
que indica el estado de la solicitud del cliente y qué versión del protocolo HTTP utilizó el servidor
para responder al cliente?***

Según los encabezados del servidor:

• El código de respuesta HTTP del servidor es 200 OK, indicando que la solicitud del cliente
fue exitosa.

• El servidor utilizó la versión HTTP/1.1 del protocolo HTTP para responder al cliente.

***Pregunta: Cualquier solicitud web determinada puede devolver una página HTML, una imagen u
otros tipos de entidades. ¿Hay algo en los encabezados que crea que le dice al cliente cómo
interpretar el resultado?***

Sí, el encabezado "Content-Type" indica al cliente cómo interpretar el tipo de contenido que está
recibiendo. En este caso, el encabezado "Content-Type" es "text/html;charset=utf-8", indicando
que el contenido es HTML y debe ser interpretado como tal por el cliente.







