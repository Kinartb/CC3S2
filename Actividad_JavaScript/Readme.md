## Java Script

### Preguntas conceptuales

Piensa en las siguientes preguntas sobre JavaScript. Si puedes, ¡coméntalo con tus compañeros!

* En JavaScript, todas las operaciones de red son asíncronas. ¿Porque es esto importante?
  
RPTA: Esto es importante porque JavaScript se ejecuta en un entorno de ```un solo hilo (single-threaded)```. Si las operaciones de red fueran síncronas, significaría que el hilo principal estaría bloqueado mientras espera que las operaciones de red se completen. Al hacer que las operaciones de red sean asíncronas, JavaScript puede continuar ejecutando otras tareas mientras espera la respuesta de la red, mejorando la eficiencia y la capacidad de respuesta de las aplicaciones.

* En Javascript, queremos realizar acciones tras una operación/solicitud de red completa. ¿Qué paradigma de programación hace esto posible?

RPTA: El paradigma de programación que hace posible realizar acciones después de que una operación asíncrona, como una solicitud de red, se complete es la ```Programación Asíncrona```. 

* ¿Javascript proporciona soporte limitado para la herencia a través de qué mecanismo?

RPTA:  JavaScript proporciona soporte para la herencia a través de ```prototipos```. Cada objeto en JavaScript tiene un enlace interno a otro objeto llamado prototipo. Cuando intentamos acceder a una propiedad de un objeto que no está presente en ese objeto, JavaScript busca la propiedad en el prototipo. Este mecanismo se llama herencia prototípica y es una forma flexible de implementar la herencia en JavaScript. Sin embargo, no sigue el modelo de herencia de clases típico de otros lenguajes de programación orientados a objetos.

* ¿Qué es el DOM? ¿Qué librería nos ayuda a usar Javascript para manipular el DOM?

RPTA: El DOM (Document Object Model) es una interfaz de programación que representa y manipula documentos HTML y XML como un árbol de objetos. Permite a los programas acceder y manipular la estructura, estilo y contenido de los documentos web. Una librería que ayuda a usar JavaScript para manipular el DOM es ```jQuery```. jQuery simplifica la manipulación del DOM, la gestión de eventos y las llamadas AJAX, proporcionando una interfaz más fácil y concisa.

### ¿Qué puede hacer Javascript ?

Al igual que Ruby, Javascript sigue de cerca el paradigma de "todo es un objeto" con un par de excepciones. La breve lista de primitivas incluye `String`, `Númber`, `undefined` (sin valor), `null` (diferente de `undefined`), Booleano y `BigInt`. Además, al igual que Ruby, los valores de JavaScript se escriben dinámicamente, por lo que las declaraciones de variables están precedidas por `var` o `let`, en lugar de tipos.

#### Booleano

Debido a cómo se escriben las variables de forma dinámica y flexible, hay valores que evalúan `True/False` cuando se convierten en Booleanos, pero cuando se comparan entre sí, pueden evaluarse o no como verdaderos.

Hay siete valores "Falsy" en Javascript. "Falsy" significa que se evalúan como falso en condicionales: `0` (`Number`), `0n` (`BigInt`), `null` (palabra clave), `undefined` (palabra clave), `false` (Booleano), `NaN` (`Number`), "" (`String`). Sin embargo, estos valores no son necesariamente iguales entre sí.

Para verificar tu comprensión, completa estas preguntas:

* `undefined == null`
* `NaN == NaN`
* `null == false`
* `0 == false`
* `"" == false`

¡Las comparaciones booleanas son complicadas! 1, Recomendamos usar métodos de comparación integrados en lugar de `==` o `===` 2. Evita comparar diferentes tipos. 3. Convierte explícitamente los tipos a Booleanos cuando sea necesario.

```javascript
console.log(undefined == null); // true
console.log(NaN == NaN); // false
console.log(null == false); // false
console.log(0 == false); // true
console.log("" == false); // true
```

#### Arrays

Los arrays son una de las estructuras de datos centrales en Javascript, pero se comportan de maneras interesantes. En este ejercicio, veremos algunos de los comportamientos relativamente extraños de las operaciones tradicionales con arrays. ¡Trata de justificar también por qué ese comportamiento es así!.

* `[1, 2, 3] + [4, 5, 6]`
* `!![]`
* `[] == true`
* `[10, 1, 3].sort()`
* `[] == 0​`
* 
```javascript
console.log([1, 2, 3] + [4, 5, 6]); // "1,2,34,5,6"
console.log(!![]); // true
console.log([] == true); // false
console.log([10, 1, 3].sort()); // [1, 10, 3]
console.log([] == 0); // true

```
#### Clausuras

Un paradigma popular en Javascript es el uso de clausuras. Al igual que las funciones de orden superior en Python, las clausuras son combinaciones de una función agrupada con referencias a su estado circundante. Las clausuras le dan acceso al alcance de una función externa desde una función interna. Determina la salida del siguiente código.

