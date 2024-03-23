// Define the Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Main class to create student and teacher objects
class Main {
  void createObjects() {
    // Create a student object
    var student = Student('Luke Cage', 13, '7th');

    // Create a teacher object
    var teacher = Teacher('Albert Einstein', 67, 'Physics');

    // Print student and teacher information
    student.printInfo();
    print('\n');
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of Main class
  var main = Main();

  // Call the method to create student and teacher objects
  main.createObjects();
}
