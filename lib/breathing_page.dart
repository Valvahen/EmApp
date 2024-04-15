import 'package:flutter/material.dart';
import 'package:myapp/circulation_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BreathingPage extends StatefulWidget {
  const BreathingPage({super.key});

  @override
  _BreathingPageState createState() => _BreathingPageState();
}

class _BreathingPageState extends State<BreathingPage> {
  bool isLeft = false;
  bool isRight = false;
  bool isRibBinder = false;

  TextEditingController oxygenController = TextEditingController();
  TextEditingController chestNeedleTubeController = TextEditingController();

  String selection = '';

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('airway').insert([
      {
        'i_id': 1, // Replace with appropriate value
        //'spontaneous': selection == 'yes' ? 'yes' : 'no',
        'breath_l': isLeft ? 'yes' : 'no',
        'breath_r': isRight ? 'yes' : 'no',
        'breath_rib': isRibBinder ? 'yes' : 'no',
        'oxygen': oxygenController.text,
        'object': chestNeedleTubeController.text,
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breathing'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Spontaneous Respiration',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Radio(
                value: "yes",
                groupValue: selection,
                onChanged: (String? value) {
                  setState(() {
                    selection = value!;
                  });
                },
              ),
              title: Text('Yes'),
            ),
            ListTile(
              leading: Radio(
                value: 'No',
                groupValue: selection,
                onChanged: (String? value) {
                  setState(() {
                    selection = value!;
                  });
                },
              ),
              title: Text('No'),
            ),
            SizedBox(height: 20),
            Text(
              'Breath Sounds',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Left'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isLeft,
              onChanged: (value) {
                setState(() {
                  isLeft = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Right'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isRight,
              onChanged: (value) {
                setState(() {
                  isRight = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Rib Binder'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isRibBinder,
              onChanged: (value) {
                setState(() {
                  isRibBinder = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Oxygen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: oxygenController,
              decoration: InputDecoration(
                hintText: 'Enter Oxygen value',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Chest/Needle Tube',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: chestNeedleTubeController,
              decoration: InputDecoration(
                hintText: 'Enter Chest/Needle Tube value',
              ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CirculationPage()));
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
