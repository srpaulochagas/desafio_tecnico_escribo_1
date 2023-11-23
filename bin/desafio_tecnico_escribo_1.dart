import 'dart:io';

main(List<String> args) {
  stdout.write("Digite um número inteiro positivo: ");
  String input = stdin.readLineSync()!;
  int inputNumber = int.parse(input);

  if (inputNumber > 0) {
    int result = sumOfNumbersDivisibleByThreeOrFive(inputNumber);
    print(
        'O resultado do somatório dos antecessores de $inputNumber é: $result');
  }
}

int sumOfNumbersDivisibleByThreeOrFive(int number) {
  int sum = 0;

  for (var i = 1; i <= number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}
