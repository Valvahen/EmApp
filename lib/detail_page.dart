import 'package:flutter/material.dart';
import 'package:myapp/mass_cas.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  Set<String> selectedCheckboxes = {"Home"};
  TextEditingController otherTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailsPage'),
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
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => massCasualityPage()));
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}
