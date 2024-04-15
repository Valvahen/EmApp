import 'package:flutter/material.dart';
import 'package:myapp/detail_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('employee_data').insert([
      {
        'e_id': '12121',
        'username': _username,
        'password': _password,
      }
    ]);
    await Supabase.instance.client.from('responder').insert([
      {
        'e_id':'12122',
      }
    ]);
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the new page after successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                _login();
                _submitDataToSupabase();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
