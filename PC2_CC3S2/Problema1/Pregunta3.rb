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
    #unless realiza la funcionalidad contraria a if
    #si el arbol no esta vacio realiza el recorrido
    recorrido(@raiz, &bloque) unless empty?
  end

  #inserta un valor al arbol
  def insertar(nodo, valor)
    #si el nodo es nil, crea un nuevo nodo con el valor y lo devuelve como el nuevo nodo insertado.
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
  #SE TIENE EL CODIGO HECHO CON ANTERIORIDAD
  #===========================================================================
  def include?(elemento, nodo = @raiz)
    #verifica si el elemento está presente en el árbol y comienza desde la raiz
    #si el nodo actual es nulo llegamos al final de una rama
    return false if nodo.nil?
    #si el valor del nodo actual es igual al elemento
    return true if nodo.valor == elemento
    #si el lemento que buscamos es menor que el valor del nodo actual
    #continuamos buscando en el subarbol izquierdo
    if elemento < nodo.valor
      return include?(elemento, nodo.izquierda)
    else
      #si el elemento que buscamos es mayor que el valor del nodo actual
      #sino se encuenta alli continuamos buscando en el subarbol derecho
      return include?(elemento, nodo.derecha)
    end
  end

  def all?(&bloque)
    #si el árbol está vacío devuelve verdadero
    return true if empty?
    #utilizamos el metodo recorrido para recorrer los elementos del arbol en orden
    #comprobamos si el bloque es verdadero para cada valor del arbol
    recorrido(@raiz) do |valor|
      #si el bloque no es verdadero para un valor devolvemos falso
      return false unless bloque.call(valor)
    end

    #si el bloque es verdadero para todos los elementos del arbol devolvemos verdadero
    true
  end

  def any?(&bloque)
    #verifica si el bloque es verdadero para al menos uno de los elementos del arbol
    #si el bloque esta vacio devolvemos falso ya que no hay con quien se compare
    return false if empty?
    #analogico a la funcionalidad de all?
    recorrido(@raiz) do |valor|
      return true if bloque.call(valor)
    end
    #si el bloque no es verdadero para ningun valor devolvemos falso
    false
  end

  def sort
    #retorna una lista ordenada con los elementos del árbol en orden
    ordenar = []
    #recorremos los elementos del arbol en orden
    recorrido(@raiz) do |valor|
      #agregamos cada valor a la lista
      ordenar << valor
    end
    #ordenamos la lista
    ordenar.sort
  end
end
#aplicacion

arbol = ArbolBinario.new
arbol << 5
arbol << 3
arbol << 7
arbol << 2
arbol << 4

#verificar si el árbol incluye un elemento específico
include = arbol.include?(4)
puts "El arbol incluye 4? #{include}"

#verificar si todos los elementos del árbol son mayores que 1
all = arbol.all? { |valor| valor > 1 }
puts "Todos los elementos son mayores que 1? #{all}"

#verificar si al menos un elemento del árbol es igual a 7
any = arbol.any? { |valor| valor == 7 }
puts "Al menos un elemento es igual a 7? #{any}"

#obtener una lista ordenada de elementos del árbol
ordenado = arbol.sort
puts "Lista ordenada de elementos del árbol: #{ordenado.join(', ')}"
