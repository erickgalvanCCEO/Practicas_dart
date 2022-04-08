void main() {
  print('Antes del peticion');
  getHttp('url').then((value) => print(value));
  print('despues de peticion');
}

Future getHttp(String url) {
  return Future.delayed(Duration(seconds: 10), () {
    return 'Futuro';
  });
}
