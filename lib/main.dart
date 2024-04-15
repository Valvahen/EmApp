import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://fukdtelhdinpbkixxaom.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ1a2R0ZWxoZGlucGJraXh4YW9tIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE4Njk0NDEsImV4cCI6MjAyNzQ0NTQ0MX0.cdwsGipAYIP4O1CfzDU7Qo79rgpZwa9o5tvfEHn6pww',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}