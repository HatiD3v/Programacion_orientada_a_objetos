void main() {
  Libro libro1 = Libro();
  libro1.autor = 'JK Rowlings';
  libro1.titulo = 'Harry Potter';
  libro1.mostrarInfo();
  Libro libro2 = Libro();
  libro2.autor = 'Dean Morgan';
  libro2.titulo = 'Sustance';
  libro2.mostrarInfo();

  CuentaBancaria atm = CuentaBancaria();
  print(atm.depositar(30));
  print(atm.retirar(20));

  Auto automovil = Auto();
  automovil.marca = 'Volkswagen';
  print(automovil.acelerar(20));
}

//Ejercicio 1 crear una clase libro con 2 atributos autor y titulo, con 1 metodo este metodo debe usar los 2 atributos
class Libro {
  late String autor;
  late String titulo;

  void mostrarInfo() {
    print('Autor del libro: $autor, Titulo del libro: $titulo');
  }
}

//Ejercicio 2: Crear una clase cuenta bancaria con la propiedad saldo y 2 metodos: depositar y retirar (depositar > suma. retirar > resta)
class CuentaBancaria {
  int saldo = 0;
  String depositar(int deposito) {
    return 'fue depositado: $deposito quedando un saldo de: ${saldo += deposito}';
  }

  String retirar(int retiro) {
    return 'Estado de saldo: $saldo y fue retirado: $retiro quedando un saldo de: ${saldo -= retiro}';
  }
}

//Ejercicio 3 crear una clase auto
/**Con los atributos marca y velocidad
Con un método acelerar, este método debe aumentar la velocidad cada vez que se llame para esto podemos realizar una asignación compuesta de la velocidad que se envié */
class Auto {
  String marca = '';
  int velocidad = 0;

  String acelerar(int aceleracion) {
    return 'Se ha acelarado el auto a ${aceleracion}km/h';
  }
}
