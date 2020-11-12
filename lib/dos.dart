int suma(int n1, int n2) {
  return n1 + n2;
}

int r = suma(1, 2);
int r2 = suma(1);

void saludos({String nombre: "Arturo", String apellido}) {
  print("Hola $nombre $apellido");
}

var i = saludos(nombre: "ivan", apellido: "bolaños");
// Hola ivan bolaños
var j = saludos(apellido: "bolaños");
// Hola Arturo bolaños
