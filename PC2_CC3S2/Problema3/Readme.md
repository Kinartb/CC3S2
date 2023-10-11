# Problema 3

## Inicializacion

Mostramos las versiones con las cuales estamos trabajando

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc0.png)

Sin embargo en el entorno local del trabajo estamos usando ```ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]```. Posteriormente ejecutamos ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring``` para crear el campo de trabajo.


![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc1.png)


¿Qué pasa con ese mensaje run bundle install?

Es el comando que se utiliza para instalar todas las gemas necesarias para el proyecto Ruby on Rails, este se crea o corre automaticamente al ejecutar ```rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring```. Por el contrario para un trabajo nativo normalmente se suele crear un documento ```Gemfile``` e introducir de manera manual las gemas a utilizar, cuando se utiliza el comando anterior este se crea por si mismo.

cambiamos el Gemfile para trabajar con la version de sql especificada en este caso 1.3.13 por consulta del proyecto de trabajo.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc2.png)

Vemos como se realiza el cambio en las gemas al ejecutar ```bundle install```. Se realiza las especificaciones sin embargo presenta un error al momento de ejecutar el comando ```rails server```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc3.png)

Por lo que se elegio la version de 1.4 de sql para trabajar ya que con este no mandaba error, vemos que al ejecutar ```rail server``` aparece que hemos inicializado una pagina web local en estado de espera que se encuentra(para este caso en particular) en la ruta ```http://127.0.0.1:3000```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc5.png)

Al escribir dicha ruta (URL) en el navegador nos aparece la pagina de inicio de Ruby on Rails por defecto. 

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc6.png)

Al entrar a dicha pagina local vemos que nuestra output de la consola ha cambiado, esto quiere decir que ya se recibio una respuesta por parte del cliente (yo) al entrar a esta pagina, vemos que tiene como mensaje la instruccion 200 que hace referencia al codigo HTTP 200 OK el cual indica que la solicitud ha tenido éxito.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc7.png)

## Exploracion a base de datos y creacion

Vamos a crear una base de datos con el comando ```rails db:create``` este comando inicializa una base de datos en el entorno db con el nombre ```development.sqlite3``` pero como este archivo ya se ha creado anteriormente entonces en su lugar se crea ```test.sqlite3```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc8.png)

continuacion vamos a realizar la exploracion del archivo ```db/database.yml``` este archivo como se muestra indica como la aplicacion Rails se va a conectar a la base de datos SQLite en diferentes entornos. Para este caso particular tenemos que para el desarrollo, la produccion y las pruebas van a utilizar los archivos ```development.sqlite3```, ```production.sqlite3```  y  ```test.sqlite3``` respectivamente en la direccion db.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc9.png)

A continuacion segun lo pedido ejecutamos ```rails generate migration create_movies``` para la migracion de una tabla con nombre create_movies.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc10.png)

Los numeros del nombre del archivo indica la fecha y hora de creacion con posteriormente el nombre indicado de creacion ya que de esta manera es la cual se organizan los archivos en este entorno. Ahora llenaremos dicho archivo de la siguiente manera.

```ruby
class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date' # Add fields that let Rails automatically  keep track # of when movies are add>
      t.timestamps
    end
  end
end
```
Lo que realizara este codigo al ejecutar ```rails db:migrate``` es crear una tabla llamada movies la cual va a tener como columnas los campos title, rating, description y release_date. Y tambien las columnas automaticas de Rails correspondiente con timestamps (de tiempo) con nombres created_at y update_at. Posteriormente ejecutamos ```rails db:migrate```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc11.png)

Aqui nos muestra que se ha ejecutado la migracion y se creo la tabla movies en la base de datos de desarrollo. Vemos que si ejecutamos ```rails db:migrate``` no aparece ningun cambio ya que solo aplica las migraciones que aun no se han aplicado. A continuacion vamos a crear el modelo ```Movie``` en la ubicacion ```app/models/movie.rb ``` donde vamos a agregar lo siguiente.

```ruby
class Movie < ActiveRecord::Base 
end
```
Como ultimo paso antes de continuar, ahora puedes sembrar la base de datos (es decir, agregar datos iniciales) con algunas peliculas para hacer que el resto de la actividad sea mas interesante. En la ubicacion ```db/nano seeds.rb``` escribiremos lo siguiente.

```ruby
# Seed the RottenPotatoes DB with some movies. 
more_movies = [
  { :title => 'Ganibal', :rating => 'G', :release_date => '25-Nov-1992' },
  { :title => 'Fuerza bruta', :rating => 'R', :release_date => '21-Jul-1989' },
  { :title => 'The Ring', :rating => 'PG-13', :release_date => '10-Aug-2011' },
  { :title => 'Alien: The Return', :rating => 'PG', :release_date => '12-Jun-1981' }
]

more_movies.each do |movie|
  Movie.create!(movie)
end
```
Y posteriormente levantamos con ```rails db:seed```.

![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc12.png)
![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc13.png)
![](https://github.com/Kinartb/CC3S2/blob/main/PC2_CC3S2/Imagenes/pc14.png)
