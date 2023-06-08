import 'dart:io';

class User{
  static List<Map<String,dynamic>> allUserList = [];
  String? name;
  String? age;
  String? email;
  dynamic password;
  User(
      this.name,
      this.age,this.email,
      this.password
      );
  void loginConfirmation(User user){
    if(user.email!.contains("@")){
      if(user.password.toString().length >= 8) {
        addUserToList(user);
        print("User Created Successfully");
      }
      else{
        print("Password should be more than 7 character");
      }

    }
    else{
      print("Invalid Email");
    }


  }
  void addUserToList(User user){
    Map<String,dynamic> tempUser = {
      "Name" : user.name,
      "Password" : user.password,
      "Age" : user.age,
      "Email" : user.email,
    };
    allUserList.add(tempUser);
    print(tempUser);
  }
}

main(){

  User userOne = User(stdin.readLineSync(), stdin.readLineSync(), stdin.readLineSync(),stdin.readLineSync());
  userOne.loginConfirmation(userOne);

}
