import 'package:flutter/material.dart';
import 'package:myapp/vitals_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DisabilityPage extends StatefulWidget {
  const DisabilityPage({super.key});

  @override
  _DisabilityPageState createState() => _DisabilityPageState();
}

class _DisabilityPageState extends State<DisabilityPage> {
  bool isAlert = false;
  bool isV = false;
  bool isP = false;
  bool isUnconscious = false;
  bool isExposedCompletly = false;

  TextEditingController pupils = TextEditingController();
  TextEditingController signsAndSymptoms = TextEditingController();
  TextEditingController allergies = TextEditingController();
  TextEditingController medications = TextEditingController();
  TextEditingController postMedicalHistory = TextEditingController();
  TextEditingController lastMeal = TextEditingController();
  TextEditingController eventLeadingForCause = TextEditingController();

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('disability').insert([
      {
        'a': isAlert ? 'yes' : 'no',
        'v': isV ? 'yes' : 'no',
        'p': isP ? 'yes' : 'no',
        'u': isUnconscious ? 'yes' : 'no',
        'pupils': pupils.text,
        'exposed': isExposedCompletly ? 'yes' : 'no',
      }
    ]);
    await Supabase.instance.client.from('sample').insert([
      {
        's': signsAndSymptoms.text,
        'a': allergies.text,
        'm': medications.text,
        'p': postMedicalHistory.text,
        'l': lastMeal.text,
        'e': eventLeadingForCause.text,
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disability'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Responsiveness:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('ALert'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isAlert,
              onChanged: (value) {
                setState(() {
                  isAlert = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('V'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isV,
              onChanged: (value) {
                setState(() {
                  isV = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('P'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isP,
              onChanged: (value) {
                setState(() {
                  isP = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Unconscious'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isUnconscious,
              onChanged: (value) {
                setState(() {
                  isUnconscious = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Pupils:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: pupils,
              decoration: InputDecoration(
                hintText: 'Enter condition of pupils',
              ),
            ),
            CheckboxListTile(
              title: Text('Exposed Completly'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isExposedCompletly,
              onChanged: (value) {
                setState(() {
                  isExposedCompletly = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VitalsPage()));
                    _submitDataToSupabase();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
