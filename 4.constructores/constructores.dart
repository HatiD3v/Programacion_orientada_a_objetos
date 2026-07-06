void main() {
  //Ejercicios
  // Ejercicio 1 crear una clase libro con atributo autor y titulo, constructor con this, crear 2 libros e imprimir sus datos
  // Ejercicio 2 crear una clase celular, atributo:marca, modelo, precio e inicializar esos datos mediante el constructor
  // Ejercicio 3 crear una clase cuentabancaria, atributo: titular, saldo. constructor recibe el nombre del titular, el saldo debe comenzar en 0
  final bookHarryPotter = Book('JK Rowling', 'Calix de fuego');
  print(bookHarryPotter.autor);
  print(bookHarryPotter.titulo);
  final bookEncontrarUnHogar = Book('Renezz', 'Encontrando un hogar');
  print(bookEncontrarUnHogar.autor);
  print(bookEncontrarUnHogar.titulo);

  //Inicializamos los datos del segundo ejercicio mediante la instancia de la clase, recordemos que el constructor su funcion es inicializar el objeto
  final xiaomi = SmartPhone('Xiaomi', 'Gt 5 pro', 450.60);
  print({xiaomi.marca, xiaomi.modelo, xiaomi.precio});
  final cuentaBancaria = CuentaBancaria('Edwin');
  print({cuentaBancaria.titular, cuentaBancaria.saldo = 120.99});
}

//Ejercicio 1 clase libro
class Book {
  final String autor;
  final String titulo;

  //declaramos el constructor de la clase
  Book(this.autor, this.titulo);
}

//Ejercicio 2 clase celular
class SmartPhone {
  final String marca;
  final String modelo;
  final double precio;

  //Definimos el constructor
  SmartPhone(this.marca, this.modelo, this.precio);
}

//Ejercicio 3 clase cuenta bancaria
class CuentaBancaria {
  final String titular;
  late double _saldo = 0;

  CuentaBancaria(this.titular);

  double get saldo => _saldo;

  set saldo(double value) {
    if (value > 0) {
      _saldo = value;
    }
  }
}
