import 'package:flutter/material.dart';
import 'package:myapp/breathing_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AirwayPage extends StatefulWidget {
  final String username;
  final String password;
  final String home;
  final String health_facility;
  final String public_place;
  final String street;
  final String others;
  final String single;
  final String multiple;
  final String na;
  final String doa;
  final String mass;
  final String rta;
  final String driver;
  final String passenger;
  final String pedestrian;
  final String airbag;
  final String seatbelt;
  final String othervehi;
  final String helmet;
  final String fall;
  final String gun;
  final String animal;
  final String stab;
  final String blunt;
  final String assault;
  final String crushed;
  final String penetration;
  final String degloved;
  final String explosion;
  final String burns;
  final String drowning;
  final String extricated;
  final String ejected;
  final String timeofa;
  final String vehi_invol;
  final String crash_with;
  const AirwayPage({
    super.key,
    required this.username,
    required this.password,
    required this.home,
    required this.health_facility,
    required this.public_place,
    required this.street,
    required this.others,
    required this.single,
    required this.multiple,
    required this.na,
    required this.doa,
    required this.mass,
    required this.rta,
    required this.driver,
    required this.passenger,
    required this.pedestrian,
    required this.airbag,
    required this.seatbelt,
    required this.othervehi,
    required this.helmet,
    required this.fall,
    required this.gun,
    required this.animal,
    required this.stab,
    required this.blunt,
    required this.assault,
    required this.crushed,
    required this.penetration,
    required this.degloved,
    required this.explosion,
    required this.burns,
    required this.drowning,
    required this.extricated,
    required this.ejected,
    required this.timeofa,
    required this.vehi_invol,
    required this.crash_with,
  });

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

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('airway').insert([
      {
        'patent': isPatent ? 'yes' : 'no',
        'threatened': isThreatened ? 'yes' : 'no',
        'obstructed': isObstructed ? 'yes' : 'no',
        'object': obstructedBy.text,
      }
    ]);
    await Supabase.instance.client.from('prevention').insert([
      {
        'head_tilt': isHeadTilt ? 'yes' : 'no',
        'jaw': isJawThrust ? 'yes' : 'no',
        'collar': isCervical ? 'yes' : 'no',
        'suctioning': isSuctioning ? 'yes' : 'no',
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airway'),
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
            Text(
              'Cervical',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: isCervical,
              onChanged: (value) {
                setState(() {
                  isCervical = value!;
                });
              },
            ),
            Text(
              'Suctioning',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
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
                            builder: (context) => BreathingPage(
                                  username: widget.username,
                                  password: widget.password,
                                  home: widget.home,
                                  health_facility: widget.health_facility,
                                  public_place: widget.public_place,
                                  street: widget.street,
                                  others: widget.others,
                                  single: widget.single,
                                  multiple: widget.multiple,
                                  na: widget.na,
                                  doa: widget.doa,
                                  mass: widget.mass,
                                  rta: widget.rta,
                                  driver: widget.driver,
                                  passenger: widget.passenger,
                                  pedestrian: widget.pedestrian,
                                  airbag: widget.airbag,
                                  seatbelt: widget.seatbelt,
                                  othervehi: widget.othervehi,
                                  helmet: widget.helmet,
                                  fall: widget.fall,
                                  gun: widget.gun,
                                  animal: widget.animal,
                                  stab: widget.stab,
                                  blunt: widget.blunt,
                                  assault: widget.assault,
                                  crushed: widget.crushed,
                                  penetration: widget.penetration,
                                  degloved: widget.degloved,
                                  explosion: widget.explosion,
                                  burns: widget.burns,
                                  drowning: widget.drowning,
                                  extricated: widget.extricated,
                                  ejected: widget.ejected,
                                  timeofa: widget.timeofa,
                                  vehi_invol: widget.vehi_invol,
                                  crash_with: widget.crash_with,
                                  patent: isPatent ? 'yes' : 'no',
                                  threatened: isThreatened ? 'yes' : 'no',
                                  obstructed: isObstructed ? 'yes' : 'no',
                                  object: obstructedBy.text,
                                  head_tilt: isHeadTilt ? 'yes' : 'no',
                                  jaw: isJawThrust ? 'yes' : 'no',
                                  collar: isCervical ? 'yes' : 'no',
                                  suctioning: isSuctioning ? 'yes' : 'no',
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
