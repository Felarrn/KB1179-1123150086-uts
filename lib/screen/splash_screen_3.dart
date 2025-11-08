import 'package:flutter/material.dart';
import '/pagelogin/loginpage.dart'; // ⬅️ tetap digunakan untuk pindah ke halaman login

class MySplashScreen3 extends StatelessWidget {
  const MySplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50], // Warna latar lembut cyan muda
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.cyan.shade700, width: 4),
                image: const DecorationImage(
                  image: AssetImage("assets/images/gambar3.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Let\'s Go LOGIN',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.cyan.shade800,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Push to the base and claim your legend!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Dot(color: Colors.cyan.shade200),
                const SizedBox(width: 10),
                _Dot(color: Colors.cyan.shade400),
                const SizedBox(width: 10),
                _Dot(color: Colors.cyan.shade700),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // 🔹 Pindah ke halaman login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  shadowColor: Colors.cyanAccent,
                ),
                child: const Text(
                  'Mulai Sekarang',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final Color color;
  const _Dot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
