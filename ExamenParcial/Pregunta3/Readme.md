# Parte 3
Realizamos la clonacion del trabajo correspondiente ```git clone https://github.com/lenin254/PC1_CC3S2.git```. Ejecutamos bundle install dentro del proyecto, ejecutamos el comando ```bundle exec rackup --port 3000``` y abrimos la web local en la URL ```http://localhost:3000/new```

![](https://github.com/Kinartb/CC3S2/blob/main/ExamenParcial/Imagenes/aux1.png)

*Pregunta*

1. ¿Cuál es el objetivo de ejecutar bundle install?

En en el archivo Gemfile se especifica las dependencias y versiones deseadas para poder realizar un proyecto, para instalar dichas gemas en nuestro entorno de trabajo es necesario ejecutar el comando ```bundle install```, este instalara las gemas en nuestro entorno de trabajo y creara el archivo ```Gemfile.lock``` este archivo contiene las versiones exactas de las gemas y sus dependencias que fueron instaladas en el entorno
de desarrollo. 

2. ¿Por qué es una buena práctica especificar ``` -without production ``` al ejecutarlo en su computadora de desarrollo?

Es buena practica porque a veces las gemas pueden entrar en conflicto, ademas no es necesario hacer el llamado al campo de produccion ya que estamos trabajando en el campo de desarrollo y no es necesario desplegar dicho entorno a menos que no se le necesite. 

*PREGUNTA*

  • ¿En qué parte de la estructura del directorio de la aplicación Rails está el código correspondiente al modelo WordGuesserGame?

En la aplicacion Rails la logica del juego se encuentra en ```app/models/word_guesser_game.rb```. Se dice que es la logica del programa en ambos cosas porque la estructura del codigo hace referencia a funcionalidades internas como por ejemplo el encontrar palabras de manera espeficica. app/models/word_guesser_game.rb
  
  • ¿En qué archivo está el código que más se corresponde con la lógica del archivo app.rb de las aplicaciones Sinatra que maneja las acciones entrantes del usuario?

En el archivo ```app/controllers/game_controller.rb```, esto se debe a que dicho archivo muestra ordenes de redireccionamiento a lo largo del codigo, en las lineas donde se muestra ```redirect_to (----)``` hace referencia a la instruccion la cual nos va a redirigir segun la orden o condicion asignada, por ejemplo, se tiene las direcciones ```redirect_to game_path```, ```redirect_to win_game_path ``` y ```redirect_to lose_game_path ```.
  
  • ¿Qué clase contiene ese código?

Ese codigo contiene la clase ```class GameController < ApplicationController``` esto queire decir que GameController (la clase hija) va a heredar (<) caracteristicas de la clase padre ApplicationController.
  
  • ¿De qué otra clase (que es parte del framework Rails) hereda esa clase?

Lo realiza de ```class ApplicationController < ActionController::Base``` ya que vemos que se usa el elemento (<) el cual significa que el de la izquierda (clase hijo) va a heredar caractiristicas de la clase derecha (clase padre). 

  • ¿En qué directorio está el código correspondiente a las vistas de la aplicación Sinatra (new.erb, show.erb, etc.)?

Esto podemos encontrarlo en el directorio ```app/views```. Ambos secciones corresponden a vistar ya que se utilizan archivos de caracter web. 
  
  • Los sufijos de nombre de archivo para estas vistas son diferentes en Rails que en la aplicación Sinatra. ¿Qué información proporciona el sufijo situado más a la derecha del nombre del archivo (por ejemplo: en foobar.abc.xyz, el sufijo .xyz) sobre el contenido del archivo?

Que son archivos ERB se utilizan como plantilla para crear archivos web. Gracias a esto hemos podido encontrar la coincidencias en la preguntar anterior.
  
  • ¿Qué información te brinda el otro sufijo sobre lo que se le pide a Rails que haga con el archivo?

Como el uso para formato web con la indexion .erb es muy amplia es necesario especificar que tipo de archivo es o cual es el contenido de dicho archivo por lo que para este caso se usa el ```html``` para indicar que el contenido del archivo corresponde a ```html```.

  • ¿En qué archivo está la información de la aplicación Rails que asigna rutas (por ejemplo, GET/new) a las acciones del controlador?

Se encuenta en el archivo ```config/routes.rb```, se dice que asigna rutas ya que contiene metodos GET y POST por ejemplo ```get  'new'    => 'game#new',   :as => 'new_game'```.
  
  • ¿Cuál es el papel de la opción :as => 'name' en las declaraciones de ruta de config/routes.rb? .

Hace referencia a las correspondencias, por ejemplo para referirse a ```app/controllers/gamecontroller.rb``` ya que lleva el nombre de los metodos definidos en este archivo, a su vez este hace el uso de ```game path```, ```win_game_path```y``` lose_game_path```. Tambien se hace una correspondencia ```app views``` llamando a las direcciones ``` guess_path``` y ```create_game_path```.

*Preguntas*

  • En la versión de Sinatra, los bloques before do...end y after do...end se utilizan para la gestión de sesiones. ¿Cuál es el equivalente más cercano en esta aplicación Rails y en qué archivo encontramos el código que lo hace?
  
Se encuentra ubicado en la siguiente ruta ```app/controllers/game_controller.rb```

```ruby
  def get_game_from_session
    @game = WordGuesserGame.new('')
    if !session[:game].blank?
      @game = YAML.load(session[:game])
    end
  end

  def store_game_in_session
    session[:game] = @game.to_yaml
  end
```
  
  • Un formato de serialización popular para intercambiar datos entre aplicaciones web es JSON. ¿Por qué no funcionaría utilizar JSON en lugar de YAML? (Reemplaza YAML.load() con JSON.parse() y .to_yaml con .to_json para realizar esta prueba. Tendrás que borrar las cookies asociadas con localhost:3000 o reiniciar tu navegador con un nuevo Incognito/ Ventana de navegación privada, para borrar la sesión[]. Según los mensajes de error que recibe al intentar utilizar la serialización JSON, debería poder explicar por qué la serialización YAML funciona en este caso pero JSON no).

*Preguntas*

  • En la versión de Sinatra, cada acción del controlador termina con redirect (que, como puedes ver, se convierte en redirección_to en Rails) para redirigir al jugador a otra acción, o con erb para representar una vista. ¿Por qué no hay llamadas explícitas correspondientes a erb en la versión Rails? 

  
  
  • En la versión de Sinatra, codificamos directamente un formulario HTML usando la etiqueta <form>, mientras que en la versión de Rails usamos un método Rails form_tag, aunque sería perfectamente legal usar etiquetas HTML <form> sin formato en Rails. ¿Se te ocurre alguna razón por la que Rails podría introducir este "nivel de direccionamiento indirecto"?
  
  
  • ¿Cómo se manejan los elementos del formulario, como campos de texto y botones, en Rails? (Nuevamente, el HTML sin formato sería legal, pero ¿cuál es la motivación detrás de la forma en que Rails lo hace?)

  
  • En la versión de Sinatra, las vistas de show, win y lose reutilizan el código en la vista new que ofrece un botón para iniciar un nuevo juego. ¿Qué mecanismo de Rails permite reutilizar esas vistas en la versión de Rails?.

  • ¿Cuál es una explicación cualitativa de por qué no fue necesario modificar los escenarios de Cucumber y las definiciones de pasos para que funcionaran igualmente bien con las versiones de la aplicación Sinatra o Rails? 

Porque el uso de APIS es el mismo en ambos casos por lo que no habria problema
  
