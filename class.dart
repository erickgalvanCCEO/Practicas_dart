void main() {
  final mapPersona = {'Nombre': 'Erick', 'Edad': '20'};

  print('es');
  print('yes');

  print(mapPersona);
  print('Hola mundo');
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
}
