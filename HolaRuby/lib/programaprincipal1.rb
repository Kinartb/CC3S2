def sum(arr)
  # Suma todos los elementos en el arreglo y devuelve el resultado.
  arr.reduce(0, :+)
end

def max_2_sum(arr)
  # Maneja los casos especiales cuando el arreglo está vacío o tiene solo un elemento.
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  # Ordena el arreglo en orden descendente y suma los dos primeros elementos.
  sorted_arr = arr.sort.reverse
  sorted_arr[0] + sorted_arr[1]
end
def sum_to_n?(arr, n)
  # Verifica si hay dos elementos en el arreglo que sumen n.
  return false if arr.length < 2

  arr.each_with_index do |element, index|
    complement = n - element
    remaining_elements = arr[(index + 1)..-1]  # Excluye elementos anteriores

    # Verifica si el complemento está en los elementos restantes.
    return true if remaining_elements.include?(complement)
  end

  # Si no se encontraron dos elementos que sumen n, devuelve false.
  false
end