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

![]()

Vemos que como resultado encontramos una linea

.FF.FFFF.FFF

Esto representa las pruebas que pasaron con exito con un punto (.) y aquellas pruebas que fallaraon con una efe (F), aparece el . ya que en la seccion de pruebas hay tres lineas de codigo que tienen como titulo ```'deberia ser definido'```, la funcionalidad de los argumentos descritos con dicha funcionalidad verifica que si los metodos correspondientes estan definidos, lo cual es correcto ya que se encuentra definidos los metodos ```sum(arr), max_2_sum(arr) y sum_to_n?(arr,n)``` pero sin funcionalidad.

![]()

Aqui muestra algunas recomendaciones o indicaciones de lo que podria estar mal, lo cual es de ayuda al realizar el programa. En la seccion final se encuentra que se realizaron 12 pruebas y 9 de ellas fallaron.

Posteriormente tratamos de agregarle funcionalidad al programa principal llamado ```programaprincipal1.rb``` para poder asi ejecutar las pruebas. Posteriormente ejecutamos la prueba correspondiente donde se muestra lo siguiente.

![]()

Aqui se muestra que todas las pruebas pasaron ya que se verifica que aparecen en ```.``` vemos que tambien nos aparece el numero de pruebas ejecutadas en este caso 12 y que el numero de pruebas falladas es 0.

# Segundo codigo
