import 'package:flutter/material.dart';
import 'package:myapp/mechanism_of_inj.dart';

class massCasualityPage extends StatefulWidget {
  const massCasualityPage({super.key});

  @override
  _massCasualityPageState createState() => _massCasualityPageState();
}

class _massCasualityPageState extends State<massCasualityPage> {
  String _selection = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mass Casuality'),
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
