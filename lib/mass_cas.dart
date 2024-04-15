import 'package:flutter/material.dart';
import 'package:myapp/mechanism_of_inj.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class massCasualtyPage extends StatefulWidget {
  const massCasualtyPage({super.key});

  @override
  _massCasualtyPageState createState() => _massCasualtyPageState();
}

class _massCasualtyPageState extends State<massCasualtyPage> {
  String _selection = '';

  void _submitDataToSupabase() async {
    // Insert the data into the 'i_info' table
    await Supabase.instance.client.from('i_quantity').insert([
      {
        'i_id': 1,  //replace with something pls
        'day': 1, //this also see
        'single': _selection == 'Single' ? 'yes' : 'no',
        'multiple': _selection == 'Multiple' ? 'yes' : 'no',
        'na': _selection == 'NA' ? 'yes' : 'no',
        'doa': _selection == 'Dead on arrival' ? 'yes' : 'no',
        'mass': _selection == 'Mass casualty' ? 'yes' : 'no',
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mass Casualty'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text('Single'),
              leading: Radio(
                value: 'Single',
                groupValue: _selection,
                onChanged: (String? value) {
                  setState(() {
                    _selection = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Multiple'),
              leading: Radio(
                value: 'Multiple',
                groupValue: _selection,
                onChanged: (String? value) {
                  setState(() {
                    _selection = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('N/A'),
              leading: Radio(
                value: 'NA',
                groupValue: _selection,
                onChanged: (String? value) {
                  setState(() {
                    _selection = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Dead on arrival'),
              leading: Radio(
                value: 'Dead on arrival',
                groupValue: _selection,
                onChanged: (String? value) {
                  setState(() {
                    _selection = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Mass casualty'),
              leading: Radio(
                value: 'Mass casualty',
                groupValue: _selection,
                onChanged: (String? value) {
                  setState(() {
                    _selection = value!;
                  });
                },
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
                            builder: (context) => MechanismOfInjury()));
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
