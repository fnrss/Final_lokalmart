import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Screens: Awal & Auth
import 'package:lokalmart/screens/awal/awal_screen.dart';
import 'package:lokalmart/screens/awal/login_screen.dart';
import 'package:lokalmart/screens/awal/signup_screen.dart';

// Screens: Home & UMKM
import 'package:lokalmart/screens/home/beranda_screen.dart';
import 'package:lokalmart/screens/home/sejarah_screen.dart';
import 'package:lokalmart/screens/umkm/register_umkm.dart';
import 'package:lokalmart/screens/umkm/daftar_umkm.dart';

// Screens: Profile
import 'package:lokalmart/screens/profile/profile_screen.dart';
import 'package:lokalmart/screens/profile/edit_profile.dart';
import 'package:lokalmart/screens/profile/privacy_policy_screen.dart';
import 'package:lokalmart/screens/profile/keamanan_screen.dart';
import 'package:lokalmart/screens/profile/favorit_saya.dart'; // ← Favorit Saya

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://nudemmrwnnznalsgvxov.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im51ZGVtbXJ3bm56bmFsc2d2eG92Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzMyMDMwNjEsImV4cCI6MjA4ODc3OTA2MX0.v9mHAc0Q4n-8Ki05r0ECXwfGP7_214MjMb3y4LGm7Ig',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LokalMart',
      home: const AwalScreen(),
      routes: {
        '/awal': (context) => const AwalScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/beranda': (context) => const BerandaScreen(),
        '/sejarah': (context) => const SejarahSriharjoScreen(),
        '/register': (context) => const RegisterUmkmScreen(),
        '/umkm': (context) => const DaftarUMKMScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/editProfile': (context) => const EditProfileScreen(),
        '/kebijakan': (context) => const PrivacyPolicyScreen(),
        '/keamanan': (context) => const KeamananScreen(),
        '/favorite': (context) => const FavoritSayaScreen(), // ← Route favorit
      },
    );
  }
}
