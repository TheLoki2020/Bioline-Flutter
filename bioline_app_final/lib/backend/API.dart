import 'package:appwrite/appwrite.dart';

String endPoint = 'http://bioline.upc.edu/v1';
String project = '629663eeef4ece3e63fe';


class API {

  static Future login(String email, String password)async{
    Client client = Client();
    Account account = Account(client);

    client
      .setEndpoint(endPoint)
      .setProject(project)
    ;
    return account.createSession(
      email: email,
      password: password,
    );
  }

  static Future signup(String email, String password)async{
    Client client = Client();
    Account account = Account(client);

    client
      .setEndpoint(endPoint)
      .setProject(project)
    ;

    return account.create(userId: 'unique()', email: email, password: password);
  }

  static Future changeName(String name)async{
    Client client = Client();
    Account account = Account(client);

    client
      .setEndpoint(endPoint)
      .setProject(project)
    ;
    
    return account.updateName(name: name);
  }

  static Future changePassword(String oldPassword, String newPassword)async{
    Client client = Client();
    Account account = Account(client);

    client
      .setEndpoint(endPoint)
      .setProject(project)
    ;

    return account.updatePassword(password: newPassword, oldPassword: oldPassword);
  }
}