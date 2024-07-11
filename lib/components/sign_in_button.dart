import 'package:flutter/material.dart';
import 'package:video_call_app/constants/current_user.dart';

import '../screens/home_page.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController userID;
  const SignInButton({super.key,required this.userID});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
          onPressed: (){
            currentUser.id=userID.text.trim();
            currentUser.name='user_$userID';
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const HomePage()));
          },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.indigo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
          child: const Text('Sign In',style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}
