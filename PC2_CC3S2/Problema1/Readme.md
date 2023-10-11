# Problema 1

## Pregunta 1

Escribe una función que acepte una cadena que contenga todas las letras del alfabeto excepto una y devuelva la letra que falta. Por ejemplo, la cadena the quick brown box jumps over a lazy dog contiene todas las letras del alfabeto excepto la letra f. La función debe tener una complejidad temporal de O(n).  

```ruby
#Programa implementado
# frozen_string_literal: true
def letra(cadena)
  letras ={}
  cadena.each_char do |letra|
    letras[letra]= true
  end
  ('a'..'z').each do |letra|
    return letra unless letras.key?(letra)
  end
  return "Se encuentran todas las leetras del alfabeto"
end
#aplicacion
cadena=" quick brown box jumps over a lazy dog "
#cadena= "abcdefghijklmnopqrstvwyzx" #falta la u
letra=letra(cadena)
puts " la letra que falta es: #{letra}"
```

Al momento de ejecutar la aplicacion muestra lo siguiente
```
/bin/bash -c "env RBENV_VERSION=2.6.6 /usr/lib/rbenv/libexec/rbenv exec ruby /home/arturo/RubymineProjects/PC2/pregunta1.rb"
 la letra que falta es: f

Process finished with exit code 0
```
## Pregunta 2

## Pregunta 3

