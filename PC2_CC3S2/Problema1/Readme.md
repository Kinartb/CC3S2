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

Un árbol binario ordenado es aquel en el que cada nodo tiene un valor y hasta 2 hijos, cada uno de los cuales es también un árbol binario ordenado, y el valor de cualquier elemento del subárbol izquierdo de un nodo es menor que el valor de cualquier elemento en el subárbol derecho del nodo. Defina una clase colección llamada BinaryTree que ofrezca los métodos de instancia << (insertar elemento), empty? (devuelve cierto si el árbol no tiene elementos) y each (el iterador estándar que devuelve un elemento cada vez, en el orden que tú quieras).

## Pregunta 3

Extiende la clase de tu árbol binario ordenado para que ofrezca los siguientes métodos, cada uno de los cuales toma un bloque: include?(elt) (devuelve cierto si el árbol incluye a elt), all? (cierto si un bloque dado es cierto para todos los elementos), any? (cierto si un bloque dado es cierto para alguno de sus elementos), sort (ordena los elementos).
