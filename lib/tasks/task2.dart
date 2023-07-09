void main() {
  int score = 80; //Replace with your own Score
  String grade;
  switch (score ~/ 10) {
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    case 6:
      grade = 'D';
      break;
    default:
      grade = 'F';
      break;
  }
  print('Your score is $score out of 100, which corresponds to a grade of $grade.');
  double num1 = 10.0;
  double num2 = 5.0;
  double num3 = 7.5;
  double average = (num1 + num2 + num3) / 3;
  print('The average of $num1, $num2, and $num3 is $average.');
  int number1 = 10;
  int number2 = 5;
  if (num1 > num2) {
    print('$num1 is greater than $num2.');
  } else if (num2 > num1) {
    print('$num2 is greater than $num1.');
  } else {
    print('$num1 and $num2 are equal.');
  }
}