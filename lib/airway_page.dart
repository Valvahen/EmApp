import 'package:flutter/material.dart';
import 'package:myapp/brething_page.dart';
class AirwayPage extends StatefulWidget {
  const AirwayPage({super.key});

  @override
  _AirwayPageState createState() => _AirwayPageState();
}

class _AirwayPageState extends State<AirwayPage> {
  bool isPatent = false;
  bool isThreatened = false;
  bool isObstructed = false;
  bool isHeadTilt = false;
  bool isJawThrust = false;
  bool isCervical = false;
  bool isSuctioning = false;

  TextEditingController obstructedBy = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airway Checkboxes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Airway',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Patent'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPatent,
              onChanged: (value) {
                setState(() {
                  isPatent = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Threatened'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isThreatened,
              onChanged: (value) {
                setState(() {
                  isThreatened = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Obstructed'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isObstructed,
              onChanged: (value) {
                setState(() {
                  isObstructed = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Airway Manuever',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Head Tilt/Chin Lift'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isHeadTilt,
              onChanged: (value) {
                setState(() {
                  isHeadTilt = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Jaw Thrust'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isJawThrust,
              onChanged: (value) {
                setState(() {
                  isJawThrust = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Cervical'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCervical,
              onChanged: (value) {
                setState(() {
                  isCervical = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Suctioning'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isSuctioning,
              onChanged: (value) {
                setState(() {
                  isSuctioning = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Obstructed By:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            TextField(
              controller: obstructedBy,
              decoration: InputDecoration(
                hintText: 'Enter text',
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
                            builder: (context) => BreathingPage()));
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
