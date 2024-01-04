import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {

  String name;
  String password;
  UserModel({ required this.name, required this.password});

    Map<String, dynamic> toJson() => <String, dynamic>{
      'name' : name,
      'password' : password
      
      };

      factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'] as String, 
        password: json['password'] as String
        );

    // Future<UserModel> insertFirestore(UserModel model) async {
    //     try {
    //       final user = await FirebaseFirestore.instance.collection(collectionName).add(model.toJson());

    //       model.name = user.id;
    //       return model;
    //     } catch (e) {
    //       rethrow;
    //     }
    // }
}