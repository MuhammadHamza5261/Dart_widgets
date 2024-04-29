// singleton class
//class has only one instance and also provides a global point of access to it


///Singleton has only one instance in project
///now we will create a singleton class




 void main(){

 //create a instance of singleton class
   Singleton a = Singleton();
   //second class
   Singleton b = Singleton();
   if(a == b)
     {
       print("true");
     }
   else
     {
       print("false");
     }

 }


class Singleton{

  static final  Singleton _singleton = Singleton._internal();
  // factory method ka kam ha ya dosra instance create nahi karna data
  factory Singleton(){

    return _singleton;

  }
  Singleton._internal();




}
