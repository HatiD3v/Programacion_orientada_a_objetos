void main() {
  Programador edwin = Programador(nombre: 'Edwin', salario: 500.00);
  print(edwin.nombre);
  print(edwin.salario);
  edwin.trabajar();
  edwin.stack();

  Disenador empleado2 = Disenador(nombre: 'Pepe', salario: 350.00);
  print(empleado2.nombre);
  print(empleado2.salario);
  empleado2.trabajar();
  empleado2.diseno();

  Carro fiat = Carro('Fiat');
  print(fiat.marca);
  print(fiat.arrancar());

  Moto honda = Moto('Honda');
  print(honda.marca);
  print(honda.arrancar());

  Perro max = Perro('Max');
  print(max.nombre);
  print(max.comer());
  print(max.hacerSonido());
  print(max.jugar());

  Gato maxi = Gato('Maxi');
  print(maxi.nombre);
  print(maxi.comer());
  print(maxi.hacerSonido());
  print(maxi.escalar());
}

//Ejercicio 1 Crear una clase padre Empleado con: nombre, salario, trabajar() Luego crea: Programador, Disenador. Cada uno debe heredar y agregar su propio método.
class Empleado {
  late final String nombre;
  late final double salario;
  Empleado({required this.nombre, required this.salario});

  void trabajar() => print('trabajo generico');
}

class Programador extends Empleado {
  Programador({required super.nombre, required super.salario});

  void stack() => print('La tecnologia que domina es dart y flutter e AI.');

  @override
  void trabajar() {
    print(
      '$nombre esta trabajando como programador y tiene un sueldo de: $salario\$',
    );
  }
}

class Disenador extends Empleado {
  Disenador({required super.nombre, required super.salario});

  void diseno() =>
      print('Tiene conocimientos de suite adobe e IA para diseño.');

  @override
  void trabajar() {
    print(
      '$nombre esta trabajando como diseñador grafico y tiene un sueldo de: $salario\$',
    );
  }
}

// Ejercicio 2 Crea una clase padre Vehiculo con: marca, arrancar() Luego crea: Carro y Moto Cada uno debe sobrescribir arrancar() con un mensaje diferente.

class Vehiculo {
  late String marca;
  Vehiculo(this.marca);
  String arrancar() {
    return 'Mensaje generico';
  }
}

class Carro extends Vehiculo {
  Carro(super.marca);

  @override
  String arrancar() {
    return 'El auto esta arrancando';
  }
}

class Moto extends Vehiculo {
  Moto(super.marca);

  @override
  String arrancar() {
    return 'La moto esta arrancando lentamente';
  }
}

//Ejercicio 3 Crea una clase padre Animal con: nombre, comer() Luego crea: Perro y Gato Cada uno debe tener un método propio y también modificar hacerSonido().

class Animal {
  late String nombre;
  Animal(this.nombre);

  String comer() {
    return 'El animal esta comiendo';
  }

  String hacerSonido() {
    return 'Sonido generico de animal';
  }
}

class Perro extends Animal {
  Perro(super.nombre);

  String jugar() {
    return 'Esta jugando con la pelota';
  }

  @override
  String comer() {
    return 'Kronch Kronch!!';
  }

  String hacerSonido() {
    return 'Woof';
  }
}

class Gato extends Animal {
  Gato(super.nombre);

  String escalar() {
    return 'El gato esta escalando los obstaculos';
  }

  @override
  String comer() {
    return 'Cranch Cranch!';
  }

  String hacerSonido() => 'Miau!';
}
