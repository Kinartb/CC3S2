Respuesta 1: comando grep en ruby, ejecutar con `ruby script_grep.rb cadena_a_buscar archivo1.txt archivo2.txt -n -i`

Respuesta 2: principio abierto-cerrado en ruby, agregar un ejemplo al codigo y ejecutarlo.

```rb
# Ejemplo de uso de la clase OpenClosed

# Definición de una clase simple
class MiClase
  def metodo_original
    puts "Este es el método original."
  end
end

# Intentar incluir un módulo con un método que ya existe en la clase
module ModuloConMetodoExistente
  def metodo_original
    puts "Este es el método del módulo que ya existe en la clase."
  end
end

# Intentar extender la clase con un módulo que tiene un método existente
module ModuloConMetodoExistenteExtendido
  def metodo_extendido
    puts "Este es un método del módulo extendido."
  end
end

# Uso de la clase OpenClosed para cerrar la clase MiClase
OpenClosed.include(ModuloConMetodoExistente)

# Crear una instancia de MiClase
objeto = MiClase.new

# Llamar al método original
objeto.metodo_original

# Intentar extender la clase con un módulo que tiene un método existente
OpenClosed.extend(ModuloConMetodoExistenteExtendido)

# Intentar agregar un nuevo método a la clase
def objeto.metodo_nuevo
  puts "Este es un nuevo método agregado a la instancia."
end

# Llamar al nuevo método
objeto.metodo_nuevo

```
