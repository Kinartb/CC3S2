# Introduccion
Para poder realizar el proyecto se tiene que crear la carpeta donde realizaremos nuestro proyecto, para un caso particular dicha carpeta se llamara trabajo. Dentro de la carpeta trabajo vamos a crear nuestro archivo Gemfile, para eso en consola dentro de la ubicacion de la carpeta escribimos en consola lo siguiente.

```
nano Gemfile
```
En el contenido del archivo escribimos lo siguiente.
```
# frozen_string_literal: true

source "https://rubygems.org"
gem "rspec"

# gem "rails"
```
Guardamos y cerramos. En la ubicacion de nuestra carpeta consola, despues de llenar nuestro archivo vamos a ejecutar el comando.
```
bundle init
```
Para instalar las gemas en el proyecto.

En trabajo vamos a crear dos carpetas, lib y spec, dentro de lib se va a encontrar el programa principal (principal.rb) y dentro de spec se va a encontrar el programa de pruebas (prueba.rb).

Para ejectuar las pruebas, vamos a ejecutar el siguiente comando en la ubicacion de la carpeta de trabajo en consola.
```
bundle exec rspec/nombre_de_prueba_a_elegir,rb
```

# Primer codigo
Para este codigo vamos a realizar el proceso RGB, inicialmente en el codigo principal se tiene la siguiente estructura.
```
def sum(arr)
end

def max_2_sum(arr)
end

def sum_to_n?(arr,n)
end
```
Ejecutamos la prueba llamada ```prueba1.rb``` y tenemos lo siguiente.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi1.png)

Vemos que como resultado encontramos una linea

.FF.FFFF.FFF

Esto representa las pruebas que pasaron con exito con un punto (.) y aquellas pruebas que fallaraon con una efe (F), aparece el . ya que en la seccion de pruebas hay tres lineas de codigo que tienen como titulo ```'deberia ser definido'```, la funcionalidad de los argumentos descritos con dicha funcionalidad verifica que si los metodos correspondientes estan definidos, lo cual es correcto ya que se encuentra definidos los metodos ```sum(arr), max_2_sum(arr) y sum_to_n?(arr,n)``` pero sin funcionalidad.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi2.png)

Aqui muestra algunas recomendaciones o indicaciones de lo que podria estar mal, lo cual es de ayuda al realizar el programa. En la seccion final se encuentra que se realizaron 12 pruebas y 9 de ellas fallaron.

Posteriormente tratamos de agregarle funcionalidad al programa principal llamado ```programaprincipal1.rb``` para poder asi ejecutar las pruebas. Posteriormente ejecutamos la prueba correspondiente donde se muestra lo siguiente.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi3.png)

Aqui se muestra que todas las pruebas pasaron ya que se verifica que aparecen en ```.``` vemos que tambien nos aparece el numero de pruebas ejecutadas en este caso 12 y que el numero de pruebas falladas es 0.

# Segundo codigo

Inicialmente se tiene el siguiente codigo en el programa principal.

```
def hello(name)
end

def starts_with_consonant?(s)
end

def binary_multiple_of_4?(s)
end
```
y su prueba correspondiente ```prueba2.rb```, la ejecutamos y vemos el resultado.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi4.png)

Vemos que se realizan 10 pruebas y 3 de ellas presentan fallas, esto se debe a que (como en el primer codigo) este presenta que los metodos correspondientes estan definidos, lo cual es correcto esto justificaria 3 pruebas que pasaron, la pregunta seria si las demas estan conrrectas. Pueden que algunas pruebas pasen sin embargo es un falso positivo ya que no se a determinado las funcionalidades de los metodos, por lo que se puede tomar como correcto algo que no es asi. A continuacion se implementara la funcionalidad en el programa ```programaprincipal2.rb```. A continuacion ejecutaremos las pruebas.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi5.png)

Vemos que nos sales que se han realizado 10 pruebas y no se presentan errores. Por lo que diremos que se ejecutaron las pruebas exitosamente.

# Tercer codigo

Inicialmente se tiene el siguiente codigo en el programa principal.

```
class BookInStock
end
```
y su prueba correspondiente ```prueba3.rb```, la ejecutamos y vemos el resultado.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi7.png)

Aparecen ```.``` que indica que pasaron las pruebas y ```F``` que indicaq eu hay pruebas que fallan, las pruebas pasadas hacen referencia a un falso positivo debido a que aun no presentan implementacion. Como los ejemplos anteriores se encuentra la misma prueba de exitencia, se testea si es que realmente existe la clase BookInStock lo cual es correcto pero aun no esta definidio su funcionalidad. A lo largo de la impresion en color rojo vemos que son algunas recomendacion o indicaciones de los cuales porque el codigo podria estar mal, es decir las que no se estan cumpliendo.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi8.png)

Vemos que se realizan 12 pruebas y 8 de ellas presentan fallaron. Pueden que algunas pruebas pasen sin embargo es un falso positivo ya que no se a determinado las funcionalidades de los metodos, por lo que se puede tomar como correcto algo que no se implemento. A continuacion, se implementara la funcionalidad en el programa ```programaprincipal3.rb```. A continuacion ejecutaremos las pruebas.

![](https://github.com/Kinartb/CC3S2/blob/main/HolaRuby/imagenesholarubi/holarubi9.png)

Vemos que nos sales que se han realizado 12 pruebas y no se presentan errores. Por lo que diremos que se ejecutaron las pruebas exitosamente.


