# Herencia

Es el mecanismo que permite que una clase aproveche lo que ya existe en otra clase.

Sirve para: reutilizar codigo, evitar verbosidad en atributos y metodos, crear jerarquias con otras clases, especializar comportamientos.

## ¿Qué es una clase padre y una clase hija?

Clase Padre

Es la clase base. la mas general. Contiene lo comun

Clase Hija

Es la clase que hereda del padre, recibe lo comun y puede agregar o cambiar cosas.

Estas ideas tambien pueden funcionar cuando algun objeto es muy generico como Animal, todos los animales comen, caminan,vuelan o nadan, depende del animal ya alli hacemos uso de los atributos o métodos de la clase padre a la clase hija. Es decir ya al heredar la clase padre tenemos acceso a sus atributos y metodos.

### Reutilizacion de codigo

La gran ventaja de la herencia es no repetir lo que ya es comun. En teoria seria no caer en la verbosidad eso lo evitamos con la clase padre ejemplo tenemos una clase que se llama Galleta de esta clase heredamos sus atributos comunes que son harina, azucar, aceite. etc y con la herencia agregamos los gramos de esos ingredientes a usar.

### Agregar comportamiento propio en clase hija

La clase hija no solo hereda tambien puede tener sus propios atributos y metodos.

### Modificar comportamiento heredado

A veces la hija necesita hacer algo distinto al metodo del padre y para esto usamos override con el decorador override sobreescribimos los atributos o metodos heredados.

### ¿Qué es super?

super se usa para referirse a la clase padre.

Sirve para: llamar al constructor del padre, usar metodos del padre, acceder a la logica heredada

super en constructores esto es muy importante si la clase padre tiene constructor, la hija puede necesitar llamarlo.

### Lo que debemos entender bien

La clase padre guarda lo comun.

La clase hija hereda lo comun y agrega lo propio.

Reutilizacion evitar duplicidad de codigo.

overrdie permite cambiar el comportamiento heredado al sobreescribirlo.

super permite usar lo de la clase padre

#### Error comun de principiantes

Muchos creen que herencia significa “copiar y pegar código”.

No.

Herencia significa:

“Esta clase nueva es una versión especializada de otra clase más general”.

Si no existe una relación real de “es un”, probablemente no debes usar herencia.

Ejemplo correcto:

Perro es un Animal
Gato es un Animal

Ejemplo dudoso:

Carro es un Motor

Eso no tiene sentido. Ahí suele convenir composición, no herencia.

### He aprendido sobre

✅ Crear clase padre

✅ heredad con extends

✅ usar atributos y metodos heredados

✅ agregar atributos y metodos propios

✅ sobreescribir metodos con @override

✅ usar super en metodos y constructores

✅ explicar cuando conviene herencia y cuando no: conviene cuando hay una relacion clara de 'es un', varias clases comparten base en comun, se quiere reutilizar el comportamiento y se quiere especializar una clase general. cuando no conviene: solo por reutilizar codigo a cualquier costo
