# ¿Qué es un constructor?

Un constructor es un metodo de la propia clase, este se ejecuta de manera automatica cuando se instancia un objeto.
Su funcion principal es inicializar el objeto.
Ejemplo en código

```dart
Persona persona = Persona();
Persona es la clase
persona es la variable de referencia
Persona() es la llamada al constructor para inicializar el objeto
```

## Constructor por defecto

Dart tiene la capacidad de crear automaticamente un constructor solo en caso de si no creas un constructor en la clase. Que seria el Persona() ese es el constructor por defecto

## Constructores personalizados

Dentro de las clases podemos crear constructores personalizados esto para evitar que dart cree automaticamente un constructor generico.
En que nos puede ayudar la creacion de constructores personalizados? de que otras clases pueden heredar ciertas funciones o que deban llamar al constructor padre solo en caso de que se creen clases por herencia, tambien sirve para llamar propiedades o métodos que querramos inicializar en ese constructor personalizado.
Ejemplo

```dart
class Persona {
  String nombre;
  int edad;

//Este es el constructor personalizado
  Persona(String nombre, int edad) {
    //Aca en el constructor tenemos 2 nombre y 2 edad, el this.nombre hace referencia al atributo de la clase, mientras que nombre sin this es el parametro que recibira la clase, en resumen this.nombre hace referencia a la propiedad/atributo de la clase y nombre hace referencia al parametro del constructor, al ser instanciada un objeto y pasarle los argumentos al constructor estos son recibidos por el this.nombre que son las propiedades de la clase
    this.nombre = nombre;
    this.edad = edad;
  }

  //instanciacion del objeto
  void main() {
  Persona persona = Persona("Edwin", 31);

  print(persona.nombre);
  print(persona.edad);
}

//no fue necesario esto
persona.nombre = "...";
persona.edad = ...;
}
```

### Que significa this?

this llama o hace referencia a los atributos del objeto en resumidas cuentas this.nombre guarda el valor que se recibira en el argumento al inicializar el constructor de cada instancia.

### Sintaxis abreviada en Dart

Dart permite escribir el constructor de forma mas corta, los constructores tambien pueden crearse con valores por defecto
Ejemplo

```dart
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad); esta es la forma mas usada en los proyectos y mas corta de escribir el constructor
}
```

### Constructores con nombre

Dart no permite la sobrecarga de tener varios constructores con el mismo nombre, en su lugar usa constructores con nombre
Ejemplo

```dart
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  Persona.soloNombre(this.nombre) : edad = 0; //este es el constructor con nombre
}

// y asi se usa
Persona persona2 = Persona.soloNombre("María");
```

### He aprendido sobre

✅ ¿Qué es un constructor? un constructor es una función que inicializa el objeto, es decir instancia (crea) el objeto. cada clase tiene constructores y estos se ejecutan automaticamente al construir el objeto

✅ ¿Cuándo se ejecuta? el constructor se ejecuta automaticamente al instanciar el objeto

✅ ¿Para qué sirve this dentro de un constructor? this son como argumentos de una funcion, estos sirven para inicializar atributos del objeto, estos van de la mano con el constructor

✅ ¿Por qué es mejor crear objetos ya inicializados? es una de las mejores practicas para evitar que exista un estado incompleto o nulo reduciendo los errores en el código, es similar a enviarle argumentos a una función, se suele usar con la palabra reservada final para obligar a inicializar todos los atributos o métodos.

✅ ¿Cómo se crean varios objetos usando el mismo constructor? los objetos se crean declarandoles un nombre haciendo uso del constructor de la clase ejemplo persona = Persona(); persona2 = Persona();

✅ ¿Cómo resuelve Dart la ausencia de sobrecarga tradicional de constructores? dart resuelve la ausencia de sobre carga con constructores con nombre
