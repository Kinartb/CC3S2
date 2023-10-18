# Parte 3
Realizamos la clonacion del trabajo correspondiente ```git clone https://github.com/lenin254/PC1_CC3S2.git```. Ejecutamos bundle install dentro del proyecto, ejecutamos el comando ```bundle exec rackup --port 3000``` y abrimos la web local en la URL ```http://localhost:3000/new```

!()[]

*Pregunta*
¿Cuál es el objetivo de ejecutar bundle install?

En en el archivo Gemfile se especifica las dependencias y versiones deseadas para poder realizar un proyecto, para instalar dichas gemas en nuestro entorno de trabajo es necesario ejecutar el comando ```bundle install```, este instalara las gemas en nuestro entorno de trabajo y creara el archivo ```Gemfile.lock``` este archivo contiene las versiones exactas de las gemas y sus dependencias que fueron instaladas en el entorno
de desarrollo. 

¿Por qué es una buena práctica especificar ```` -without production ``` al ejecutarlo en su computadora de desarrollo?

Es buena practica porque a veces las gemas pueden entrar en conflicto, ademas no es necesario hacer el llamado al campo de produccion ya que estamos trabajando en el campo de desarrollo y no es necesario desplegar dicho entorno a menos que no se le necesite. 
