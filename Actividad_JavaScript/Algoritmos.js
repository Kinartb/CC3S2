
//cambia a O(N)
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

// Ejemplo de uso:
const numbers = [7, 12, 5, 21, 9, 15];
const Ejemplo1 = greatestNumber(numbers);
console.log(Ejemplo1); // Devolverá 21

// Tiene complejidad O(N)
function containsX(string) {
    return string.includes("X");
  }

  // Ejemplo de uso:
const Ejemplo2 = "Hola MundoX";
console.log(containsX(Ejemplo2)); // Devolverá true

//Escribe una función que devuelva el primer carácter no duplicado de una cadena. 
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
  const Ejemplo3 = PrimerCaracterNoDuplicado("minimum");
  console.log(Ejemplo3); // Devolverá "n"
  