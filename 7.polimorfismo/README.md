# Polimorfismo

Un mismo elemento puede tener muchas formas o comportamientos.
El polimorfismo permite que un mismo metodo se comporte de manera diferente dependiendo del objeto que lo ejecuta.

Observemos este ejemplo
Animal
│
├── Perro
├── Gato
└── Vaca

Todos tienen un metodo llamado
hacerSonido()

Pero el resultado cambia
Perro → Guau

Gato → Miau

Vaca → Muuu

El método es el mismo.
El comportamiento cambia.
Eso es polimorfismo.

## Sobreescritura de metodos (override)

Nos da el poder de sobreescribir algun metodo de la clase padre e implementarlo a nuestro gusto en las clases hijas.
Es decir el metodo es el mismo cada clase hija decide como implementarlo.

### Que hace override?

Este le dice al compilador "Voy a reemplazar el método heredado."

### Sobrecarga (overload)

esto es algo importante para dart, este no tiene sobrecarga como otros lenguajes. Dart no permite tener varios metodos con el mismo nombre y distinta firma.

¿Cómo resuelve Dart este problema?

Con parámetros opcionales o nombrados.

```dart
 int sumar(int a, int b, [int c = 0])
```

Funciona como una especie de sobrecarga, pero usando una sola función.

### Comportamiento Dinamico

Esta es la parte mas poderosa de polimorfismo.
Puedes trabajar con el tipo general(clase padre), pero el programa ejecutara automaticamente el comportamiento especifico del objeto real.

Ahora observemos

```dart
Animal animal; la variable dice que guarda un Animal pero luego hacemos:
animal = Perro();

animal.hacerSonido();

en pocas letras trabajamos con el tipo general que es la clase padre y ejecutamos automaticamente el comportamiento del objeto real que es el animal con instancia de perro.

La misma variable.
El mismo método.
Diferente comportamiento.
Eso es comportamiento dinámico.
```

```dart
             Animal
                │
        hacerSonido()
                │
     ┌──────────┴──────────┐
     │                     │
   Perro                Gato
     │                     │
"Guau"                "Miau"
Mismo método.

Diferentes comportamientos.
```
