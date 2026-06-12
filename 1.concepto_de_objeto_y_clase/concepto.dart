void main() {
  //Que es una clase? una clase es un molde o plantilla que describe como puede ser la creacion de los objetos
  //La clase es como un plano para construir algo, a traves de ese plano podemos construir algo, eso seria el objeto

  //Que es un objeto? un objeto es la instancia creada a partir de la clase, el objeto seria la casa construida o la referencia al objeto real.
  //La clase no guarda los datos del objeto, la clase solo define como sera el objeto, los datos viven dentro de cada objeto.

  //Las clases se crean con la palabra reservada class y el nombre de la clase debe iniciar en la primera letra mayuscula seguido de {} estas se deben crear fueras del main

  //Ejercicio 1 crear una clase libro con propiedades autor y titulo.
  //aca construimos el objeta/instancia llamando o invocando a la clase libro
  final libro = Libro();
  //aca accedemos o llamamos a la propiedad de la clase y le asignamos valores que serian las caracteristicas del
  libro.autor = 'Dan Morgan';
  libro.titulo = 'Edge';
  print(libro.autor);
  print(libro.titulo);

  //Ejercicio 2 crear una clase cecular con marca y modelo y crear tres instancias.
  final celular1 = celular();
  final celular2 = celular();
  final celular3 = celular();
  celular1.marca = 'Xiaomi';
  celular1.modelo = 'Poco f7';
  celular1.almacenamiento = '512gb';
  celular1.memoriaRam = '16gb';
  celular2.marca = 'Honor';
  celular2.modelo = '600';
  celular2.almacenamiento = '256gb';
  celular2.memoriaRam = '8gb';
  celular3.marca = 'Infinix';
  celular3.modelo = 'Hot pro 60';
  celular3.almacenamiento = '512gb';
  celular3.memoriaRam = '12gb';
}

class Libro {
  late String autor;
  late String titulo;
}

class celular {
  late String marca;
  late String modelo;
  late String almacenamiento;
  late String memoriaRam;
}
