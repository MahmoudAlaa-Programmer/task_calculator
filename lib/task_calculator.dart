import 'dart:io' show stdin, stdout;
class Calculator{
  int add(int n1 , int n2){
    return n1 + n2;
  }
  int sub(int n1 , int n2){
    return n1 - n2;
  }
  int mul(int n1 , int n2){
    return n1 * n2;
  }
  double div(int n1 , int n2){
    return n1 / n2;
  }
}

void main() {
  Calculator c1 = Calculator();
  while(true){
    try{
      stdout.writeln("Welcome press any key to continue or press (q/Q) to exit the program");
      String input = stdin.readLineSync()!;
      if(input.toLowerCase() == 'q'){ 
        stdout.writeln("Exiting the program");
        break;
        }
      stdout.writeln("Please enter the number");
      int n1 = int.parse(stdin.readLineSync()!);
      stdout.writeln("Please enter the operant e.g '+','-','*','/'");
      String op = stdin.readLineSync()!;
      stdout.writeln("Please enter the number");
      int n2 = int.parse(stdin.readLineSync()!);
        switch(op){
          case'+':
          stdout.writeln("The addition result = ${c1.add(n1, n2)}");
          break;
          case'-':
          stdout.writeln("The subtraction result = ${c1.sub(n1, n2)}");
          break;
          case'*':
          stdout.writeln("The multiplication result = ${c1.mul(n1, n2)}");
          break;
          case'/':
          stdout.writeln("The divison result = ${c1.div(n1, n2)}");
          break;
          default:
          stdout.writeln("invalid operation");
          break;
      }
    }catch(e){
      stdout.writeln(e);
    }
  }
}