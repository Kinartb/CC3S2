# frozen_string_literal: true
class ArbolBinario
  class Nodo
    #usamos attr_accessor
    #para definir automáticamente los métodos de lectura (getter) y escritura (setter) de una instancia de una clase.
    attr_accessor :valor, :izquierda, :derecha

    def initialize(valor)
      #ponemos que este vacio por defecto (nil) e inicializamos variables
      @valor = valor
      @izquierda = nil
      @derecha = nil
    end
  end

  def initialize
    #inicializamos raiz como vacio
    @raiz = nil
  end

  def <<(valor)
    #se usa << para definir que se realizara una funcion de insertar
    #se implementa la funcion insertar para agregar un valor en el arbol
    @raiz = insertar(@raiz, valor)
  end

  def empty?
    #la raiz se encuentra vacia?
    @raiz.nil?
  end

  def each(&bloque)
    # unless realiza la funcionalidad contraria a if
    # si el arbol no esta vacio realiza el recorrido
    recorrido(@raiz, &bloque) unless empty?
  end

  #inserta un valor al arbol
  def insertar(nodo, valor)
    #Si el nodo es nil, crea un nuevo nodo con el valor y lo devuelve como el nuevo nodo insertado.
    return Nodo.new(valor) if nodo.nil?

    #verifica si el valor es mayor o menor que el nodo actual
    #si es menor se realiza el agregado en el subarbol izquierdo
    if valor < nodo.valor
      nodo.izquierda = insertar(nodo.izquierda, valor)
      #si es mayor se realiza el agregado en el subarbol derecho
    elsif valor > nodo.valor
      nodo.derecha = insertar(nodo.derecha, valor)
    end
    #luego devuelve el nodo actual
    nodo
  end

  def recorrido(nodo, &bloque)
    #no hay mas nodos que visitar
    return if nodo.nil?
    #se llama al subarbol izquierdo
    recorrido(nodo.izquierda, &bloque)

    bloque.call(nodo.valor) # Llamamos al bloque
    #se llama al subarbol derecho
    recorrido(nodo.derecha, &bloque)


  end
end

#aplicacion
arbol = ArbolBinario.new

arbol << 5
arbol << 3
arbol << 7
arbol << 2
arbol << 4
arbol << 6
arbol << 8

puts "El árbol está vacío: #{arbol.empty?}"
puts "Elementos en el árbol en orden:"
arbol.each { |valor| puts valor }