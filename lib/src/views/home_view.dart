import 'package:flutter/material.dart';

import '../layouts/main.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      children: [
        const Text('I am the home page', textDirection: TextDirection.ltr),
        MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Login view'))
      ],
    );
  }
}
