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

Sin crear una base de datos, ningun cambio que realicemos se registrara en el esquema de la base de datos. Por lo que creemos una base de datos para que podamos conservar cualquier informacion que la aplicacion quiera almacenar. Ejecutamos ```bundle exec rake db:migrate``` .

![]()

Este output indica que se ha realizado la creacion de la tabla todos en un tiempo de 0.0046s el numero 2023101812279 indica la fecha de creacion del archivo ya que con esto ruby on rails, de manera predeterminada, es como ordena el nombre de los elementos creados. Ahora nos dirigiremos a la siguiente ubicacion ```cd/seeds.rb``` y en dicho archivo escribiremos lo siguiente.

```sql
Todo.create(description: "Hello CC3S2- Kids")
Todo.create(description: " Do the assignments kid ")
```
Insertamos los datos en la base de datos con el comando









