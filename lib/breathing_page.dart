// import 'package:flutter/material.dart';
// import 'package:myapp/circulation_page.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class BreathingPage extends StatefulWidget {
//   final String username;
//   final String password;
//   final String home;
//   final String health_facility;
//   final String public_place;
//   final String street;
//   final String others;
//   final String single;
//   final String multiple;
//   final String na;
//   final String doa;
//   final String mass;
//   final String rta;
//   final String driver;
//   final String passenger;
//   final String pedestrian;
//   final String airbag;
//   final String seatbelt;
//   final String othervehi;
//   final String helmet;
//   final String fall;
//   final String gun;
//   final String animal;
//   final String stab;
//   final String blunt;
//   final String assault;
//   final String crushed;
//   final String penetration;
//   final String degloved;
//   final String explosion;
//   final String burns;
//   final String drowning;
//   final String extricated;
//   final String ejected;
//   final String timeofa;
//   final String vehi_invol;
//   final String crash_with;
//   final String patent;
//   final String threatened;
//   final String obstructed;
//   final String object;
//   final String head_tilt;
//   final String jaw;
//   final String collar;
//   final String suctioning;
//   const BreathingPage({
//     super.key,
//     required this.username,
//     required this.password,
//     required this.home,
//     required this.health_facility,
//     required this.public_place,
//     required this.street,
//     required this.others,
//     required this.single,
//     required this.multiple,
//     required this.na,
//     required this.doa,
//     required this.mass,
//     required this.rta,
//     required this.driver,
//     required this.passenger,
//     required this.pedestrian,
//     required this.airbag,
//     required this.seatbelt,
//     required this.othervehi,
//     required this.helmet,
//     required this.fall,
//     required this.gun,
//     required this.animal,
//     required this.stab,
//     required this.blunt,
//     required this.assault,
//     required this.crushed,
//     required this.penetration,
//     required this.degloved,
//     required this.explosion,
//     required this.burns,
//     required this.drowning,
//     required this.extricated,
//     required this.ejected,
//     required this.timeofa,
//     required this.vehi_invol,
//     required this.crash_with,
//     required this.patent,
//     required this.collar,
//     required this.threatened,
//     required this.object,
//     required this.head_tilt,
//     required this.jaw,
//     required this.obstructed,
//     required this.suctioning,
//   });

//   @override
//   _BreathingPageState createState() => _BreathingPageState();
// }

// class _BreathingPageState extends State<BreathingPage> {
//   bool isLeft = false;
//   bool isRight = false;
//   bool isRibBinder = false;

//   TextEditingController oxygenController = TextEditingController();
//   TextEditingController chestNeedleTubeController = TextEditingController();

//   String selection = '';

//   void _submitDataToSupabase() async {
//     // String oxygentext = oxygenController.text.trim();
//     // String chestNeedleTubeText = chestNeedleTubeController.text.trim();

