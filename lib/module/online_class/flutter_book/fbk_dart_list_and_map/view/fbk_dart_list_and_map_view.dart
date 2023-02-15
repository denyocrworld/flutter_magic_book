import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartListAndMapView extends StatefulWidget {
  const FbkDartListAndMapView({Key? key}) : super(key: key);

  bool exercise1() {
    List<double> sales = [12.5, 20.0, 15.0, 10.0, 5.0];
    double? total;

    return total == 62.5;
  }

  bool exercise2() {
    List<double> sales = [12.5, 20.0, 15.0, 10.0, 5.0];

    double? average = 0;
    return average == 12.5;
  }

  bool exercise3() {
    List<int> numbers = [1, 2, 3, 4, 5];

    int? highest = 0;
    return highest == 5;
  }

  bool exercise4() {
    List<int> numbers = [1, 2, 3, 4, 5];

    int? lowest = 0;
    return lowest == 1;
  }

  bool exercise5() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? even = 0;

    return even == 30;
  }

  bool exercise6() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? odd = 0;

    return odd == 25;
  }

  bool exercise7() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? largest = 0;

    return largest == 10;
  }

  bool exercise8() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? smallest = 0;

    return smallest == 1;
  }

  bool exercise9() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? above = 0;

    return above == 5;
  }

  bool exercise10() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int? below = 0;

    return below == 4;
  }

  bool exercise11() {
    List<String> fruits = ["apple", "banana", "cherry", "date", "elderberry"];

    bool? result;
    return result == true;
  }

  bool exercise12() {
    List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

    bool? result;
    return result == true;
  }

  bool exercise13() {
    List<String> cars = ["Audi", "BMW", "Chevrolet", "Dodge", "Ferrari"];

    bool? result;
    return result == true;
  }

  bool exercise14() {
    List<double> temperatures = [32.0, 35.6, 37.2, 39.8, 40.0];

    bool? result;
    return result == true;
  }

  bool exercise15() {
    List<String> animals = ["cat", "dog", "elephant", "fish", "giraffe"];

    bool? result;
    return result == true;
  }

  bool exercise16() {
    List<String> names = ["John", "Jane", "Jim", "Jenny", "Jake"];

    bool? result;
    return result == true;
  }

  bool exercise17() {
    List<int> numbers = [3, 7, 12, 24, 35, 48, 63, 80];

    bool? result;
    return result == true;
  }

  bool exercise18() {
    List<int> numbers = [3, 5, 8, 13, 21, 34, 55, 89];

    bool? result;
    return result == true;
  }

  bool exercise19() {
    List<String> words = ["apple", "banana", "cherry", "date", "elderberry"];

    bool? result;
    return result == true;
  }

  bool exercise20() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    bool? result;
    return result == true;
  }

  bool exercise21() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000},
      {"name": "Jake", "salary": 8000},
      {"name": "Jerry", "salary": 9000},
    ];

    bool? result;
    return result == true;
  }

  bool exercise22() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000},
      {"name": "Jake", "salary": 8000},
      {"name": "Jerry", "salary": 9000},
    ];

    double? total;
    return total == 35000;
  }

  bool exercise23() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000},
      {"name": "Jake", "salary": 8000},
      {"name": "Jerry", "salary": 9000},
    ];

    String? result;
    return result == "John";
  }

  bool exercise24() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000},
      {"name": "Jake", "salary": 8000},
      {"name": "Jerry", "salary": 9000},
    ];

    String? result;
    return result == "Jerry";
  }

  bool exercise25() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000},
      {"name": "Jake", "salary": 8000},
      {"name": "Jerry", "salary": 9000},
    ];

    bool? result;
    return result == false;
  }

  bool exercise26() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 4500},
      {"name": "Jack", "salary": 6000},
      {"name": "Jill", "salary": 5500},
    ];

    bool? result;
    return result == true;
  }

  bool exercise27() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 4500},
      {"name": "Jack", "salary": 6000},
      {"name": "Jill", "salary": 5500},
    ];

    double? totalSalary = 0;
    return totalSalary == 24000;
  }

  bool exercise28() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 4500},
      {"name": "Jack", "salary": 6000},
      {"name": "Jill", "salary": 5500},
    ];

    double? highestSalary = 0;
    return highestSalary == 6000;
  }

  bool exercise29() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 4500},
      {"name": "Jack", "salary": 6000},
      {"name": "Jill", "salary": 5500},
    ];

    double? lowestSalary = 0;
    return lowestSalary == 4500;
  }

  bool exercise30() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000}
    ];

    bool? result;
    return result == true;
  }

  bool exercise31() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000}
    ];

    double? average;
    return average == 6000;
  }

  bool exercise32() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000}
    ];

    String? name;
    return name == "Jim";
  }

  bool exercise33() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000}
    ];

    String? name;
    return name == "John";
  }

  bool exercise34() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000},
      {"name": "Jane", "salary": 6000},
      {"name": "Jim", "salary": 7000}
    ];

    return employeeSalaries.length == 4 &&
        employeeSalaries[3]["name"] == "Jack" &&
        employeeSalaries[3]["salary"] == 8000;
  }

  bool exercise35() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Team Lead"},
      {"name": "Jim", "salary": 3500, "position": "Developer"},
      {"name": "Jack", "salary": 3000, "position": "QA"},
      {"name": "Jill", "salary": 2500, "position": "Intern"},
    ];

    int? totalSalary;
    return totalSalary == 15000;
  }

  bool exercise36() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Team Lead"},
      {"name": "Jim", "salary": 3500, "position": "Developer"},
      {"name": "Jack", "salary": 3000, "position": "QA"},
      {"name": "Jill", "salary": 2500, "position": "Intern"},
    ];

    String? highestPaidEmployee;
    return highestPaidEmployee == "John";
  }

  bool exercise37() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Team Lead"},
      {"name": "Jim", "salary": 3500, "position": "Developer"},
      {"name": "Jack", "salary": 3000, "position": "QA"},
      {"name": "Jill", "salary": 2500, "position": "Intern"},
    ];

    String? lowestPaidEmployee;
    return lowestPaidEmployee == "Jill";
  }

  bool exercise38() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Team Lead"},
      {"name": "Jim", "salary": 3500, "position": "Developer"},
      {"name": "Jack", "salary": 3000, "position": "QA"},
      {"name": "Jill", "salary": 2500, "position": "Intern"},
    ];

    int? employeeCount;
    return employeeCount == 2;
  }

  bool exercise39() {
    List<Map<String, dynamic>> employees = [
      {'name': 'John', 'age': 30, 'salary': 5000},
      {'name': 'Jane', 'age': 25, 'salary': 4000},
      {'name': 'Jim', 'age': 35, 'salary': 6000},
    ];

    double? averageAge;
    return averageAge == 31.67;
  }

  bool exercise40() {
    List<Map<String, dynamic>> employees = [
      {'name': 'John', 'age': 30, 'salary': 5000},
      {'name': 'Jane', 'age': 25, 'salary': 4000},
      {'name': 'Jim', 'age': 35, 'salary': 6000},
    ];

    Map<String, dynamic>? highestPaidEmployee;
    return highestPaidEmployee == {'name': 'Jim', 'age': 35, 'salary': 6000};
  }

  bool exercise41() {
    List<Map<String, dynamic>> employees = [
      {'name': 'John', 'age': 30, 'salary': 5000},
      {'name': 'Jane', 'age': 25, 'salary': 4000},
      {'name': 'Jim', 'age': 35, 'salary': 6000},
    ];

    int? countOver30;
    return countOver30 == 2;
  }

  bool exercise42() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Supervisor"},
      {"name": "Jim", "salary": 3500, "position": "Staff"}
    ];

    bool? result;
    return result == true;
  }

  bool exercise43() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Supervisor"},
      {"name": "Jim", "salary": 3500, "position": "Staff"}
    ];

    double? highestSalary;
    return highestSalary == 5000;
  }

  bool exercise44() {
    List<Map<String, dynamic>> employeeSalaries = [
      {"name": "John", "salary": 5000, "position": "Manager"},
      {"name": "Jane", "salary": 4000, "position": "Supervisor"},
      {"name": "Jim", "salary": 3500, "position": "Staff"}
    ];

    int? employeesAboveSalary;
    return employeesAboveSalary == 2;
  }

  bool exercise45() {
    List<Map<String, dynamic>> books = [
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 218,
      },
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 325,
      },
      {
        "title": "The Catcher in the Rye",
        "author": "J.D. Salinger",
        "pages": 277,
      },
      {
        "title": "The Grapes of Wrath",
        "author": "John Steinbeck",
        "pages": 464,
      },
    ];

    int? totalPages;
    return totalPages == 1254;
  }

  bool exercise46() {
    List<Map<String, dynamic>> books = [
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 218,
      },
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 325,
      },
      {
        "title": "The Catcher in the Rye",
        "author": "J.D. Salinger",
        "pages": 277,
      },
      {
        "title": "The Grapes of Wrath",
        "author": "John Steinbeck",
        "pages": 464,
      },
    ];

    bool? result;
    return result == true;
  }

  bool exercise47() {
    List<Map<String, dynamic>> books = [
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 218,
      },
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 325,
      },
      {
        "title": "The Catcher in the Rye",
        "author": "J.D. Salinger",
        "pages": 277,
      },
      {
        "title": "The Grapes of Wrath",
        "author": "John Steinbeck",
        "pages": 464,
      },
    ];

    Map<String, dynamic>? result;
    return result ==
        {
          "title": "The Great Gatsby",
          "author": "F. Scott Fitzgerald",
          "pages": 218,
        };
  }

  bool exercise48() {
    List<Map<String, dynamic>> employeeData = [
      {
        "name": "John",
        "position": "Manager",
        "age": 35,
        "salary": 10000,
      },
      {
        "name": "Emily",
        "position": "Developer",
        "age": 28,
        "salary": 7000,
      },
      {
        "name": "Michael",
        "position": "Designer",
        "age": 32,
        "salary": 9000,
      },
      {
        "name": "Jennifer",
        "position": "Developer",
        "age": 29,
        "salary": 7500,
      },
      {
        "name": "David",
        "position": "Manager",
        "age": 40,
        "salary": 11000,
      },
    ];

    bool? result;
    return result == true;
  }

  bool exercise49() {
    List<Map<String, dynamic>> books = [
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 360,
        "isRead": true
      },
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 180,
        "isRead": false
      },
      {
        "title": "Pride and Prejudice",
        "author": "Jane Austen",
        "pages": 270,
        "isRead": true
      },
      {
        "title": "Wuthering Heights",
        "author": "Emily Bronte",
        "pages": 300,
        "isRead": false
      }
    ];

    int? totalPagesRead;
    return totalPagesRead == 630;
  }

  bool exercise50() {
    List<Map<String, dynamic>> books = [
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 360,
        "isRead": true
      },
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 180,
        "isRead": false
      },
      {
        "title": "Pride and Prejudice",
        "author": "Jane Austen",
        "pages": 270,
        "isRead": true
      },
      {
        "title": "Wuthering Heights",
        "author": "Emily Bronte",
        "pages": 300,
        "isRead": false
      }
    ];

    bool? isAustenRead;
    return isAustenRead == true;
  }

  bool exercise51() {
    List<Map<String, dynamic>> books = [
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 360,
        "isRead": true
      },
      {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "pages": 180,
        "isRead": false
      },
      {
        "title": "Pride and Prejudice",
        "author": "Jane Austen",
        "pages": 270,
        "isRead": true
      },
      {
        "title": "Wuthering Heights",
        "author": "Emily Bronte",
        "pages": 300,
        "isRead": false
      }
    ];

    bool? areAllBooksRead;
    return areAllBooksRead == false;
  }

  bool exercise52() {
    List<Map<String, dynamic>> transactions = [
      {
        "item": "Shirt",
        "price": 25.0,
        "quantity": 2,
      },
      {
        "item": "Pants",
        "price": 35.0,
        "quantity": 1,
      },
      {
        "item": "Shoes",
        "price": 50.0,
        "quantity": 3,
      },
      {
        "item": "Socks",
        "price": 5.0,
        "quantity": 4,
      },
    ];

    double? total = 0;
    return total == 225.0;
  }

  bool exercise53() {
    List<Map<String, dynamic>> books = [
      {
        "title": "Harry Potter and the Philosopher's Stone",
        "author": "J.K. Rowling",
        "pages": 223
      },
      {
        "title": "The Lord of the Rings",
        "author": "J.R.R. Tolkien",
        "pages": 1178
      },
      {
        "title": "The Hunger Games",
        "author": "Suzanne Collins",
        "pages": 384,
      },
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "pages": 324,
      }
    ];

    List<Map<String, dynamic>> filteredBooks = [];
    return filteredBooks.length == 2;
  }

  bool exercise54() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Engineer",
      },
      {
        "name": "Jim",
        "age": 41,
        "position": "Director",
      },
      {
        "name": "Jake",
        "age": 29,
        "position": "Developer",
      },
    ];

    bool hasOlderEmployee = false;

    return hasOlderEmployee;
  }

  bool exercise55() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
        "skills": ["Leadership", "Communication", "Time Management"],
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Engineer",
        "skills": ["Programming", "Debugging", "Data Analysis"],
      },
      {
        "name": "Jim",
        "age": 41,
        "position": "Director",
        "skills": ["Strategy", "Public Speaking", "Budgeting"],
      },
      {
        "name": "Jake",
        "age": 29,
        "position": "Developer",
        "skills": ["Agile Methodology", "Code Review", "Unit Testing"],
      }
    ];

    bool hasDebuggerAndCodeReviewer = false;

    return hasDebuggerAndCodeReviewer;
  }

  bool exercise56() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Developer",
      },
      {
        "name": "Jack",
        "age": 41,
        "position": "CTO",
      },
      {
        "name": "Jill",
        "age": 29,
        "position": "Designer",
      },
    ];

    return !employees.any((e) => e["name"] == "Jack");
  }

  bool exercise57() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Developer",
      },
      {
        "name": "Jack",
        "age": 41,
        "position": "CTO",
      },
      {
        "name": "Jill",
        "age": 29,
        "position": "Designer",
      },
    ];

    return employees.every((e) =>
        e == employees.first ||
        e["age"] >= employees[employees.indexOf(e) - 1]["age"]);
  }

  bool exercise58() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Developer",
      },
      {
        "name": "Jack",
        "age": 41,
        "position": "CTO",
      },
      {
        "name": "Jill",
        "age": 29,
        "position": "Designer",
      },
    ];

    Map<String, dynamic>? oldestEmployee;

    return oldestEmployee == {"name": "Jack", "age": 41, "position": "CTO"};
  }

  bool exercise59() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
        "salary": 8000,
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Developer",
        "salary": 6000,
      },
      {
        "name": "Jack",
        "age": 41,
        "position": "CTO",
        "salary": 10000,
      },
      {
        "name": "Jill",
        "age": 29,
        "position": "Designer",
        "salary": 7000,
      },
    ];

    Map<String, dynamic>? highestPaidEmployee;

    return highestPaidEmployee ==
        {"name": "Jack", "age": 41, "position": "CTO", "salary": 10000};
  }

  bool exercise60() {
    List<Map<String, dynamic>> employees = [
      {
        "name": "John",
        "age": 32,
        "position": "Manager",
        "salary": 8000,
      },
      {
        "name": "Jane",
        "age": 25,
        "position": "Developer",
        "salary": 6000,
      },
      {
        "name": "Jack",
        "age": 41,
        "position": "CTO",
        "salary": 10000,
      },
      {
        "name": "Jill",
        "age": 29,
        "position": "Designer",
        "salary": 7000,
      },
    ];

    double? averageSalary;

    return averageSalary == 7500.0;
  }

  bool exercise61() {
    List<Map<String, dynamic>> products = [
      {
        "name": "iPhone",
        "price": 1000,
        "quantity": 5,
      },
      {
        "name": "Macbook",
        "price": 2000,
        "quantity": 2,
      },
      {
        "name": "iPad",
        "price": 500,
        "quantity": 10,
      },
      {
        "name": "Apple Watch",
        "price": 300,
        "quantity": 20,
      },
    ];

    Map<String, dynamic>? mostExpensiveProduct;

    return mostExpensiveProduct ==
        {"name": "Macbook", "price": 2000, "quantity": 2};
  }

  bool exercise62() {
    List<Map<String, dynamic>> products = [
      {
        "name": "iPhone",
        "price": 1000,
        "quantity": 5,
      },
      {
        "name": "Macbook",
        "price": 2000,
        "quantity": 2,
      },
      {
        "name": "iPad",
        "price": 500,
        "quantity": 10,
      },
      {
        "name": "Apple Watch",
        "price": 300,
        "quantity": 20,
      },
    ];

    int? totalStock;

    return totalStock == 37;
  }

  bool exercise63() {
    List<Map<String, dynamic>> orders = [
      {
        "id": 1,
        "created_at": "2023-01-01",
        "customer": {
          "id": 1001,
          "name": "Deny",
        },
        "items": [
          {
            "id": 2001,
            "product_name": "T-Shirts",
            "price": 25,
            "description": "-",
            "qty": 2,
          },
        ],
      },
      {
        "id": 2,
        "created_at": "2023-01-02",
        "customer": {
          "id": 1002,
          "name": "Jenny",
        },
        "items": [
          {
            "id": 2002,
            "product_name": "Jeans",
            "price": 50,
            "description": "-",
            "qty": 3,
          },
          {
            "id": 2003,
            "product_name": "Shoes",
            "price": 100,
            "description": "-",
            "qty": 1,
          },
        ],
      },
    ];

    int? totalQty;

    return totalQty == 7;
  }

  bool exercise64() {
    List<Map<String, dynamic>> orders = [
      {
        "id": 1,
        "created_at": "2023-01-01",
        "customer": {
          "id": 1001,
          "name": "Deny",
        },
        "items": [
          {
            "id": 2001,
            "product_name": "T-Shirts",
            "price": 25,
            "description": "-",
            "qty": 2,
          },
        ],
      },
      {
        "id": 2,
        "created_at": "2023-01-02",
        "customer": {
          "id": 1002,
          "name": "Jenny",
        },
        "items": [
          {
            "id": 2002,
            "product_name": "Jeans",
            "price": 50,
            "description": "-",
            "qty": 3,
          },
          {
            "id": 2003,
            "product_name": "Shoes",
            "price": 100,
            "description": "-",
            "qty": 1,
          },
        ],
      },
    ];

    double? totalSale;

    return totalSale == 325.0;
  }

  bool exercise65() {
    List<Map<String, dynamic>> orders = [
      {
        "id": 1,
        "created_at": "2023-01-01",
        "customer": {
          "id": 1001,
          "name": "Deny",
        },
        "items": [
          {
            "id": 2001,
            "product_name": "T-Shirts",
            "price": 25,
            "description": "-",
            "qty": 2,
          },
        ],
      },
      {
        "id": 2,
        "created_at": "2023-01-02",
        "customer": {
          "id": 1002,
          "name": "Jenny",
        },
        "items": [
          {
            "id": 2002,
            "product_name": "Jeans",
            "price": 50,
            "description": "-",
            "qty": 3,
          },
          {
            "id": 2003,
            "product_name": "Shoes",
            "price": 100,
            "description": "-",
            "qty": 1,
          },
        ],
      },
      {
        "id": 3,
        "created_at": "2023-01-05",
        "customer": {
          "id": 1003,
          "name": "Kevin",
        },
        "items": [
          {
            "id": 2004,
            "product_name": "Bag",
            "price": 75,
            "description": "-",
            "qty": 1,
          },
        ],
      },
    ];

    double? totalSale;

    return totalSale == 250.0;
  }

  bool exercise66() {
    List<Map<String, dynamic>> orders = [
      {
        "id": 1,
        "created_at": "2023-01-01",
        "customer": {
          "id": 1001,
          "name": "Deny",
        },
        "items": [
          {
            "id": 2001,
            "product_name": "T-Shirts",
            "price": 25,
            "description": "-",
            "qty": 2,
          },
        ],
      },
      {
        "id": 2,
        "created_at": "2023-01-02",
        "customer": {
          "id": 1002,
          "name": "Jenny",
        },
        "items": [
          {
            "id": 2002,
            "product_name": "Jeans",
            "price": 50,
            "description": "-",
            "qty": 3,
          },
          {
            "id": 2003,
            "product_name": "Shoes",
            "price": 100,
            "description": "-",
            "qty": 1,
          },
        ],
      },
      {
        "id": 3,
        "created_at": "2023-01-05",
        "customer": {
          "id": 1003,
          "name": "Kevin",
        },
        "items": [
          {
            "id": 2004,
            "product_name": "Bag",
            "price": 75,
            "description": "-",
            "qty": 1,
          },
        ],
      },
    ];

    double? totalSale;

    return totalSale == 250.0;
  }

  bool exercise67() {
    List<Map<String, dynamic>> orders = [
      {
        "id": 1,
        "created_at": "2023-01-01",
        "customer": {
          "id": 1001,
          "name": "Deny",
        },
        "items": [
          {
            "id": 2001,
            "product_name": "Paracetamol",
            "price": 1000,
            "description": "Obat sakit kepala",
            "qty": 2,
            "category": "Obat",
          },
          {
            "id": 2002,
            "product_name": "Ceres",
            "price": 2500,
            "description": "Obat demam",
            "qty": 1,
            "category": "Obat",
          },
        ],
      },
      {
        "id": 2,
        "created_at": "2023-01-02",
        "customer": {
          "id": 1002,
          "name": "Jenny",
        },
        "items": [
          {
            "id": 2003,
            "product_name": "Blender",
            "price": 20000,
            "description": "Alat dapur untuk menghaluskan bahan makanan",
            "qty": 1,
            "category": "Alat Dapur",
          },
          {
            "id": 2004,
            "product_name": "Panci",
            "price": 15000,
            "description": "Alat dapur untuk memasak",
            "qty": 2,
            "category": "Alat Dapur",
          },
        ],
      },
      {
        "id": 3,
        "created_at": "2023-01-05",
        "customer": {
          "id": 1003,
          "name": "Kevin",
        },
        "items": [
          {
            "id": 2005,
            "product_name": "Thermometer",
            "price": 5000,
            "description": "Alat untuk mengukur suhu badan",
            "qty": 1,
            "category": "Kesehatan",
          },
        ],
      },
    ];

    double? totalSale;

    return totalSale == 35000.0;
  }

  bool exercise68() {
    Map<String, dynamic> product = {
      "name": "Blender",
      "price": 49.99,
      "category": "Kitchenware",
      "isAvailable": true,
      "details": {
        "brand": "Cuisinart",
        "wattage": 700,
        "color": "Silver",
      },
    };

    int? wattage;

    return wattage == product["details"]["wattage"];
  }

  bool exercise69() {
    Map<String, dynamic> customer = {
      "name": "Jane Doe",
      "age": 25,
      "email": "jane.doe@email.com",
      "isSubscribed": true,
      "address": {
        "street": "456 Elm St",
        "city": "Los Angeles",
        "state": "CA",
        "zip": "90001",
      },
    };

    String? email;

    return email == customer["email"];
  }

  bool exercise70() {
    Map<String, dynamic> book = {
      "title": "To Kill a Mockingbird",
      "author": "Harper Lee",
      "price": 15.99,
      "category": "Fiction",
      "isInStock": true,
      "details": {
        "pages": 324,
        "publisher": "HarperCollins",
        "publishedDate": "1960-07-11",
      },
    };

    int? pages;

    return pages == book["details"]["pages"];
  }

  Widget build(context, FbkDartListAndMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartListAndMap"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
              rowLabel(exercise2),
              rowLabel(exercise3),
              rowLabel(exercise4),
              rowLabel(exercise5),
              rowLabel(exercise6),
              rowLabel(exercise7),
              rowLabel(exercise8),
              rowLabel(exercise9),
              rowLabel(exercise10),
              rowLabel(exercise11),
              rowLabel(exercise12),
              rowLabel(exercise13),
              rowLabel(exercise14),
              rowLabel(exercise15),
              rowLabel(exercise16),
              rowLabel(exercise17),
              rowLabel(exercise18),
              rowLabel(exercise19),
              rowLabel(exercise20),
              rowLabel(exercise21),
              rowLabel(exercise22),
              rowLabel(exercise23),
              rowLabel(exercise24),
              rowLabel(exercise25),
              rowLabel(exercise26),
              rowLabel(exercise27),
              rowLabel(exercise28),
              rowLabel(exercise29),
              rowLabel(exercise30),
              rowLabel(exercise31),
              rowLabel(exercise32),
              rowLabel(exercise34),
              rowLabel(exercise35),
              rowLabel(exercise36),
              rowLabel(exercise37),
              rowLabel(exercise38),
              rowLabel(exercise39),
              rowLabel(exercise40),
              rowLabel(exercise41),
              rowLabel(exercise42),
              rowLabel(exercise43),
              rowLabel(exercise44),
              rowLabel(exercise45),
              rowLabel(exercise46),
              rowLabel(exercise47),
              rowLabel(exercise48),
              rowLabel(exercise49),
              rowLabel(exercise50),
              rowLabel(exercise51),
              rowLabel(exercise52),
              rowLabel(exercise53),
              rowLabel(exercise54),
              rowLabel(exercise55),
              rowLabel(exercise56),
              rowLabel(exercise57),
              rowLabel(exercise58),
              rowLabel(exercise59),
              rowLabel(exercise60),
              rowLabel(exercise61),
              rowLabel(exercise62),
              rowLabel(exercise63),
              rowLabel(exercise64),
              rowLabel(exercise65),
              rowLabel(exercise66),
              rowLabel(exercise67),
              rowLabel(exercise68),
              rowLabel(exercise69),
              rowLabel(exercise70),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartListAndMapView> createState() => FbkDartListAndMapController();
}
