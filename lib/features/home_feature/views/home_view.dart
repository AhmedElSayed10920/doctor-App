import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Pagee"),
        centerTitle: true,
      ),
      body: const Center(child: Text("THIS IS HOME PAGE")),
    );
  }
}
