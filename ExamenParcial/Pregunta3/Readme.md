# Parte 3
Realizamos la clonacion del trabajo correspondiente ```git clone https://github.com/lenin254/PC1_CC3S2.git```. Ejecutamos bundle install dentro del proyecto, ejecutamos el comando ```bundle exec rackup --port 3000``` y abrimos la web local en la URL ```http://localhost:3000/new```

![]()

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

Esto podemos encontrarlo en el directorio ```app/views```. Los archivos .erb se utilizan como plantilla para crear archivos web, en el caso de app/views contiene las mismas caracteristicas.
  
  • Los sufijos de nombre de archivo para estas vistas son diferentes en Rails que en la aplicación Sinatra. ¿Qué información proporciona el sufijo situado más a la derecha del nombre del archivo (por ejemplo: en foobar.abc.xyz, el sufijo .xyz) sobre el contenido del archivo?
  
  • ¿Qué información te brinda el otro sufijo sobre lo que se le pide a Rails que haga con el archivo?
  
  • ¿En qué archivo está la información de la aplicación Rails que asigna rutas (por ejemplo, GET/new) a las acciones del controlador?
  
  • ¿Cuál es el papel de la opción :as => 'name' en las declaraciones de ruta de config/routes.rb? .





  
