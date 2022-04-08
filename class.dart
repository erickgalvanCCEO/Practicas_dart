void main() {
  final mapPersona = {'Nombre': 'Erick', 'Edad': '20'};
  print(mapPersona);

  final persona = Persona('Erick', '34');
  print(persona.name);
  print(persona.age);
  print('Hola mundo');

  final pez = Pez('payaso');
  pez.moverse();
}

class Persona {
  String nombre;
  String edad;
  Persona(this.nombre, this.edad);

  Persona.fromJson(Map<String, String> json)
      : nombre = json['Nombre']!,
        edad = json['Edad'] ?? 'Sin edad';

  String toString() {
    return 'Persona: $nombre, edad: $edad';
  }

  String get name {
    return nombre;
  }

  set name(String name) {
    print(name);
  }

  String get age {
    return edad;
  }

  set age(String edad) {
    print(edad);
  }
}

abstract class Animal {
  String? nombre;
  void moverse();
}

class Pez implements Animal {
  String? nombre;
  Pez(this.nombre);
  void moverse() {
    print('nadar');
  }
}
