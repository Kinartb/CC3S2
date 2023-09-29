class BookInStock
  attr_accessor :isbn, :price  # Declara los atributos isbn y price con sus getters y setters

  def initialize(isbn, price)  # Define el constructor de la clase con dos parámetros, isbn y price
    raise ArgumentError, 'El ISBN no puede estar vacío' if isbn.empty?  # Verifica si el ISBN está vacío y lanza una excepción ArgumentError si es así
    raise ArgumentError, 'El precio debe ser mayor que 0' if price <= 0  # Verifica si el precio es menor o igual a 0 y lanza una excepción ArgumentError si es así

    @isbn = isbn  # Asigna el valor de isbn al atributo de instancia @isbn
    @price = price  # Asigna el valor de price al atributo de instancia @price
  end

  def price_as_string  # Define el método price_as_string
    format('$%.2f', price)  # Formatea el precio como una cadena con un signo de dólar y dos decimales
  end
end
