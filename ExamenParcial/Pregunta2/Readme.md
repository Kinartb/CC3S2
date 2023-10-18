# Introducción a Rails
Ejecutamos el comando ```rails new todo_app``` para iniciar nuestro trabajo. El comando rails new crea el esqueleto de una aplicacion simple que se ejecuta.
Este resultado detalla los archivos y gemas que se instalaron.

![]()

A continuacion ejecutaremos ```ls``` para ver nuestro entorno de trabajo creado gracias a ```rails``` por defecto.

![]()

Ejecutamos ```rails generate scaffold todo description:string``` 

![]()

Vemos que en el output de la consola aparecen metodos ```invoke``` y ```create```. Para crear el modelo de una entidad, se recurre a varios generadores. La tercera palabra, "scaffold", indica que nos gustaría crear un recurso llamado "todo" con un único atributo "descripcion" de tipo "cadena" o "string". La ejecución de este comando conduce a la creación de nuevos archivos de migración, base de datos, vista (ERB, HTML, CCS) y controlador.

## Base de datos
