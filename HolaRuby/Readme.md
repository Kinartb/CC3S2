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
Ejecutamos la prueba y tenemos lo siguiente.


