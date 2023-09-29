# frozen_string_literal: true
# Define una función llamada 'hello' que recibe un argumento 'name'.
def hello(name)
  # Devuelve una cadena de saludo que incluye el nombre proporcionado como argumento.
  "Hello, #{name}"
end

# Define una función llamada 'starts_with_consonant?' que recibe una cadena 's'.
def starts_with_consonant?(s)
  # Utiliza una expresión regular para verificar si la cadena comienza con una letra consonante,
  # tanto en mayúscula como en minúscula, y devuelve true si es así, o false en caso contrario.
  /^[b-df-hj-np-tv-z]/i.match?(s)
end

# Define una función llamada 'binary_multiple_of_4?' que recibe una cadena 's'.
def binary_multiple_of_4?(s)
  # Utiliza una expresión regular para verificar si la cadena contiene solo caracteres '0' y '1'.
  # Si la cadena no cumple con este formato, devuelve false.
  return false unless /^def hello(name)

end

# Define una función llamada 'starts_with_consonant?' que recibe una cadena 's'.
def starts_with_consonant?(s)
  #
end

# Define una función llamada 'binary_multiple_of_4?' que recibe una cadena 's'.
def binary_multiple_of_4?(s)

end[01]+$/.match?(s)

  # Convierte la cadena binaria en un valor entero.
  binary_value = s.to_i(2)

  # Verifica si el valor entero es un múltiplo de 4 y devuelve true si es así, o false en caso contrario.
  binary_value % 4 == 0
end