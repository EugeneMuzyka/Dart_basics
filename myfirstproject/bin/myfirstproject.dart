import 'dart:html';

void main() {
   //Первое задание 
  // НОД целых чисел
int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}
// НОК целых чисел
int leastCommonMultiple(int a, int b) {
  if ((a == 0) || (b == 0)) {
    return 0;
  }

  return ((a ~/ greatestCommonDivisor(a, b)) * b).abs();
}

// Простые множители числа
 List<int> factors(int number) {
    if (number < 2) return [];
    int factor = 2;
    List<int> lstFactors = [];
    while (number / factor != 1) {
      if (number % factor == 0) {
        lstFactors.add(factor);
        number = number ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }
    ;
    lstFactors.add(factor);
    return lstFactors;
  }
}
  //Задание 2 Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
  //1)КОНВЕРТИРОВАТЬ ДВОИЧНЫЙ ФАЙЛ В ДЕСЯТИЧНЫЙ
  Void main() {
  int decimalValue=0; //decimal value 
  int binaryValue = 10000;
  int lastDigit;
  int i = 1;
  while(binaryValue > 0)
  {
        lastDigit = binaryValue % 10; 
        binaryValue = (binaryValue / 10).floor(); 
        decimalValue += lastDigit * i; 
        i = i * 2; 
  }
  print("the binary value is $decimalValue");
  }
  //КОНВЕРТИРОВАТЬ ДЕСЯТИЧНЫЙ В ДВОИЧНЫЙ
void main() {
  int decimalValue=10; //decimal value 
  int binaryValue = 0;
  int i = 1;
  while(decimalValue > 0)
  {
      binaryValue = binaryValue + (decimalValue % 2)*i;
      decimalValue = (decimalValue/2).floor();
      i = i * 10;
  }
  print("the binary value is $binaryValue");
}
   //3)Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
void main() {
  var stringArr = ["Hello world", "Hello1 World", "H23llo", "H00Elo", "World"];

  for (var i = 0; i < stringArr.length; i++) {
    bool found = stringArr[i].contains(new RegExp(r'[0-9]'));
    print(stringArr[i] + " -> " + found.toString());
  }
}
//4 задание. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
 final List myList = [];
  final Map counts = {};
  myList.map((e) => counts.containsKey(e) ? counts[e]++ : counts[e] = 1);
  print(counts);
//пятое задание
Set<int>findNumNamesIn(List<String>StringList);

//Шестое задание
Point(x, y, z);
//Седьмое задание
num.rootPower(x);
//Восьмое задание
List<String> getEmails();
}