import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          const SizedBox(height: 20.0),
          submitButton() 
        ],
      )
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email Address',
        errorText: bloc.emailController.stream
      ),
      onChanged: (newValue) {
        bloc.emailController.sink.add(newValue);
      },
    );
  }

  Widget passwordField() {
    return const TextField(
      // obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'login',
        style: TextStyle(color: Colors.white, backgroundColor: Colors.lightBlue)
      ),
    );
  }
}
