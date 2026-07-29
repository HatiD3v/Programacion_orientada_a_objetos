void main() {
  List<Animal> animales = [Perro(), Gato(), Vaca()];
  for (Animal animal in animales) {
    animal.hacerSonido();
  }
}

abstract class Empleado {
  void trabajar();
}

// Ejercicio 1 Crea una clase padre: Empleado luego crear 3 clases y cada uno implementar trabajar() de manera diferente
class Programador extends Empleado {
  @override
  void trabajar() {
    print('Esta trabajando con codigos');
  }
}

class Disenador extends Empleado {
  @override
  void trabajar() {
    print('Esta trabajando con diseños');
  }
}

class Contador extends Empleado {
  @override
  void trabajar() {
    print('Esta trabajando con facturas');
  }
}

// Ejercicio 2 crear una clase transporte e implementa a carro, avion y barco cada uno debe mostrar como se mueve
abstract class Transport {
  void mover();
}

class Carro extends Transport {
  @override
  void mover() {
    print('El carro se mueve con las ruedas al acelerar');
  }
}

class Avion extends Transport {
  @override
  void mover() {
    print(
      'El Avion vuela a traves del cielo gracias a sus turbinas y alerones',
    );
  }
}

class Barco extends Transport {
  @override
  void mover() {
    print(
      'El barco se mueve a traves del mar con la helice surcando los mares',
    );
  }
}

//Ejercicio 3 crear una lista Animal agregar a perro() gato() vaca() luego recorrer la lista y   animal.hacerSonido();

abstract class Animal {
  void hacerSonido() {
    print("Sonido");
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print("Guau");
  }
}

class Gato extends Animal {
  @override
  void hacerSonido() {
    print("Miau");
  }
}

class Vaca extends Animal {
  @override
  void hacerSonido() {
    print("Muu");
  }
}
