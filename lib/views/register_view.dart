import 'package:chat_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/images/scholar.png'),
          const Text(
            "Scholar",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            children: [
              Text(
                "Sign up",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const MyTextField(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const MyTextField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: GestureDetector(
              onTap: () {},
              child: const Center(child: Text('Sign up')),
            ),
          ),
          Row(
            children: [
              const Text(
                'Have an account?  ',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('LoginView');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color.fromARGB(255, 174, 218, 234)),
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