//     // Insert data into the 'breathing' table
//     await Supabase.instance.client.from('breathing').insert([
//       {
//         'spontaneous':
//             selection.isNotEmpty ? (selection == 'yes' ? 'yes' : 'no') : 'no',
//         'breath_l': isLeft ? 'yes' : 'no',
//         'breath_r': isRight ? 'yes' : 'no',
//         'rib_binder': isRibBinder ? 'yes' : 'no',
//         'oxygen':
//             oxygenController.text.isNotEmpty ? oxygenController.text : 'N/A',
//         'tube': chestNeedleTubeController.text.isNotEmpty
//             ? chestNeedleTubeController.text
//             : 'no',
//       }
//     ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Breathing'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Spontaneous Respiration',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             ListTile(
//               leading: Radio(
//                 value: "yes",
//                 groupValue: selection,
//                 onChanged: (String? value) {
//                   setState(() {
//                     selection = value!;
//                   });
//                 },
//               ),
//               title: Text('Yes'),
//             ),
//             ListTile(
//               leading: Radio(
//                 value: "No",
//                 groupValue: selection,
//                 onChanged: (String? value) {
//                   setState(() {
//                     selection = value!;
//                   });
//                 },
//               ),
//               title: Text('No'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Breath Sounds',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             CheckboxListTile(
//               title: Text('Left'),
//               controlAffinity: ListTileControlAffinity.leading,
//               value: isLeft,
//               onChanged: (value) {
//                 setState(() {
//                   isLeft = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Right'),
//               controlAffinity: ListTileControlAffinity.leading,
//               value: isRight,
//               onChanged: (value) {
//                 setState(() {
//                   isRight = value!;
//                 });
//               },
//             ),
//             Text(
//               'Rib Binder',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             CheckboxListTile(
//               controlAffinity: ListTileControlAffinity.leading,
//               value: isRibBinder,
//               onChanged: (value) {
//                 setState(() {
//                   isRibBinder = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Oxygen',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             TextField(
//               controller: oxygenController,
//               decoration: InputDecoration(
//                 hintText: 'Enter Oxygen value',
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Chest/Needle Tube',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             TextField(
//               controller: chestNeedleTubeController,
//               decoration: InputDecoration(
//                 hintText: 'Enter Chest/Needle Tube value',
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(
//                         context); // Navigate back to the previous page
//                   },
//                   child: Text('Prev'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => CirculationPage(
//                                   username: widget.username,
//                                   password: widget.password,
//                                   home: widget.home,
//                                   health_facility: widget.health_facility,
//                                   public_place: widget.public_place,
//                                   street: widget.street,
//                                   others: widget.others,
//                                   single: widget.single,
//                                   multiple: widget.multiple,
//                                   na: widget.na,
//                                   doa: widget.doa,
//                                   mass: widget.mass,
//                                   rta: widget.rta,
//                                   driver: widget.driver,
//                                   passenger: widget.passenger,
//                                   pedestrian: widget.pedestrian,
//                                   airbag: widget.airbag,
//                                   seatbelt: widget.seatbelt,
//                                   othervehi: widget.othervehi,
//                                   helmet: widget.helmet,
//                                   fall: widget.fall,
//                                   gun: widget.gun,
//                                   animal: widget.animal,
//                                   stab: widget.stab,
//                                   blunt: widget.blunt,
//                                   assault: widget.assault,
//                                   crushed: widget.crushed,
//                                   penetration: widget.penetration,
//                                   degloved: widget.degloved,
//                                   explosion: widget.explosion,
//                                   burns: widget.burns,
//                                   drowning: widget.drowning,
//                                   extricated: widget.extricated,
//                                   ejected: widget.ejected,
//                                   timeofa: widget.timeofa,
//                                   vehi_invol: widget.vehi_invol,
//                                   crash_with: widget.crash_with,
//                                   patent: widget.patent,
//                                   threatened: widget.threatened,
//                                   obstructed: widget.obstructed,
//                                   object: widget.object,
//                                   head_tilt: widget.head_tilt,
//                                   jaw: widget.jaw,
//                                   collar: widget.collar,
//                                   suctioning: widget.suctioning,
//                                   spontaneous: selection.isNotEmpty
//                                       ? (selection == 'yes' ? 'yes' : 'no')
//                                       : 'no',
//                                   breath_l: isLeft ? 'yes' : 'no',
//                                   breath_r: isRight ? 'yes' : 'no',
//                                   rib_binder: isRibBinder ? 'yes' : 'no',
//                                   oxygen: oxygenController.text.isNotEmpty
//                                       ? oxygenController.text
//                                       : 'N/A',
//                                   tube:
//                                       chestNeedleTubeController.text.isNotEmpty
//                                           ? chestNeedleTubeController.text
//                                           : 'no',
//                                 )));
//                     //_submitDataToSupabase();
//                   },
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:myapp/circulation_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BreathingPage extends StatefulWidget {
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
  final String patent;
  final String threatened;
  final String obstructed;
  final String object;
  final String head_tilt;
  final String jaw;
  final String collar;
  final String suctioning;
  const BreathingPage({
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
    required this.patent,
    required this.collar,
    required this.threatened,
    required this.object,
    required this.head_tilt,
    required this.jaw,
    required this.obstructed,
    required this.suctioning,
  });

  @override
  _BreathingPageState createState() => _BreathingPageState();
}

class _BreathingPageState extends State<BreathingPage> {
  bool isRibBinder = false;
  String leftBreathSound = 'normal';
  String rightBreathSound = 'normal';

  TextEditingController oxygenController = TextEditingController();
  TextEditingController chestNeedleTubeController = TextEditingController();

  String selection = '';

  void _submitDataToSupabase() async {
    // Insert data into the 'breathing' table
    await Supabase.instance.client.from('breathing').insert([
      {
        'spontaneous':
            selection.isNotEmpty ? (selection == 'yes' ? 'yes' : 'no') : 'no',
        'breath_l': leftBreathSound,
        'breath_r': rightBreathSound,
        'rib_binder': isRibBinder ? 'yes' : 'no',
        'oxygen':
            oxygenController.text.isNotEmpty ? oxygenController.text : 'N/A',
        'tube': chestNeedleTubeController.text.isNotEmpty
            ? chestNeedleTubeController.text
            : 'no',
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
                value: "No",
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
            DropdownButtonFormField<String>(
              value: leftBreathSound,
              items: ['normal', 'reduced', 'absent']
                  .map((sound) => DropdownMenuItem(
                        value: sound,
                        child: Text(sound),
                      ))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  leftBreathSound = value!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Left Breath Sound',
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: rightBreathSound,
              items: ['normal', 'reduced', 'absent']
                  .map((sound) => DropdownMenuItem(
                        value: sound,
                        child: Text(sound),
                      ))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  rightBreathSound = value!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Right Breath Sound',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Rib Binder',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: isRibBinder,
              onChanged: (value) {
                setState(() {
                  isRibBinder = value!;
                });
              },
              //title: Text(),
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
                            builder: (context) => CirculationPage(
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
                                  patent: widget.patent,
                                  threatened: widget.threatened,
                                  obstructed: widget.obstructed,
                                  object: widget.object,
                                  head_tilt: widget.head_tilt,
                                  jaw: widget.jaw,
                                  collar: widget.collar,
                                  suctioning: widget.suctioning,
                                  spontaneous: selection.isNotEmpty? (selection == 'yes' ? 'yes' : 'no'): 'no',
                                  breath_l: leftBreathSound.isNotEmpty? leftBreathSound: 'normal',
                                  breath_r: rightBreathSound.isNotEmpty? rightBreathSound: 'normal',
                                  rib_binder: isRibBinder ? 'yes' : 'no',
                                  oxygen:oxygenController.text.isNotEmpty ? oxygenController.text : 'N/A',
                                  tube: chestNeedleTubeController.text.isNotEmpty? chestNeedleTubeController.text: 'no',
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