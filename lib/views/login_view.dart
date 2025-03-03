import 'package:chat_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 73),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: [
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
                "Login",
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
              child: const Center(child: Text('Login')),
            ),
          ),
          Row(
            children: [
              const Text(
                'Don\'t have an account?  ',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('RegisterView');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Color.fromARGB(255, 174, 218, 234)),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
