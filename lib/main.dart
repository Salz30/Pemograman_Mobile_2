// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form data diri',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const HomePage(),
    );
  }
}

// === HALAMAN UTAMA ===
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Data Diri'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
        ],
      ),
      body: const ProfilePage(),
    );
  }
}

// === HALAMAN TENTANG (tetap di main.dart) ===
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlQIv8qakdqS0Rb4nUnl43bD8pP8QkQgcXXNTGROnICmgc1UBI0lsM4n19Q4Zm72MKZO0&usqp=CAU'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Aplikasi ini menampilkan:\n'
              'proses belajar membuat profil page dan halaman ini akan terus di kembangkan.\n' +
              'Dan juga aplikasi ini dibuat untuk memenuhi tugas mata kuliah pemrograman mobile.\n' +
              'dan satu kalimat terakhir dari saya: "Teruslah Bernafas."',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}