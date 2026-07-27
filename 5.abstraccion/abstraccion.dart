void main() {
  /**Ejercicios
Ejercicio 1

Crea una clase abstracta: Figura con el método calcularArea y luego crear la clase Circulo y Rectangulo y cada uno debe implementar el cálculo del área


Ejercicio 2

Crea una interfaz usando implements. la clase es Nadador se debe implementar en la clase Pez y Persona, cada uno debe implementar 'nadar' con mensajes diferentes

Ejercicio 3

Diseña las clases para un sistema de biblioteca.

Piensa qué responsabilidades tendría cada una.

Por ejemplo:

Libro
Usuario
Prestamo

Evita crear una sola clase que haga todo.*/

  Circulo radioCirculo = Circulo(5);
  print(radioCirculo.calcularArea());

  Rectangulo rectangulo = Rectangulo(10, 5);
  print(rectangulo.calcularArea());

  Pez dorado = Pez('Dorado', 'Oceano');
  dorado.nadar();

  Persona persona1 = Persona('Edwin', 'Piscina');
  persona1.nadar();

  Libro libroATomar = Libro('46 cartas estoicas', 'Lucio Anneo Seneca');

  Usuario usuarioDelLibro = Usuario(
    nombreDelCliente: 'Edwin',
    numeroDeContactoCliente: 0412388556,
    direccionDelCliente: 'Caracas',
  );

  Prestamo libroPrestado = Prestamo(
    libroPrestado: libroATomar.nombreDelLibro,
    usuarioPoseedorDelLibro: usuarioDelLibro.nombreDelCliente,
  );
  print('El libro prestado se llama: ${libroPrestado.libroPrestado}');
  print(
    'El usuario que tiene el libro prestado se llama ${libroPrestado.usuarioPoseedorDelLibro}',
  );
}

//Ejercicio 1 usando abstracciones
abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  static const double pi = 3.1416;
  final double radio;

  Circulo(this.radio);
  @override
  double calcularArea() {
    return pi * radio * radio;
  }
}

class Rectangulo extends Figura {
  final double base;
  final double altura;
  Rectangulo(this.base, this.altura);
  @override
  double calcularArea() => base * altura;
}

//Ejercicio 2 usando interfaz

class Nadador {
  void nadar() {}
}

class Pez implements Nadador {
  late final String nombrePez;
  late String origenDeNado;

  Pez(this.nombrePez, this.origenDeNado);

  @override
  void nadar() => print('El pez $nombrePez esta nadando en el $origenDeNado');
}

class Persona implements Nadador {
  late final String nombrePersona;
  late final String origenDeNado;
  Persona(this.nombrePersona, this.origenDeNado);

  @override
  void nadar() {
    print('La persona $nombrePersona esta nadando en la $origenDeNado');
  }
}

//Ejercicio 3 sistema de biblioteca
//Este ejercicio se realizo creando 3 clases haciendo uso del principio de responsabilidad unica evitando que una clase haga todo. en este caso no usamos clases abstractas ni interfaz.

class Libro {
  late final String nombreDelLibro;
  late final String autorDelLibro;

  Libro(this.nombreDelLibro, this.autorDelLibro);
}

class Usuario {
  late final String nombreDelCliente;
  late final int numeroDeContactoCliente;
  late final String direccionDelCliente;

  Usuario({
    required this.nombreDelCliente,
    required this.numeroDeContactoCliente,
    required this.direccionDelCliente,
  });
}

class Prestamo {
  late final String libroPrestado;
  late final String usuarioPoseedorDelLibro;
  Prestamo({
    required this.libroPrestado,
    required this.usuarioPoseedorDelLibro,
  });
}
