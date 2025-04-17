
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../pages/chat_screen.dart';

class AuthService{
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  void loginService(BuildContext context,String email,String password) async{
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password
      ); Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>  ChatScreen(),
        ),
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch(e){
      print(e);
      Navigator.pop(context);
    }catch(e){
      print(e);
      Navigator.pop(context);
    }
  }









  void register(BuildContext context,String email,String password,String confirmPassword) async {

    try {
      if(password == confirmPassword) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email, password: password);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>  ChatScreen(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
    } catch (e) {
      Navigator.pop(context);
    }
  }


  void logout(){
    FirebaseAuth.instance.signOut();
  }
}