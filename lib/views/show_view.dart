import 'package:flutter/material.dart';

class ShowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lihat Data'),
      ),
      body: const Center(
        child: Text('Halaman Lihat Data'),
      ),
    );
  }
}
