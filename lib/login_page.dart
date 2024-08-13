import 'package:flutter/material.dart';
import 'package:myapp/detail_page.dart';
import 'package:myapp/view_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _submitDataToSupabase() async {
    // Insert data into the 'responder' table
    await Supabase.instance.client.from('responder').insert([
      {
        'username': _username,
        'password': _password,
      }
    ]);
    // await Supabase.instance.client.from('i_info').insert([
    //   {
    //     'home': '-1',
    //     'health_facility': '-1',
    //     'public_place': '-1',
    //     'street': '-1',
    //     'others': '-1',
    //   }
    // ]);
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      if (_username == 'admin' && _password.isNotEmpty) {
        // Navigate to view page if username is admin and password is not empty
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ViewPage()),
        );
      } else {
        // Navigate to detail page otherwise
        //_submitDataToSupabase();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage(
            username:_username,
            password:_password,
          )),
        );
      }
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
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