```
function f1(x) {
  var baz = 3;
  return function (y) {
    console.log(x + y + (baz++));
    }
}
var bar = f1(5);
bar(11);
```


```javascript
function f1(x) {
    var baz = 3;
    return function (y) {
      console.log(x + y + (baz++));
      }
  }
  var bar = f1(5);
  bar(11);
  //19
```

#### Algoritmos

La siguiente función encuentra el mayor número dentro de un array, pero tiene una eficiencia de `O(N2)`. Reescribe la función para que se convierta en una `O(N)` más rápida:

```
function greatestNumber(array) {
  for (let i of array) {
    let isIValTheGreatest = true;
    for (let j of array) {
      if (j > i) {
        isIValTheGreatest = false;
      }
    }
    if (isIValTheGreatest) {
      return i;
    }
  }
}
```
Reescribe la función para que se convierta en una `O(N)` más rápida:

```javascript
function greatestNumber(array) {
    if (array.length === 0) {
      return undefined; 
    }
    let maxNumber = array[0]; 
    for (let i = 1; i < array.length; i++) {
      if (array[i] > maxNumber) {
        maxNumber = array[i]; 
      }
    }
    return maxNumber; 
  }
  
```
La siguiente función devuelve si hay o no una `X` mayúscula dentro de una cadena.

```
function containsX(string) {
  foundX = false;
  for(let i = 0; i < string.length; i++) {
   if (string[i] === "X") {
     foundX = true;
     }
   }
   return foundX;
  }
```

¿Cuál es la complejidad temporal de esta función en términos de notación O grande? Luego, modifica el código para mejorar la eficiencia del algoritmo en los mejores y promedios escenarios.

Escribe una función que devuelva el primer carácter no duplicado de una cadena. Por ejemplo, la cadena "mínimum" tiene dos caracteres que solo existen una vez: la `n` y la `u`, por lo que su función debería devolver la `n`, ya que aparece primero. La función debe tener una eficiencia de `O(N)`.

```javascript

  function PrimerCaracterNoDuplicado(str) {
    const charCount = {};
    for (let char of str) {
      charCount[char] = (charCount[char] || 0) + 1;
    }
    for (let char of str) {
      if (charCount[char] === 1) {
        return char;
      }
    }
    return null;
  }
  
  // Ejemplo de uso:
  const result = PrimerCaracterNoDuplicado("minimum");
  console.log(result); // Devolverá "n"
```

#### Clases

Practiquemos la herencia y la programación orientada a objetos en Javascript. Diseñe 2 clases, una llamada "Pokemon" y otra llamada "Charizard". Las clases deben hacer lo siguiente:

Clase Pokémon:

- El constructor toma 3 parámetros (HP, ataque, defensa)
- El constructor debe crear 6 campos (HP, ataque, defensa, movimiento, nivel, tipo). Los valores de (mover, nivelar,
tipo) debe inicializarse en ("", 1, "").
- Implementa un método `flight` que arroje un error que indique que no se especifica ningún movimiento.
- Implementa un método `canFly` que verifica si se especifica un tipo. Si no, arroja un error. Si es así, verifica si el tipo incluye "volar". En caso afirmativo, devuelve verdadero; si no, devuelve falso.

Clase Charizard:

- El constructor toma 4 parámetros (HP, ataque, defensa, movimiento)
- El constructor configura el movimiento y el tipo (para "disparar/volar") además de establecer HP, ataque y defensa como el
constructor de superclase.
- Sobreescribe el método `fight`. Si se especifica un movimiento, imprime una declaración que indique que se está utilizando el movimiento y devuelve el campo de ataque. Si no, arroja un error.

```javascript
class Pokemon {
  constructor(HP, ataque, defensa) {
      this.HP = HP;
      this.ataque = ataque;
      this.defensa = defensa;
      this.movimiento = "";
      this.nivel = 1;
      this.tipo = "";
  }

  flight() {
      if (!this.movimiento) {
          throw new Error("No se especifica ningún movimiento.");
      }
  }

  canFly() {
      if (!this.tipo) {
          throw new Error("No se especifica ningún tipo.");
      }
      return this.tipo.includes("volar");
  }
}

class Charizard extends Pokemon {
  constructor(HP, ataque, defensa, movimiento) {
      super(HP, ataque, defensa);
      this.movimiento = movimiento;
      this.tipo = "disparar/volar";
  }

  fight() {
      if (this.movimiento) {
          console.log(`Utilizando el movimiento ${this.movimiento}.`);
          return this.ataque;
      } else {
          throw new Error("No se especifica ningún movimiento.");
      }
  }
}



// Crear una instancia de Charizard
const charizard = new Charizard(100, 50, 40, "Lanzallamas");

// Llamar al método fight
try {
  charizard.fight();
} catch (error) {
  console.error(`Error: ${error.message}`);
}

// Llamar al método flight
try {
  charizard.flight();
} catch (error) {
  console.error(`Error: ${error.message}`);
}

// Llamar al método canFly
try {
  console.log(charizard.canFly());
} catch (error) {
  console.error(`Error: ${error.message}`);
}
```

