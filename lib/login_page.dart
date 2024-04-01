import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the new page after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NewPage()),
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
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  Set<String> selectedCheckboxes = {"Home"};
  TextEditingController otherTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Time text field
          TextField(
            decoration: InputDecoration(
              labelText: 'Select Time',
            ),
            onTap: () async {
              final TimeOfDay? newTime = await showTimePicker(
                context: context,
                initialTime: selectedTime,
              );
              if (newTime != null) {
                setState(() {
                  selectedTime = newTime;
                });
              }
            },
          ),
          // Checkboxes
          Column(
            children: [
              CheckboxListTile(
                title: Text('Home'),
                value: selectedCheckboxes.contains('Home'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Home');
                    } else {
                      selectedCheckboxes.remove('Home');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Health Care facility'),
                value: selectedCheckboxes.contains('Health Care facility'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Health Care facility');
                    } else {
                      selectedCheckboxes.remove('Health Care facility');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Public building'),
                value: selectedCheckboxes.contains('Public building'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Public building');
                    } else {
                      selectedCheckboxes.remove('Public building');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Street/highway'),
                value: selectedCheckboxes.contains('Street/highway'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Street/highway');
                    } else {
                      selectedCheckboxes.remove('Street/highway');
                    }
                  });
                },
              ),
            ],
          ),
          // Text field for others
          TextField(
            controller: otherTextFieldController,
            decoration: InputDecoration(
              labelText: 'Enter other',
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Submit'))
        ],
      ),
    );
  }
}