import 'package:flutter/material.dart';

import '../layouts/main.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      children: [Text('I am the home page', textDirection: TextDirection.ltr)],
    );
  }
}
