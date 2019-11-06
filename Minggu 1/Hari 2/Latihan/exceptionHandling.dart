void main (){
  
  try{
    assert(false);
  } catch(e){
    print("An Error Has Occured, But i skip it");
    print(e);
  } finally {print("Get Out!");};
  
  try{
    assert(false);
  } catch(e){
    print("An Error Has Occured, But i skip it");
    print(e);
  } throw 'I am raging!!!';
  
  
  

}