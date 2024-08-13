// import 'package:flutter/material.dart';
// import 'package:myapp/airway_page.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class MechanismOfInjury extends StatefulWidget {
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
//   const MechanismOfInjury({
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
//     });

//   @override
//   _MechanismOfInjuryState createState() => _MechanismOfInjuryState();
// }

// class _MechanismOfInjuryState extends State<MechanismOfInjury> {
//   // Checkbox values
//   bool rta = false;
//   bool driver = false;
//   bool passenger = false;
//   bool pedestrian = false;
//   bool airbag = false;
//   bool seatBelt = false;
//   bool otherVehicle = false;
//   bool restraint = false;
//   bool helmet = false;
//   bool fallFromHeight = false;
//   bool gunShot = false;
//   bool animalAttack = false;
//   bool stabCut = false;
//   bool bluntTrauma = false;
//   bool assault = false;
//   bool crushInjury = false;
//   bool penetrating = false;
//   bool degloving = false;
//   bool explosion = false;
//   bool burnsThermal = false;
//   bool drowning = false;
//   bool extricated = false;
//   bool ejected = false;

//   // Text field controllers
//   TextEditingController timeController = TextEditingController();
//   TextEditingController vehicleInvolvedController = TextEditingController();
//   TextEditingController crashedWithController = TextEditingController();

//   void _submitDataToSupabase() async {
//     // Insert data into the 'mechanism' table
//     await Supabase.instance.client.from('mechanism').insert([
//       {
//         'rta': rta ? 'yes' : 'no',
//         'driver': driver ? 'yes' : 'no',
//         'passenger': passenger ? 'yes' : 'no',
//         'pedestrian': pedestrian ? 'yes' : 'no',
//         'airbag': airbag ? 'yes' : 'no',
//         'seatbelt': seatBelt ? 'yes' : 'no',
//         'othervehi': otherVehicle ? 'yes' : 'no',
//         'helmet': helmet ? 'yes' : 'no',
//         'fall': fallFromHeight ? 'yes' : 'no',
//         'gun': gunShot ? 'yes' : 'no',
//         'animal': animalAttack ? 'yes' : 'no',
//         'stab': stabCut ? 'yes' : 'no',
//         'blunt': bluntTrauma ? 'yes' : 'no',
//         'assault': assault ? 'yes' : 'no',
//         'crushed': crushInjury ? 'yes' : 'no',
//         'penetration': penetrating ? 'yes' : 'no',
//         'degloved': degloving ? 'yes' : 'no',
//         'explosion': explosion ? 'yes' : 'no',
//         'burns': burnsThermal ? 'yes' : 'no',
//         'drowning': drowning ? 'yes' : 'no',
//         'extricated': extricated ? 'yes' : 'no',
//         'ejected': ejected ? 'yes' : 'no',
//         'vehi_invol': vehicleInvolvedController.text,
//         'crash_with': crashedWithController.text,
//       }
//     ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mechanism of Injury'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Mechanism of Injury:',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//             CheckboxListTile(
//               title: Text('RTA'),
//               value: rta,
//               onChanged: (newValue) {
//                 setState(() {
//                   rta = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Driver'),
//               value: driver,
//               onChanged: (newValue) {
//                 setState(() {
//                   driver = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Passenger'),
//               value: passenger,
//               onChanged: (newValue) {
//                 setState(() {
//                   passenger = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Pedestrian'),
//               value: pedestrian,
//               onChanged: (newValue) {
//                 setState(() {
//                   pedestrian = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Airbag'),
//               value: airbag,
//               onChanged: (newValue) {
//                 setState(() {
//                   airbag = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Seat Belt'),
//               value: seatBelt,
//               onChanged: (newValue) {
//                 setState(() {
//                   seatBelt = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Other Vehicles'),
//               value: otherVehicle,
//               onChanged: (newValue) {
//                 setState(() {
//                   otherVehicle = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Restraint'),
//               value: restraint,
//               onChanged: (newValue) {
//                 setState(() {
//                   restraint = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Helmet'),
//               value: helmet,
//               onChanged: (newValue) {
//                 setState(() {
//                   helmet = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Fall From height'),
//               value: fallFromHeight,
//               onChanged: (newValue) {
//                 setState(() {
//                   fallFromHeight = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Gun shot'),
//               value: gunShot,
//               onChanged: (newValue) {
//                 setState(() {
//                   gunShot = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Animal Attack'),
//               value: animalAttack,
//               onChanged: (newValue) {
//                 setState(() {
//                   animalAttack = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Stab/Cut'),
//               value: stabCut,
//               onChanged: (newValue) {
//                 setState(() {
//                   stabCut = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Blunt Trauma'),
//               value: bluntTrauma,
//               onChanged: (newValue) {
//                 setState(() {
//                   bluntTrauma = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Assault'),
//               value: assault,
//               onChanged: (newValue) {
//                 setState(() {
//                   assault = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Crush Injury'),
//               value: crushInjury,
//               onChanged: (newValue) {
//                 setState(() {
//                   crushInjury = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Penetration'),
//               value: penetrating,
//               onChanged: (newValue) {
//                 setState(() {
//                   penetrating = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Degloving'),
//               value: degloving,
//               onChanged: (newValue) {
//                 setState(() {
//                   degloving = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Explosion'),
//               value: explosion,
//               onChanged: (newValue) {
//                 setState(() {
//                   explosion = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Burns/Thermal'),
//               value: burnsThermal,
//               onChanged: (newValue) {
//                 setState(() {
//                   burnsThermal = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Drowing'),
//               value: drowning,
//               onChanged: (newValue) {
//                 setState(() {
//                   drowning = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Extricated'),
//               value: extricated,
//               onChanged: (newValue) {
//                 setState(() {
//                   extricated = newValue!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Ejected'),
//               value: ejected,
//               onChanged: (newValue) {
//                 setState(() {
//                   ejected = newValue!;
//                 });
//               },
//             ),

