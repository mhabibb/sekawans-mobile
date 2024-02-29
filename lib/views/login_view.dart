import 'package:flutter/material.dart';
import 'package:sekawans/views/dashboard.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isPasswordVisible = false;

  // Fungsi untuk menavigasi ke DashboardView
  void _navigateToDashboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 95),
          width: double.infinity,
          color: const Color(0xfff3f4ef),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  'images/sekawans.png', 
                  height: 150, 
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Sekawan’s TB Jember.\n\nAyo Berperan Aktif, Menemukan,\ndan juga Mendampingi Pasien TBC',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4b5060),
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40), 
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk tombol Masuk di sini
                  _navigateToDashboard(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2F308A),
                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 50),
                ),
                child: const Text('Masuk', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
