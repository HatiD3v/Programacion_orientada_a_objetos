# ¿Qué es la abstracción? 🧩

Consiste en quedarse con lo esencial del objeto y ocultar los detalles innecesarios, podemos decir que este pilar de poo nos ayuda a solo mostrar los datos que sean relevantes para el usuario y ocultar los datos que sean irrelevantes para el usuario o sensibles.
Ejemplo un cliente pide un auto, el auto viene con un color, con ruedas, con motor, el auto esta listo para andar esos serian los datos que veria el cliente, pero los datos irrelevantes es como se construyo ese auto, que piezas tiene el motor, como el auto anda en marcha etc. Eso es abstraccion solo mostrar lo necesario.

## Diseñar clases con responsabilidades claras

Es una de las partes mas importantes de la abstraccion, cada clase debe tener una responsabilidad bien definida, un mal diseño de clase es cuando una clase intenta hacer demasiadas cosas.

## Clases abstractas en Dart

Una clase abstracta no puede crear objetos directamente, esta sirve como una base o como un contrato para otras clases

```dart
abstract class Animal {

  void hacerSonido();

}
//No puede hacer esto, no puedes instanciar un objeto desde una clase abstracta
Animal animal = Animal();
// porque animal es abstracto
// para ello debemos crear clases concretas basadas en la clase abstracta como ya lo expresamos anteriormente como un contrato o base que cumpla con las condiciones(metodos, atributos) de la clase abstracta
class Perro extends Animal {

  @override
  void hacerSonido() {
    print("Guau");
  }

}
```

### ¿Por qué usar clases abstractas?

Porque algunos conceptos existen como idea general, pero no tienen sentido como objeto.

Por ejemplo:

- Animal

¿Qué animal?

No existe un "animal" genérico.

Existen:

- Perro
- Gato
- León
- Caballo

Por eso:

- Animal

es una buena candidata para ser abstracta.

## Interfaces en dart
