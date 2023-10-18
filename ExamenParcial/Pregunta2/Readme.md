# Introducción a Rails
Ejecutamos el comando ```rails new todo_app``` para iniciar nuestro trabajo. El comando rails new crea el esqueleto de una aplicacion simple que se ejecuta.
Este resultado detalla los archivos y gemas que se instalaron.

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial1.png)

A continuacion ejecutaremos ```ls``` para ver nuestro entorno de trabajo creado gracias a ```rails``` por defecto.

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial2.png)

Ejecutamos ```rails generate scaffold todo description:string``` 

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial3.png)

Vemos que en el output de la consola aparecen metodos ```invoke``` y ```create```. Para crear el modelo de una entidad, se recurre a varios generadores. La tercera palabra, "scaffold", indica que nos gustaría crear un recurso llamado "todo" con un único atributo "descripcion" de tipo "cadena" o "string". La ejecución de este comando conduce a la creación de nuevos archivos de migración, base de datos, vista (ERB, HTML, CCS) y controlador.

## Base de datos

Sin crear una base de datos, ningun cambio que realicemos se registrara en el esquema de la base de datos. Por lo que creemos una base de datos para que podamos conservar cualquier informacion que la aplicacion quiera almacenar. Ejecutamos ```bundle exec rake db:migrate``` .

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial4.png)

Este output indica que se ha realizado la creacion de la tabla todos en un tiempo de 0.0046s el numero 2023101812279 indica la fecha de creacion del archivo ya que con esto ruby on rails, de manera predeterminada, es como ordena el nombre de los elementos creados. Ahora nos dirigiremos a la siguiente ubicacion ```cd/seeds.rb``` y en dicho archivo escribiremos lo siguiente.

```sql
Todo.create(description: "Hello CC3S2- Kids")
Todo.create(description: " Do the assignments kid ")
```
Insertamos los datos en la base de datos con el comando ```rails db:seed```. Para verificar de que se ha realizado alguna modificacion vamos a hacer consultas, para esto entramos a la consola de rails con el comando ```rails console``` y posteriormente en el nuevo pront ejecutamos Todo.all para ver todos lo creado.

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial5.png)

Vemos en el output los elementos creados el id que responde al orden de creacion y la descripcion asignada en la seccion ```description```, tambien podemos visualizar la fecha de creacion y la fecha de actualizacion del elemento. A modo adicional agregaremos el elemento ```Todo.create(description: "Hola soy un intruso adicional")``` a ```seeds  .rb```. Ejecutaremos el comando ```rails db:seed``` a visualizamos lo que se ha relizado algun cambio en la base de datos con ```rails console``` y escribiremos ```Todo.all```.

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/parcial6.png)

Vemos que como no se ha borrado lo escrito anteriormente en la semilla y se ha usado de nuevo el comando ```rails db:seed``` se repite la categorizacion del archivo y lo sube como uno nuevo en su conjunto. Ademas ahora se sube como Id:5 (nueva identificador  agregado) al elemento ```Todo.create(description: "Hola soy un intruso adicional")```.

### Mas migraciones
### Nuevas rutas

Para agregar un nuevo servicio a la aplicacion existente. Para poder acceder a el, debemos crear una nueva ruta. Modificamos el archivo ``` config/routes.rb ``` del siguiente modo.

```ruby
Rails.application.routes.draw do
  resources :todos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/hello', to: 'todos#hello'
  # Defines the root path route ("/")
  # root "articles#index"
end
```

En la ubicacion ```app/views/todos``` creamos el archivo ```hello.html.erb```  y escribiremos ```<h1>¡Hola!</h1>``` en el. Ahora nos vamos a ```app/controllers/todos_controller.rb```. Agregamos

```ruby
def hello
      respond_to do |format|
format.html { render :hello }
format.json { render json: "hello world!" }
      end
end
```