//             // Add more CheckboxListTile for other options

//             SizedBox(height: 20.0),

//             Text('Time of the accident:',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//             TextField(
//               controller: timeController,
//               decoration: InputDecoration(
//                 hintText: 'Enter time',
//               ),
//             ),

//             SizedBox(height: 20.0),

//             Text('Vehicle Involved:',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//             TextField(
//               controller: vehicleInvolvedController,
//               decoration: InputDecoration(
//                 hintText: 'Enter vehicle details',
//               ),
//             ),

//             SizedBox(height: 20.0),

//             Text('Crashed With:',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//             TextField(
//               controller: crashedWithController,
//               decoration: InputDecoration(
//                 hintText: 'Enter details',
//               ),
//             ),

//             SizedBox(height: 20.0),

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
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => AirwayPage(
//                           username:widget.username,
//                           password:widget.password,
//                           home:widget.home,
//                           health_facility:widget.health_facility,
//                           public_place:widget.public_place,
//                           street:widget.street,
//                           others:widget.others,
//                           single: widget.single,
//                           multiple: widget.multiple,
//                           na: widget.na,
//                           doa: widget.doa,
//                           mass: widget.mass,
//                           rta: rta ? 'yes' : 'no',
//                           driver: driver ? 'yes' : 'no',
//                           passenger: passenger ? 'yes' : 'no',
//                           pedestrian: pedestrian ? 'yes' : 'no',
//                           airbag: airbag ? 'yes' : 'no',
//                           seatbelt: seatBelt ? 'yes' : 'no',
//                           othervehi: otherVehicle ? 'yes' : 'no',
//                           helmet: helmet ? 'yes' : 'no',
//                           fall: fallFromHeight ? 'yes' : 'no',
//                           gun: gunShot ? 'yes' : 'no',
//                           animal: animalAttack ? 'yes' : 'no',
//                           stab: stabCut ? 'yes' : 'no',
//                           blunt: bluntTrauma ? 'yes' : 'no',
//                           assault: assault ? 'yes' : 'no',
//                           crushed: crushInjury ? 'yes' : 'no',
//                           penetration: penetrating ? 'yes' : 'no',
//                           degloved: degloving ? 'yes' : 'no',
//                           explosion: explosion ? 'yes' : 'no',
//                           burns: burnsThermal ? 'yes' : 'no',
//                           drowning: drowning ? 'yes' : 'no',
//                           extricated: extricated ? 'yes' : 'no',
//                           ejected: ejected ? 'yes' : 'no',
//                           vehi_invol: vehicleInvolvedController.text,
//                           crash_with: crashedWithController.text,
                                            
//                         )));
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
import 'package:myapp/airway_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MechanismOfInjury extends StatefulWidget {
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
  const MechanismOfInjury({
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
  });

  @override
  _MechanismOfInjuryState createState() => _MechanismOfInjuryState();
}

