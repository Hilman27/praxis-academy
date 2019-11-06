void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
  };

  gifts['fourth'] = 'calling birds'; // Add a key-value pair
  assert(gifts['first'] == 'partridge');


}