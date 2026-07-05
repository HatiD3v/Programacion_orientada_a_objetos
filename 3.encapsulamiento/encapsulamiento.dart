void main() {
  //Ejercicio 1 crear una clase persona con un atributo privado que debe ser el nombre y crear el getter para leer el nombre y el setter para setear el nombre

  //Ejercicio 2 crear clase empleado atributo privado salario, no se deben permitir salarios negativos. la validacion debe ir dentro del setter

  //Ejercicio 3 crear clase termometro atributo privado temperatura. Regla No permitir temperaturas menores a -273. (Esa es la temperatura mínima teórica posible). Crear: Getter. Setter con validación.
  Persona persona1 = Persona();
  persona1.name = 'Edwin';
  print(persona1.name);
  Empleado empleado1 = Empleado();
  empleado1.salario = 15;
  print(empleado1.salario);
  Termometro temperatura1 = Termometro();
  temperatura1.temperatura = 21;
  print(temperatura1.temperatura);
}

//Ejericicio 1
class Persona {
  late String
  _name; // propiedad privada recordemos que solo es privada para las librerias/archivos externos, podemos acceder a ella desde el mismo archivo

  //Aca obtenemos el nombre que sera seteado, al setearlo accedemos al getter y este nos retornara el nombre seteado.
  String get name {
    return _name;
  }

  //el setter es el que le va a configurar/setear un valor a la propiedad privada, aca se hace mediante validaciones en este caso fue si el valor no esta vacio le asignamos el valor a la propiedad privada
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }
}

// Ejercicio 2
class Empleado {
  late int _salario;

  int get salario {
    return _salario;
  }

  set salario(int value) {
    if (value > 0) {
      _salario = value;
    }
  }
}

//Ejercicio 3
class Termometro {
  late int _temperatura;

  int get temperatura {
    return _temperatura;
  }

  set temperatura(int value) {
    if (value > -273) {
      _temperatura = value;
    }
  }
}
