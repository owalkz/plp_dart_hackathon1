import 'dart:io';

void main() {
  int marks = getMark();
  String grade = getGrade(marks);
  print(grade);
}

int getMark() {
  while (true) {
    print("Enter mark below: (Number should be between 0 and 100)");
    int mark = int.parse(stdin.readLineSync()!);
    if (mark >= 0 && mark <= 100) {
      return mark;
    }
  }
}

String getGrade(int mark) {
  if (mark > 85) {
    return "Excellent";
  } else if (mark > 75 && mark <= 85) {
    return "Very Good";
  } else if (mark > 65 && mark <= 75) {
    return "Good";
  } else {
    return "Average";
  }
}
