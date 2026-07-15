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

En dart cualquier clase puede actuar como una interfaz, las interfaces son como contratos donde se debe cumplir la implementacion exacta de todos los atributos y métodos en las clases que vayan a usar la interfaz. La diferencia es que implementar la interfaz obliga hacer uso de los atributos y métodos que tenga la clase.

Implicitamente cada clase define una interfaz que puede ser usada con la palabra reservada implements, con implements nos comprometemos a reescribir todos las propiedades y métodos que posea la interfaz, tambien existen multiples implementaciones separandolas con el signo de coma (,)

### Diferencia entre abstract e implements

La diferencia entre estos dos son:

Abstract:

- puede tener métodos y propiedades implementadas y abstractas
- Abstract se usa para compartir comportamiento en común
- Abstract se usa con extends

Interfaz:

- Obliga a usar todas las propiedades/métodos que sean definidos en el contrato
- Se usa para definir un contrato que varias clases deben cumplir
- La interfaz se usa con implements.

## Errores que se suelen cometer

Creemos que la abstraccion solo consiste en usar clases abstractas pero no! no es asi. Las clases abstractas son una herramienta para aplicar abstracción.

La verdadera abstraccion consiste en diseñar modelos simples que representen solo lo esencial, bien sea usando clases abstractas o interfaces, ambas cumplen el objetivo de hacer una clase abstracta para solo mostrar lo necesario y ocultar lo complejo.

Recordemos que una clase debe tener una sola responsabilidad, es preferible evitar responsabilidades que no pertenezcan a una clase en concreto..

### He aprendido sobre

✅ ¿Qué es la abstracción y en qué se diferencia del encapsulamiento? La diferencia de la abstraccion es que esta trata de ocultar datos o diseños complejos para solo mostrar lo necesario.
✅ ¿Por qué una clase debe tener una responsabilidad clara? para ser mantenible y legible evitando multiples responsabilidades que no concuerden con la clase, evitando que haga demasiadas cosas.
✅ ¿Qué ventajas tiene dividir un sistema en varias clases pequeñas? Las ventajas que observo adicional a que el código puede ser más entendible es que se puede aplicar el principio Divide y Venceras. descomponiendo problemas en pequeñas partes otorgando responsabilidades unicas a las clases haciendolas mas modulares para el momento de realizar una modificación ya saber por donde se puede iniciar y en caso de tocar una clase no interrumpir el funcionamiento ya que las demás clases pequeñas cumplirian su función.
✅ ¿Qué es una clase abstracta y cuándo tiene sentido usarla? una clase abstracta considero que tiene sentido usarla cuando algo es muy generico o abierto a pensamientos ejemplo carro, existen carros traccion delantera, trasera, 4x4, camiones, etc. En estos casos se puede aplicar la abstraccion.
✅ ¿Cómo funcionan las interfaces en Dart mediante implements? cada clase implicitamente puede ser una interfaz, esta funcionan de la forma de un contrato, se debe implementar obligatoria mente cada atributo y cada método que tenga la interfaz para cumplir con el contrato.
✅ ¿Por qué una clase abstracta no puede instanciarse? por que sirve como base para las demas clases, instanciarla iria contra el proposito de abstraccion (ocultar lo complejo, mostrar lo necesario) es como un plano que define que deben tener otras clases.
