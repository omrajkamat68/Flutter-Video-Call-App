import 'package:flutter/material.dart';
import 'package:video_call_app/components/text_field_widget.dart';

import '../components/sign_in_button.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController phoneNum = TextEditingController(text: '+91');
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
            text: const TextSpan(
                text: 'ZE',
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: [
              TextSpan(
                text: 'GO',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: 'CLOUD',
              ),
            ])),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFieldWidget(
                controller: phoneNum,
                hintText: 'Phone',
                icon: const Icon(Icons.phone)),
            const SizedBox(
              height: 20,
            ),
            TextFieldWidget(
                controller: password,
                hintText: 'Password',
                icon: const Icon(Icons.lock_open)),
            const SizedBox(
              height: 30,
            ),
            SignInButton(userID: phoneNum,)
          ],
        ),
      ),
    );
  }
}
