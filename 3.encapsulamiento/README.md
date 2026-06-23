# ¿Qué es el encapsulamiento? 🤔

Es una tecnica para:

- Ocultar datos internos
- proteger el estado del objeto
- controlar como se modifican los datos
- exponer unicamente lo necesario.

Los datos importantes no deben ser manipulados libremente.

## Que es publico vs privado? 🔰

Publico: se puede acceder desde cualquier lugar (global scope)

```dart
class Persona {
  String nombre = "";
}
```

Privado: Solo puede usarse dentro de la propia clase (local scope) en dart se utiliza _ para transformar una propiedad a privada

```dart
class Persona {
  String _nombre = "";
}
```

### Por qué ocultariamos los datos? 😶‍🌫️

Porque queremos evitar estados invalidos
Ejemplo

```dart
class Producto {
  double precio = 0;
}
```

### Getters 🩹

Un getter permite leer un dato privado de forma controlada. Un get es similar a una funcion, el get obtiene el dato de la propiedad privada y lo retorna a traves de la declaracion del get al llamarlo
Ejemplo

```dart
class Producto {
  double _precio = 100;

  double get precio {
    return _precio;
  }
}

//Uso
Producto producto = Producto();

print(producto.precio);
```

### Setter 💊

Permite modificar datos privados con validaciones
Ejemplo

```dart
class Producto {
  double _precio = 0;

  set precio(double valor) {
    if (valor >= 0) {
      _precio = valor;
    }
  }
}

// uso
Producto producto = Producto();

producto.precio = 50;

// valor valido
_precio = 50

//Intentar
producto.precio = -100;
//No se actualizará. Porque el setter lo impide.
```
