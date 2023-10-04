Para la utilizacion de Ruby y Gemfile seran encesarios algunos comandos

```
bundle config --local gemfile ~/ruta
```
```
bundle config --local path .bundle
```

Para poder ejecutar ``` bundle init ``` para iniciar el archivo Gemfile y luego de poner los requisitos ``` bundle install ``` en el directorio actual

### Para ejecutar pruebas
En el Gemfile escribir
```
# frozen_string_literal: true

source "https://rubygems.org"
gem "rspec"

# gem "rails"
```
Para poder usar rspec
```
bundle exec rspec/nombre_de_prueba_a_elegir,rb
```
