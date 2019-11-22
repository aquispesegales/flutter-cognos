void main() {
  print("Hola Mundo Dart");
  //variables
  var nombre = 'Ana Gomez';
  var anio = 2011;
  var diametro = 3.7;
  var cursos =  ['Flutter', 'Angular', 'Nodejs', 'Reactjs'];
  print('Nombre completo es: ${nombre} de cursos ${cursos}');
   
  //cnotrol y declaracion de flujos
  if(anio>=2020){
    print('Futuro ya esta aqui');
  }else if (anio >=2000){
    print('pasado');
  }

  for(var curso in cursos){
    print(curso);
  }

  while (anio <2020){
    anio +=1;
  }
  print('variable anio: ${anio}');

  //funciones
  var num = 5;
  var result = factorial(num);

  print('el factorial de ${num} es ${result}');

//exprecions condicionales
  var compara = result >100 ? 'El numero es mayor a 100': 'El numero es menor a 100';
  print(compara);

  //listas
  var lista = new List(3);
  lista[0]= 'Sql server';
  lista[1] = 'Oracle';
  lista[2] = 'mysql';

  print(lista);

  lista.forEach((e)=> print(e));

  //sets

  var linux = {'Ubunto','Centos','Debian'};

  //maps
  var so = <String>{};
  so.add('Windows Server');
  so.addAll(linux);

  print(so);

  var monedas = {
    'BOB':'Boliviano',
    'USD':'Dolar Americado',
    'EUR':'Euro'
  };

  var estadoHtto = {
    404: 'No encotrado',
    200:'OK',
    401:'No  autorizado'
  };

  print(monedas['BOB']);

}

int factorial(int n) {   if (n <= 0)     return 1;   else     return (n * factorial(n - 1)); }