import 'dart:io';

class User{
  static List<Map<String,dynamic>> allUserList = [];
  String? name;
  String? age;
  String? email;
  var password;
  User(
      this.name,
      this.age,this.email,
      this.password
      );
  void loginConfirmation(){
    print("User Created Successfully");
  }
  void addUserToList(User user){
    Map<String,dynamic> tempUser = {
      "Name" : user.name,
      "Password" : user.password,
      "Age" : user.age,
      "Email" : user.email,
    };
    allUserList.add(tempUser);
  }
}

main(){

  User userOne = User(stdin.readLineSync(), stdin.readLineSync(), stdin.readLineSync(),stdin.readLineSync());
  userOne.addUserToList(userOne);
  userOne.loginConfirmation();
  print(User.allUserList);

}
