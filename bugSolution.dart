```dart
class MyClass {
  int? _myVariable;

  int get myVariable => _myVariable ?? 0;

  set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  MyClass myObject = MyClass();
  print(myObject.myVariable); // Prints 0
  myObject.myVariable = 10;
  print(myObject.myVariable); // Prints 10

  MyClass? nullableObject = null;

  //Correct way: check for null
  if (nullableObject != null) {
    print(nullableObject.myVariable);
  } else {
    print("Object is null");
  }

  //Alternative using null aware operator
  print(nullableObject?.myVariable ?? 0); //Prints 0
}
```