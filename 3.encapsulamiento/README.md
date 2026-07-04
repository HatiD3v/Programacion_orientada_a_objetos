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

### He aprendido sobre

✅ Publico: es aquel método, atributo al que se le puede acceder desde cualquier parte del repositorio es decir su scope es global
✅ Privado: sus métodos y atributos no pueden ser accedidos globalmente, la clase es la unica que puede acceder a el directamente es decir solo se usa dentro de la propia clase esto seria un local scope y las propiedades iniciando un _ que indica que es privado
✅ Getter: es como un método que sirve para acceder a esas propiedades privadas, este retorna el valor que tenga la propiedad privada al ser accedido mediante el nombre del get esto sirve para evitar modificaciones arbitrarias y no deseadas. en resumen permite leer un dato privado
✅ Setter: el set es muy similar a un método este permite modificar datos privados mediante validaciones/condiciones para mantener un control y asi evitar errores.
En resumen GET obtiene el valor del dato privado y SET configura ese dato privado de manera controlada.
✅ Encapsulamiento: lo que entiendo de la definicion de este, es que permite ocultar datos internos, protege al objeto y mantener modificaciones controladas para los datos. En pocas palabras es como obtener lo necesario o mostrar lo necesario al cliente mientras se ocultan datos que no son relevantes conocer.
