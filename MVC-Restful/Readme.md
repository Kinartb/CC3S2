## Demostración de MVC, rutas RESTful y CRUD con Sinatra 


### Instrucciones

En esta sección veremos cómo aplicar ideas de MVC, RESTful Routes y CRUD en el contexto de Sinatra para crear una aplicación de lista de tareas pendientes. 
Cuando hayas terminado, los usuarios deberían poder ir a tu sitio web, ver su lista de tareas pendientes, crear nuevos elementos de la lista, editar elementos de la lista y eliminar elementos de la lista.

Construiremos el código base, con el código de inicio ubicado dado en el repositorio de la actividad. Aquí está la referencia a [Sinatra](https://sinatrarb.com/intro.html) ¡que será útil!.

Presenta esta tarea individual en un repositorio llamado MVC-Restful, CRUD con evidencia del proceso dado. Puedes trabajar en equipo para resolver los ejercicios.

### Configuración

```
  cd sinatra-intro/
  bundle install
```
Antes de continuar con el proceso de ejecucion se ingresara a la siguiente direccion url
```
  http://localhost:4567/todos
```
Nos muestra la siguiente ventana

![](https://github.com/Kinartb/CC3S2/blob/main/MVC-Restful/imagenes/part1.png)

Lo que muestra que antes de ejecutar el programa, verificamos que dicha pagina web no esta funcionando.

A continuacion ejecutaremos el programa descargado template.rb el cual posiblemente nos salga con errores, que para solucionaros se deberan descargar las gemas necesarias para su uso.

```
  ruby template.rb # O: bundle exec ruby template.rb
```

Se tiene el siguiente output lo que significa que hemos levantado de manera local una pagina web.

![](https://github.com/Kinartb/CC3S2/blob/main/MVC-Restful/imagenes/part2.png)

 
Luego, ingresa el siguiente enlace en un navegador para ver la página web local y verificar si está funcionando.

```
  http://localhost:4567/todos
```


![](https://github.com/Kinartb/CC3S2/blob/main/MVC-Restful/imagenes/part3.png)

Lo que vemos aqui es una pagina web local en formato JSON, para saber que es lo que se realizar es necesario visualizar el codigo correspondiente.



Además, prueba el siguiente comando usando 'curl' para verificar que la aplicación se esté ejecutando localmente y responda. El comando activa una solicitud `GET` para recuperar la lista de "cosas por hacer" y debería recibir una respuesta que se muestra en la salida estándar de la línea de comando.

```
  curl http://localhost:4567/todos
```
![](https://github.com/Kinartb/CC3S2/blob/main/MVC-Restful/imagenes/part4.png)

Vemos que al utilizar la solicitud `GET` se optiene como respuesta lo que se puede visualizar en la pagina web anterior.

En los siguientes ejercicios, agregaremos más rutas y podrás continuar usando comandos curl con diferentes argumentos para verificar la corrección de sus comportamientos.

La referencia que contiene las soluciones se encuentra en el archivo `final.rb`.

### Parte 1

Lo primero que vamos a hacer es crear un modelo. A diferencia de Rails, Sinatra no tiene MVC integrado, así que vamos a piratear el nuestro. Usaremos `ActiveRecord` sobre una base de datos SQLite. En esta aplicación, ¿cuál será nuestro modelo y qué operaciones CRUD le aplicaremos?

- index: Leer todas las tareas pendientes (se implementa en la ruta '/todos').
```
get '/todos' do
  content_type :json
  Todo.all.to_json
end
```
- create: Crea una nueva tarea pendiente ( se implementa en la ruta '/todos' y se ejecuta cuando se envía una solicitud POST)
```
post '/todos' do
  content_type :json
  todo = Todo.new(description: params[:description])
  if todo.save
    return {msg: "create success"}.to_json
  else
    return {msg: todo.errors}.to_json
  end
end

```
- read: Leed una tarea pendeiente especifica ( se implementa en la ruta '/todos/:id' y se ejecuta se proporciona un ID)
```
get '/todos/:id' do
  content_type :json
  todo = Todo.find_by_id(params[:id])
  if todo
    return {description: todo.description}.to_json
  else
    return {msg: "error: specified todo not found"}.to_json
  end
end

```
- update: Actualiza una tarea pendiente (se implementa en la ruta '/todos/:id' y se ejecuta cuando se envía una solicitud PUT)
```
put '/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id])
  if todo.update_attribute(:description, params[:description])
    return {msg: "update success"}.to_json
  else
    return {msg: todo.errors}.to_json
  end
end

```
- destroy: Elimina una tarea pendienta (se implementa en la ruta '/todos/:id' y se ejecuta cuando se envía una solicitud PUT)
```
delete '/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id])
  if todo
    todo.destroy
    return {msg: "delete success"}.to_json
  else
    return {msg: "delete failure"}.to_json
  end
end

```
### Parte 2

A continuación, creemos algunas rutas para que los usuarios puedan interactuar con la aplicación. Aquí hay una URL de ejemplo:

```
  https://www.etsy.com/search?q=test#copy
```
Primero, especifica qué partes de la URL son  componentes según la discusión sobre la forma de una URL. Consulta esta publicación de [IBM](https://www.ibm.com/docs/en/cics-ts/5.1?topic=concepts-components-url) que detalla los componentes de una URL.

- https:// : Protocolo utilizado (HTTPS).
- etsy : Nombre del dominio o sitio web.
- 443 : Puerto utilizado para la conexión segura (HTTPS).
- /search : Ruta o ruta del recurso en el servidor.
- q=test : Parametros de consulta (query parameters) que se pasan al servidor.
- copy : Fragmento (fragment) de la URL.

En Sinatra, el enrutamiento y el controlador están acoplados, lo que facilita la declaración de rutas. Declaramos algunas rutas RESTful para que podamos ver una lista de tareas pendientes, crear una tarea pendiente, editar una tarea pendiente y eliminar una tarea pendiente. ¿Qué acciones RESTful deberíamos utilizar para estos?

Acciones del tipo index, create, update y detroy con herramientas respectivas de elementos get, post, put y delete; realizados con anterioridad en la pregunta anterior.

### Parte 3

Dado que HTTP es un protocolo RESTful, cada solicitud debe ir seguida de una respuesta, por lo que debemos devolver una vista o redirigir a cada solicitud. Usaremos JSON para las respuestas, que es similar a lo que hacen muchas API. ¿Hacia dónde debería ir la respuesta?.

Hacia el cliente en el cuerpo de la respuesta HTTP, si se diera el formato JSON para las respuesta entonces este tendria una forma parecida a esta. (a modode de ejemplo)
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "message": "Operación exitosa",
  "data": {
    "task": {
      "id": 1,
      "description": "Realizar tarea",
      "completed": false
    }
  }
}

```

Lo cual visializamos como factor mas importante el formato codigo de estado HTTP que se encuentra en la primera linea, en este caso 200 que indica que la solicitud se realizo con exito. Existen muchos otros codigos llamados codigos de respuesta REST los cuales nos brindan informacion sobre el estado 




