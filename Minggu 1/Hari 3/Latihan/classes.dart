abstract class Player{ //Make into Abstract. Cannot be Initialized
  int hP;
  int mP;
  int stamina;
  int attack;

  Player(this.hP,this.mP,this.stamina,this.attack );//Constructor

  void HPSet(int newHP){  //Setter
    this.hP= newHP;
  }
  int HPGet(){ //Getter
    return this.hP;
  }

  String status(){ //Method
    String append = "Health Point : $hP| Mana Point : $mP";
    return append;
  }

}

mixin skills{
  String skillShow(){
    return "Sleep. Heals 10 HP but skip turn";
  }
}

class Human extends Player with skills{ //extending class
  Human(int hP, int mP, int stamina, int attack) : super(hP, mP, stamina, attack);
  String greet(String name) =>  'Hi. Nice to meet you, $name';
}

void main (){
  Human hilman = Human(100,0,50,5);//Initialize class as "Hilman"

  print("HP Hilman : " + hilman.hP.toString()); //Call Class Instance Variable
  print("The Type of HP is ${hilman.hP.runtimeType}");

  hilman.status();//Method call
  print(hilman.greet("bob"));

  hilman.skillShow(); //Mixin call
}