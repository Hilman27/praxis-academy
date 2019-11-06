class Dog {
  String _name;//make name private
  int age;
  CurrentState state; //An Enumeration

  Dog(this._name, this.age, this.state);//Constructor
  Dog.newBorn() { //Named Constructor
    _name = 'Doggy';
    age = 0;
  }

  bark() { //Normal Method
    print('Bow Wow');
  }

  String get respectedName { //Get and Set Method
    return 'Mr.$_name';
  } 
  set respectedName(String newName) {
    _name = newName;
  }
  
}
 
class Pug extends Dog { //Inheritance
  Pug(String name, int age, CurrentState state): super(name, age,state);
  Pug.small(String name): this(name, 1, CurrentState.barking);
  Pug.large(String name): this(name, 3, CurrentState.eating);
  @override //Overide Method
  bark() {
    print('Meow!');
  }
}

main(List<String> args) {
  Dog d = Dog('Duffy', 5, CurrentState.sleeping);
  print(d._name);  //This will throw error
  //Pug p = Pug.small('Duffy');
  //print(p._name);
}

enum CurrentState { //Enumeration
  sleeping,
  barking,
  eating,
  walking
}