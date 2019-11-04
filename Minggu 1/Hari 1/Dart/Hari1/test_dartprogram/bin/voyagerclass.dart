class Spacecraft extends Describable{ //Class
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
class Orbiter extends Spacecraft { //Extension
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

class Piloted { //Mixin
  int astronauts = 1;  
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
class PilotedCraft extends Spacecraft with Piloted{
   PilotedCraft(String name, DateTime launchDate, int crew)
   :super (name,launchDate);
}

abstract class Describable {//Abstract
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

void main(){
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var voyager5 = Orbiter('Voyager X', DateTime(2019,11,04), 1000);
  voyager5.describe();

  var apolo6 = PilotedCraft('Apolo 6', DateTime(1999,11,27), 1);
  
  apolo6.describe();
  apolo6.describeCrew();
  if (apolo6.astronauts == 0) {
    throw StateError('No astronauts.');
  }

  var apolo7 = PilotedCraft('Apolo 7', DateTime(1994,11,27), 5);
  apolo7.describe();
  apolo7.describeCrew();
  apolo7.describeWithEmphasis();
}