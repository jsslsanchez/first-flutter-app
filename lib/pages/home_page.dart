import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/balance_page.dart';
import 'package:flutter_application_1/widgets/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    const currentIndex = 0;
    switch (currentIndex) {
      case 0:
        return const BalancePage();
    }
    return const BalancePage();
  }
}
