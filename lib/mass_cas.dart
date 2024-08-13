import 'package:flutter/material.dart';
import 'package:myapp/mechanism_of_inj.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class massCasualtyPage extends StatefulWidget {
  final String username;
  final String password;
  final String home;
  final String health_facility;
  final String public_place;
  final String street;
  final String others;
  const massCasualtyPage({
    super.key,
    required this.username,
    required this.password,
    required this.home,
    required this.health_facility,
    required this.public_place,
    required this.street,
    required this.others,
    });

  @override
  _massCasualtyPageState createState() => _massCasualtyPageState();
}

class _massCasualtyPageState extends State<massCasualtyPage> {
  String _selection = '';

  void _submitDataToSupabase() async {
    // Insert the data into the 'i_info' table
    await Supabase.instance.client.from('i_quantity').insert([
      {
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
        title: Text('No of Patients at Scene'),
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
                            builder: (context) => MechanismOfInjury(
                                  username:widget.username,
                                  password:widget.password,
                                  home:widget.home,
                                  health_facility:widget.health_facility,
                                  public_place:widget.public_place,
                                  street:widget.street,
                                  others:widget.others,
                                  single: _selection == 'Single' ? 'yes' : 'no',
                                  multiple:_selection == 'Multiple' ? 'yes' : 'no',
                                  na: _selection == 'NA' ? 'yes' : 'no',
                                  doa: _selection == 'Dead on arrival'? 'yes': 'no',
                                  mass: _selection == 'Mass casualty'? 'yes': 'no',
                                )));
                    //_submitDataToSupabase();
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
