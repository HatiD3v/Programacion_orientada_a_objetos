# Atributos y Métodos 📖

Hasta ahora las clases eran como unas fichas o tarjetas con datos que luego eran rellenados al crear la instancia(objeto)
ejemplo de ficha/tarjeta ficha:

```dart
class Persona {
  String nombre = "";
  int edad = 0;
}
```

## Qué son los atributos? 📚

Los atributos desde mi perspectiva son variables que van dentro del cuerpo de la clase, estos atributos definen las caracteristicas del objeto como que datos lleva pero estos son almacenados en el propio objeto, no en la clase.
los atributos se definen de la siguiente forma:

```dart
class Persona {
  String nombre = ""; //Este es un atributo
  int edad = 0; //Este es un atributo
}
```

## Que son los metodos? 🤔

Para mi un método es una funcion que se define dentro del cuerpo de la clase, este método dicta el comportamiento que tendra el objeto como por ejemplo las acciones que puede realizar.

```dart
class Persona {
  String nombre = "";

//saludar es un método
  void saludar() {
    print("Hola");
  }
}
```

## Métodos usando atributos 🔰

Los métodos pueden usar atributos de clase, esto sirve para realizar una acción en base a los datos que tenga ese atributo.

```dart
class Persona {
  String nombre = "";

  void saludar() {
    print("Hola, soy $nombre");
  }
}
```

## Palabra reservada this 💯

Esta palabra sirve para referirse a las propiedades del propio objeto es como decir este atributo de este objeto.

```dart
class Persona {
  String nombre = "";

  void mostrarNombre() {
    print(this.nombre);
  }
} 
```

### He aprendido sobre

✅ Crear atributos dentro de una clase.

✅ Leer atributos desde un objeto.

✅ Modificar atributos desde un objeto.

✅ Crear métodos.

✅ Hacer que los métodos utilicen atributos.

✅ Entender que this significa " 'this' el objeto actual".

✅ Crear varios objetos que usen los mismos métodos pero con datos diferentes.