class _MechanismOfInjuryState extends State<MechanismOfInjury> {
  // Checkbox values
  bool rta = false;
  bool driver = false;
  bool passenger = false;
  bool pedestrian = false;
  bool airbag = false;
  bool seatBelt = false;
  bool otherVehicle = false;
  bool restraint = false;
  bool helmet = false;
  bool fallFromHeight = false;
  bool gunShot = false;
  bool animalAttack = false;
  bool stabCut = false;
  bool bluntTrauma = false;
  bool assault = false;
  bool crushInjury = false;
  bool penetrating = false;
  bool degloving = false;
  bool explosion = false;
  bool burnsThermal = false;
  bool drowning = false;
  bool extricated = false;
  bool ejected = false;

  // Text field controllers
  TextEditingController timeController = TextEditingController();
  TextEditingController vehicleInvolvedController = TextEditingController();
  TextEditingController crashedWithController = TextEditingController();

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('mechanism').insert([
      {
        'rta': rta ? 'yes' : 'no',
        'driver': driver ? 'yes' : 'no',
        'passenger': passenger ? 'yes' : 'no',
        'pedestrian': pedestrian ? 'yes' : 'no',
        'airbag': airbag ? 'yes' : 'no',
        'seatbelt': seatBelt ? 'yes' : 'no',
        'othervehi': otherVehicle ? 'yes' : 'no',
        'helmet': helmet ? 'yes' : 'no',
        'fall': fallFromHeight ? 'yes' : 'no',
        'gun': gunShot ? 'yes' : 'no',
        'animal': animalAttack ? 'yes' : 'no',
        'stab': stabCut ? 'yes' : 'no',
        'blunt': bluntTrauma ? 'yes' : 'no',
        'assault': assault ? 'yes' : 'no',
        'crushed': crushInjury ? 'yes' : 'no',
        'penetration': penetrating ? 'yes' : 'no',
        'degloved': degloving ? 'yes' : 'no',
        'explosion': explosion ? 'yes' : 'no',
        'burns': burnsThermal ? 'yes' : 'no',
        'drowning': drowning ? 'yes' : 'no',
        'extricated': extricated ? 'yes' : 'no',
        'ejected': ejected ? 'yes' : 'no',
        'timeofa': timeController.text,
        'vehi_invol': vehicleInvolvedController.text,
        'crash_with': crashedWithController.text,
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mechanism of Injury'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mechanism of Injury:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: Text('RTA'),
              value: rta,
              onChanged: (newValue) {
                setState(() {
                  rta = newValue!;
                });
              },
            ),
            if (rta) ...[
              CheckboxListTile(
                title: Text('Driver'),
                value: driver,
                onChanged: (newValue) {
                  setState(() {
                    driver = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Passenger'),
                value: passenger,
                onChanged: (newValue) {
                  setState(() {
                    passenger = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Pedestrian'),
                value: pedestrian,
                onChanged: (newValue) {
                  setState(() {
                    pedestrian = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Airbag'),
                value: airbag,
                onChanged: (newValue) {
                  setState(() {
                    airbag = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Seat Belt'),
                value: seatBelt,
                onChanged: (newValue) {
                  setState(() {
                    seatBelt = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Other Vehicles'),
                value: otherVehicle,
                onChanged: (newValue) {
                  setState(() {
                    otherVehicle = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Helmet'),
                value: helmet,
                onChanged: (newValue) {
                  setState(() {
                    helmet = newValue!;
                  });
                },
              ),
            ],
            CheckboxListTile(
              title: Text('Fall From Height'),
              value: fallFromHeight,
              onChanged: (newValue) {
                setState(() {
                  fallFromHeight = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Gun Shot'),
              value: gunShot,
              onChanged: (newValue) {
                setState(() {
                  gunShot = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Animal Attack'),
              value: animalAttack,
              onChanged: (newValue) {
                setState(() {
                  animalAttack = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Stab/Cut'),
              value: stabCut,
              onChanged: (newValue) {
                setState(() {
                  stabCut = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Blunt Trauma'),
              value: bluntTrauma,
              onChanged: (newValue) {
                setState(() {
                  bluntTrauma = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Assault'),
              value: assault,
              onChanged: (newValue) {
                setState(() {
                  assault = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Crush Injury'),
              value: crushInjury,
              onChanged: (newValue) {
                setState(() {
                  crushInjury = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Penetrating'),
              value: penetrating,
              onChanged: (newValue) {
                setState(() {
                  penetrating = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Degloving'),
              value: degloving,
              onChanged: (newValue) {
                setState(() {
                  degloving = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Explosion'),
              value: explosion,
              onChanged: (newValue) {
                setState(() {
                  explosion = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Burns/Thermal'),
              value: burnsThermal,
              onChanged: (newValue) {
                setState(() {
                  burnsThermal = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Drowning'),
              value: drowning,
              onChanged: (newValue) {
                setState(() {
                  drowning = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Extricated'),
              value: extricated,
              onChanged: (newValue) {
                setState(() {
                  extricated = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Ejected'),
              value: ejected,
              onChanged: (newValue) {
                setState(() {
                  ejected = newValue!;
                });
              },
            ),
            SizedBox(height: 20.0),

            Text('Time of the accident:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                hintText: 'Enter time',
              ),
            ),

            SizedBox(height: 20.0),

            Text('Vehicle Involved:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            TextField(
              controller: vehicleInvolvedController,
              decoration: InputDecoration(
                hintText: 'Enter vehicle details',
              ),
            ),

            SizedBox(height: 20.0),

            Text('Crashed With:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            TextField(
              controller: crashedWithController,
              decoration: InputDecoration(
                hintText: 'Enter details',
              ),
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AirwayPage(
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
                          rta: rta ? 'yes' : 'no',
                          driver: driver ? 'yes' : 'no',
                          passenger: passenger ? 'yes' : 'no',
                          pedestrian: pedestrian ? 'yes' : 'no',
                          airbag: airbag ? 'yes' : 'no',
                          seatbelt: seatBelt ? 'yes' : 'no',
                          othervehi: otherVehicle ? 'yes' : 'no',
                          helmet: helmet ? 'yes' : 'no',
                          fall: fallFromHeight ? 'yes' : 'no',
                          gun: gunShot ? 'yes' : 'no',
                          animal: animalAttack ? 'yes' : 'no',
                          stab: stabCut ? 'yes' : 'no',
                          blunt: bluntTrauma ? 'yes' : 'no',
                          assault: assault ? 'yes' : 'no',
                          crushed: crushInjury ? 'yes' : 'no',
                          penetration: penetrating ? 'yes' : 'no',
                          degloved: degloving ? 'yes' : 'no',
                          explosion: explosion ? 'yes' : 'no',
                          burns: burnsThermal ? 'yes' : 'no',
                          drowning: drowning ? 'yes' : 'no',
                          extricated: extricated ? 'yes' : 'no',
                          ejected: ejected ? 'yes' : 'no',
                          timeofa: timeController.text,
                          vehi_invol: vehicleInvolvedController.text,
                          crash_with: crashedWithController.text,
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