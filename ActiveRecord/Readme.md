Ejecutamos bundle para instalar las gemas en nuestro proyecto local con ```bundle```. Posteriormente iremos a la carpeta de trabajo y ejecutaremos ```bundle exec rspec spec/activerecord_practica_spec.rb```.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord1.png)

Vemos que nos aparecen trece ```*``` de color amarillento esto es porque en el archivo ```spec/activerecord_practica_spec.rb``` se han desarrollado las pruebas en modo de espera.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord2.png)

Tambien podemos visualizar aquellas pruebas que estan en espera indexadas con un nombre referente y al final del output nos muestra que se encuentran realizadas 13 pruebas y que 13 de ellas se encuentran en un estado de espera. Este estado pendiente o de espera se debe a que en las instrucciones del codigo se realizo la ejecucion de ```xspecify``` esta instruccion quiere decir que dichas pruebas se ejecutaran pero que el entorno sobre el cual se vana realizar dichas pruebas aun no han sido desarrolladas por completo.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord3.png)

Para confirmar lo anterior vamos a quitar todos los ```xspecify``` y los vamos a reemplazar por ```specify``` y posteriormente ejecutaremos el comando ```spec/activerecord_practica_spec.rb```  y veremos que es lo que sucede.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord4.png)

Los que nos muestra son 13 veces ```F``` el cual es el numero de pruebas fallidas, esto al reemplazar lo anterior. A continuacion se muestra el resto del output.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord5.png)

Aqui se manifiesta que se han realizado 13 pruebas y que 13 de ellas son pruebas fallidas, ademas nos muetra el nuemro de linea donde podria presentar el problema.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord6.png)

Aqui nos muestra sugerencias o soluciones las culaes nos van  a ser utiles al momento de realizar el codigo principal sobre el cual se van a realizar las pruebas. A continuacion para el codigo principal se escribira lo siguiente.


```ruby
require 'sqlite3'
require 'active_record'
require 'byebug'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => 'customers.sqlite3')
# Mostrar consultas en la consola.
# Comenta esta linea para desactivar la visualización de consultas SQL sin formato.
ActiveRecord::Base.logger = Logger.new(STDOUT)

class Customer < ActiveRecord::Base
  def to_s
    "  [#{id}] #{first} #{last}, <#{email}>, #{birthdate.strftime('%Y-%m-d')}"
  end

  def self.any_candice
    # Filtra los clientes cuyo nombre sea Candice
    where(first: 'Candice')
  end

  def self.with_valid_email
    # Filtra los clientes con direcciones de correo electrónico válidas (que contengan '@')
    where("email LIKE ?", "%@%")
  end

  def self.with_dot_org_email
    # Filtra los clientes con correos electrónicos .org
    where("email LIKE ?", "%.org")
  end

  def self.with_invalid_email
    # Filtra los clientes con correos electrónicos no válidos pero que no estén en blanco (no contienen "@")
    where("email NOT LIKE ? AND email IS NOT NULL AND email != ?", "%@%", "")
  end

  def self.with_blank_email
    # Filtra los clientes con correos electrónicos en blanco
    where(email: [nil, ""])
  end

  def self.born_before_1980
    # Filtra los clientes nacidos antes del 1 de enero de 1980
    where("birthdate < ?", Date.new(1980, 1, 1))
  end

  def self.with_valid_email_and_born_before_1980
    # Combina dos condiciones: correo electrónico válido y nacidos antes del 1/1/1980
    with_valid_email.born_before_1980
  end

  def self.last_names_starting_with_b
    # Filtra los clientes cuyo apellido comienza con "B" y los ordena por fecha de nacimiento
    where("last LIKE ?", "B%").order(birthdate: :asc)
  end

  def self.twenty_youngest
    # Ordena a los clientes por fecha de nacimiento en orden ascendente y limita a 20 resultados
    Customer.order("birthdate desc").limit("20")
  end

  def self.update_gussie_murray_birthdate
    # Actualiza la fecha de nacimiento de Gussie Murray
    gussie_murray = find_by(first: 'Gussie', last: 'Murray')
    gussie_murray.update(birthdate: Date.new(2004, 2, 8))
  end

  def self.change_all_invalid_emails_to_blank
    # Cambia todos los correos electrónicos no válidos a blanco
    where("email NOT LIKE ? AND email IS NOT NULL", "%@%").update_all(email: "")
  end

  def self.delete_meggie_herman
    # Elimina al cliente Meggie Herman de la base de datos
    meggie_herman = find_by(first: 'Meggie', last: 'Herman')
    meggie_herman.destroy if meggie_herman
  end

  def self.delete_everyone_born_before_1978
    # Elimina todos los clientes nacidos el 31 de diciembre de 1977
    where(birthdate: Date.new(1977, 12, 31)).destroy_all
  end
end
```
Ahora ejecutaremos las pruebas y nos saldra lo siguiente.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord7.png)

Al ejecutar el comando vemos que se realizan pruebas sobre datos SQL de ejemplo, este es un tipo de prueba diferente para analizar los requerimientos con los cuales debe cumplir nuestro campo de trabajo objetivo al momento de trabajar con tablas de datos relacional, ha de ser raro que al memomento de ejecutar ```spec/activerecord_practica_spec.rb``` no aparezcan 13 ejemplos ejecutados correctamente. A continuacion vamos a hacer uso de ```guard``` en consola para serciorarnos que todas las pruebas esten correctas.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord8.png)

```guard``` es una herramienta que nos permitira evaluar las pruebas correspondientes cada vez que se realice un cambio en el area de trabajo, para esta caso particular borraremos l en la linea 42 del codigo principal para ver si se realiza algun cambio.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord9.png)

Vemos que al terminar de guardar el archivo se ejecutan las pruebas de manera automatica y nos aparece una ventana que dice que se han realizado 13 pruebas y solo de ellas presentan fallos. A continuacion volvemos a corregir el error al reestablecer la l inicial y guardamos.

![](https://github.com/Kinartb/CC3S2/blob/main/ActiveRecord/Imagenes/activerecord10.png)

Vemos que al final de la consola aparecen que se han realizado 13 ejemplos con 0 errores, es decir todas las pruebas se ejecutaron con exito.

###Comentario

Las líneas que contienen "TRANSACTION" se refieren a operaciones de control de transacciones en una base de datos. En particular al realizar las pruebas vemos que hay dos tipos de transaction.

*Rollback transaction*: Esto indica que se está realizando un rollback (reversión) de una transacción. En una transacción, si algo sale mal o si ocurre un error, se puede revertir (rollback) para deshacer todas las operaciones realizadas en esa transacción y restaurar la base de datos a su estado anterior.

*Begin transaction*: Aquí, se inicia una nueva transacción. Comienza una nueva unidad en la que se ejecutarán una serie de operaciones. Todas las operaciones realizadas en esta transacción se aplicarán a la base de datos en conjunto, y si alguna operación falla, se puede realizar un rollback para deshacer todas las operaciones dentro de esta transacción.
