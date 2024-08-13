// import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:myapp/login_page.dart';

// class VitalsPage extends StatefulWidget {
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
//   final String spontaneous;
//   final String breath_l;
//   final String breath_r;
//   final String rib_binder;
//   final String oxygen;
//   final String tube;
//   final String warmskin;
//   final String paleskin;
//   final String cyanotic;
//   final String cool;
//   final String crt;
//   final String weak;
//   final String thready;
//   final String bounding;
//   final String jvd;
//   final String bleedcont;
//   final String iv;
//   final String io;
//   final String ivf;
//   final String ns;
//   final String rl;
//   final String pelvicbinder;
//   final String tourniquet;
//   final String a;
//   final String v;
//   final String p;
//   final String u;
//   final String pupils;
//   final String exposed;
//   const VitalsPage({
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
//     required this.spontaneous,
//     required this.breath_l,
//     required this.breath_r,
//     required this.rib_binder,
//     required this.oxygen,
//     required this.tube,
//     required this.warmskin,
//     required this.paleskin,
//     required this.cyanotic,
//     required this.cool,
//     required this.crt,
//     required this.weak,
//     required this.thready,
//     required this.bounding,
//     required this.jvd,
//     required this.bleedcont,
//     required this.iv,
//     required this.io,
//     required this.ivf,
//     required this.ns,
//     required this.rl,
//     required this.pelvicbinder,
//     required this.tourniquet,
//     required this.a,
//     required this.v,
//     required this.p,
//     required this.u,
//     required this.pupils,
//     required this.exposed,
//   });

//   @override
//   _VitalsPageState createState() => _VitalsPageState();
// }

// class _VitalsPageState extends State<VitalsPage> {
//   final _formKey = GlobalKey<FormState>();
//   final List<Map<String, dynamic>> _vitalsData = [];

//   final TextEditingController _timeController = TextEditingController();
//   final TextEditingController _hrController = TextEditingController();
//   final TextEditingController _rrController = TextEditingController();
//   final TextEditingController _spo2Controller = TextEditingController();
//   final TextEditingController _bpController = TextEditingController();
//   final TextEditingController _grbsController = TextEditingController();
//   final TextEditingController _gcsController = TextEditingController();
//   final TextEditingController _tempController = TextEditingController();
//   final TextEditingController _injurySustained = TextEditingController();
//   final TextEditingController _interventionPerformed = TextEditingController();
//   final TextEditingController _requirements = TextEditingController();
//   final TextEditingController _estimatedTimeOfArrival = TextEditingController();

//   void _submitDataToSupabase() async {
//     // Insert data into the 'responder' table
//     await Supabase.instance.client.from('responder').insert([
//       {
//         'username': widget.username,
//         'password': widget.password,
//       }
//     ]);
//     await Supabase.instance.client.from('i_info').insert([
//       {
//         'home': widget.home,
//         'health_facility': widget.health_facility,
//         'public_place': widget.public_place,
//         'street': widget.street,
//         'others': widget.others,
//       }
//     ]);
//     await Supabase.instance.client.from('i_quantity').insert([
//       {
//         'single': widget.single,
//         'multiple': widget.multiple,
//         'na': widget.na,
//         'doa': widget.doa,
//         'mass': widget.mass,
//       }
//     ]);
//     await Supabase.instance.client.from('mechanism').insert([
//       {
//         'rta': widget.rta,
//         'driver': widget.driver,
//         'passenger': widget.passenger,
//         'pedestrian': widget.pedestrian,
//         'airbag': widget.airbag,
//         'seatbelt': widget.seatbelt,
//         'othervehi': widget.othervehi,
//         'helmet': widget.helmet,
//         'fall': widget.fall,
//         'gun': widget.gun,
//         'animal': widget.animal,
//         'stab': widget.stab,
//         'blunt': widget.blunt,
//         'assault': widget.assault,
//         'crushed': widget.crushed,
//         'penetration': widget.penetration,
//         'degloved': widget.degloved,
//         'explosion': widget.explosion,
//         'burns': widget.burns,
//         'drowning': widget.drowning,
//         'extricated': widget.extricated,
//         'ejected': widget.ejected,
//         'timeofa': widget.timeofa,
//         'vehi_invol': widget.vehi_invol,
//         'crash_with': widget.crash_with,
//       }
//     ]);
//     await Supabase.instance.client.from('airway').insert([
//       {
//         'patent': widget.patent,
//         'threatened': widget.threatened,
//         'obstructed': widget.obstructed,
//         'object': widget.object,
//       }
//     ]);
//     await Supabase.instance.client.from('prevention').insert([
//       {
//         'head_tilt': widget.head_tilt,
//         'jaw': widget.jaw,
//         'collar': widget.collar,
//         'suctioning': widget.suctioning,
//       }
//     ]);

//     await Supabase.instance.client.from('breathing').insert([
//       {
//         'spontaneous': widget.spontaneous,
//         'breath_l': widget.breath_l,
//         'breath_r': widget.breath_r,
//         'rib_binder': widget.rib_binder,
//         'oxygen': widget.oxygen,
//         'tube': widget.tube,
//       }
//     ]);
//     await Supabase.instance.client.from('circulation').insert([
//       {
//         'warmskin': widget.warmskin,
//         'paleskin': widget.paleskin,
//         'cyanotic': widget.cyanotic,
//         'cool': widget.cool,
//         'crt': widget.crt,
//         'weak': widget.weak,
//         'thready': widget.thready,
//         'bounding': widget.bounding,
//         'jvd': widget.jvd,
//         'bleedcont': widget.bleedcont,
//         'iv': widget.iv,
//         'io': widget.io,
//         'ivf': widget.ivf,
//         'ns': widget.ns,
//         'rl': widget.rl,
//         'pelvicbinder': widget.pelvicbinder,
//         'tourniquet': widget.tourniquet,
//       }
//     ]);
//     await Supabase.instance.client.from('disability').insert([
//       {
//         'a': widget.a,
//         'v': widget.v,
//         'p': widget.p,
//         'u': widget.u,
//         'pupils': widget.pupils,
//         'exposed': widget.exposed,
//       }
//     ]);
//     // Insert data into the 'mechanism' table
//     await Supabase.instance.client.from('vitals').insert([
//       {
//         'time': _timeController.text,
//         'hr': _hrController.text,
//         'rr': _rrController.text,
//         'spo2': _spo2Controller.text,
//         'bp': _bpController.text,
//         'grbs': _grbsController.text,
//         'gcs': _gcsController.text,
//         'temp': _tempController.text,
//       }
//     ]);
//     await Supabase.instance.client.from('injuries').insert([
//       {
//         // Replace with appropriate value
//         'injury': _injurySustained.text,
//       }
//     ]);
//     await Supabase.instance.client.from('requirements').insert([
//       {
//         'requirements': _requirements.text,
//       }
//     ]);
//     await Supabase.instance.client.from('intervention').insert([
//       {
//         'intervention': _interventionPerformed.text,
//       }
//     ]);
//     await Supabase.instance.client.from('timeofarr').insert([
//       {
//         'timeofarrival': _estimatedTimeOfArrival.text,
//       }
//     ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Vitals'),
//       ),
//       body: SingleChildScrollView(
//         // Wrap with SingleChildScrollView
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: _timeController,
//                       decoration: InputDecoration(labelText: 'Time'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a time';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _hrController,
//                       decoration: InputDecoration(labelText: 'HR'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a heart rate';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _rrController,
//                       decoration: InputDecoration(labelText: 'RR'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a respiratory rate';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _spo2Controller,
//                       decoration: InputDecoration(labelText: 'SpO2'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a SpO2 value';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _bpController,
//                       decoration: InputDecoration(labelText: 'BP'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a blood pressure';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _grbsController,
//                       decoration: InputDecoration(labelText: 'GRBS'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a glucose value';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _gcsController,
//                       decoration: InputDecoration(labelText: 'GCS'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a GCS value';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _tempController,
//                       decoration: InputDecoration(labelText: 'Temp'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a temperature';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _injurySustained,
//                       decoration:
//                           InputDecoration(labelText: 'Injuries Sustained'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter the injuries sustained';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _interventionPerformed,
//                       decoration:
//                           InputDecoration(labelText: 'Intervention Performed'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter the intervention performed';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _requirements,
//                       decoration: InputDecoration(labelText: 'Requirements'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter a requirement';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: _estimatedTimeOfArrival,
//                       decoration: InputDecoration(
//                           labelText: 'Estimated Time Of Arrival'),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter the estimated time of arrival';
//                         }
//                         return null;
//                       },
//                     ),
//                     SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.pop(
//                                 context); // Navigate back to the previous page
//                           },
//                           child: Text('Prev'),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               _submitDataToSupabase();
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginPage()));
//                               //_saveFormData();
//                             }
//                           },
//                           child: Text('Submit'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _saveFormData() {
//     setState(() {
//       _vitalsData.add({
//         'time': _timeController.text,
//         'hr': _hrController.text,
//         'rr': _rrController.text,
//         'spo2': _spo2Controller.text,
//         'bp': _bpController.text,
//         'grbs': _grbsController.text,
//         'gcs': _gcsController.text,
//         'temp': _tempController.text,
//         'injurySustained': _injurySustained.text,
//         'interventionPerformed': _interventionPerformed.text,
//         'requirements': _requirements.text,
//         'EstimatedTimeOfArrival': _estimatedTimeOfArrival.text,
//       });
//       // Clearing text controllers after saving data
//       _timeController.clear();
//       _hrController.clear();
//       _rrController.clear();
//       _spo2Controller.clear();
//       _bpController.clear();
//       _grbsController.clear();
//       _gcsController.clear();
//       _tempController.clear();
//       _injurySustained.clear();
//       _interventionPerformed.clear();
//       _requirements.clear();
//       _estimatedTimeOfArrival.clear();
//     });
//   }
// }
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/login_page.dart';

class VitalsPage extends StatefulWidget {
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
  final String spontaneous;
  final String breath_l;
  final String breath_r;
  final String rib_binder;
  final String oxygen;
  final String tube;
  final String warmskin;
  final String paleskin;
  final String cyanotic;
  final String cool;
  final String crt;
  final String weak;
  final String thready;
  final String bounding;
  final String jvd;
  final String bleedcont;
  final String iv;
  final String io;
  final String ivf;
  final String ns;
  final String rl;
  final String pelvicbinder;
  final String tourniquet;
  final String a;
  final String v;
  final String p;
  final String u;
  final String pupils;
  final String exposed;
  const VitalsPage({
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
    required this.spontaneous,
    required this.breath_l,
    required this.breath_r,
    required this.rib_binder,
    required this.oxygen,
    required this.tube,
    required this.warmskin,
    required this.paleskin,
    required this.cyanotic,
    required this.cool,
    required this.crt,
    required this.weak,
    required this.thready,
    required this.bounding,
    required this.jvd,
    required this.bleedcont,
    required this.iv,
    required this.io,
    required this.ivf,
    required this.ns,
    required this.rl,
    required this.pelvicbinder,
    required this.tourniquet,
    required this.a,
    required this.v,
    required this.p,
    required this.u,
    required this.pupils,
    required this.exposed,
  });

  @override
  _VitalsPageState createState() => _VitalsPageState();
}

class _VitalsPageState extends State<VitalsPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _hrController = TextEditingController();
  final TextEditingController _rrController = TextEditingController();
  final TextEditingController _spo2Controller = TextEditingController();
  final TextEditingController _bpController = TextEditingController();
  final TextEditingController _grbsController = TextEditingController();
  final TextEditingController _gcsController = TextEditingController();
  final TextEditingController _tempController = TextEditingController();
  final TextEditingController _injurySustained = TextEditingController();
  final TextEditingController _interventionPerformed = TextEditingController();
  final TextEditingController _requirements = TextEditingController();
  final TextEditingController _estimatedTimeOfArrival = TextEditingController();

  void _submitDataToSupabase() async {
    // Insert data into Supabase
    await Supabase.instance.client.from('responder').insert([
      {
        'username': widget.username,
        'password': widget.password,
      }
    ]);
    await Supabase.instance.client.from('i_info').insert([
      {
        'home': widget.home,
        'health_facility': widget.health_facility,
        'public_place': widget.public_place,
        'street': widget.street,
        'others': widget.others,
      }
    ]);
    await Supabase.instance.client.from('i_quantity').insert([
      {
        'single': widget.single,
        'multiple': widget.multiple,
        'na': widget.na,
        'doa': widget.doa,
        'mass': widget.mass,
      }
    ]);
    await Supabase.instance.client.from('mechanism').insert([
      {
        'rta': widget.rta,
        'driver': widget.driver,
        'passenger': widget.passenger,
        'pedestrian': widget.pedestrian,
        'airbag': widget.airbag,
        'seatbelt': widget.seatbelt,
        'othervehi': widget.othervehi,
        'helmet': widget.helmet,
        'fall': widget.fall,
        'gun': widget.gun,
        'animal': widget.animal,
        'stab': widget.stab,
        'blunt': widget.blunt,
        'assault': widget.assault,
        'crushed': widget.crushed,
        'penetration': widget.penetration,
        'degloved': widget.degloved,
        'explosion': widget.explosion,
        'burns': widget.burns,
        'drowning': widget.drowning,
        'extricated': widget.extricated,
        'ejected': widget.ejected,
        'timeofa': widget.timeofa,
        'vehi_invol': widget.vehi_invol,
        'crash_with': widget.crash_with,
      }
    ]);
    await Supabase.instance.client.from('airway').insert([
      {
        'patent': widget.patent,
        'threatened': widget.threatened,
        'obstructed': widget.obstructed,
        'object': widget.object,
      }
    ]);
    await Supabase.instance.client.from('prevention').insert([
      {
        'head_tilt': widget.head_tilt,
        'jaw': widget.jaw,
        'collar': widget.collar,
        'suctioning': widget.suctioning,
      }
    ]);

    await Supabase.instance.client.from('breathing').insert([
      {
        'spontaneous': widget.spontaneous,
        'breath_l': widget.breath_l,
        'breath_r': widget.breath_r,
        'rib_binder': widget.rib_binder,
        'oxygen': widget.oxygen,
        'tube': widget.tube,
      }
    ]);
    await Supabase.instance.client.from('circulation').insert([
      {
        'warmskin': widget.warmskin,
        'paleskin': widget.paleskin,
        'cyanotic': widget.cyanotic,
        'cool': widget.cool,
        'crt': widget.crt,
        'weak': widget.weak,
        'thready': widget.thready,
        'bounding': widget.bounding,
        'jvd': widget.jvd,
        'bleedcont': widget.bleedcont,
        'iv': widget.iv,
        'io': widget.io,
        'ivf': widget.ivf,
        'ns': widget.ns,
        'rl': widget.rl,
        'pelvicbinder': widget.pelvicbinder,
        'tourniquet': widget.tourniquet,
      }
    ]);
    await Supabase.instance.client.from('disability').insert([
      {
        'a': widget.a,
        'v': widget.v,
        'p': widget.p,
        'u': widget.u,
        'pupils': widget.pupils,
        'exposed': widget.exposed,
      }
    ]);
    await Supabase.instance.client.from('vitals').insert([
      {
        'time': _timeController.text,
        'hr': _hrController.text,
        'rr': _rrController.text,
        'spo2': _spo2Controller.text,
        'bp': _bpController.text,
        'grbs': _grbsController.text,
        'gcs': _gcsController.text,
        'temp': _tempController.text,
      }
    ]);
    await Supabase.instance.client.from('injuries').insert([
      {
        'injury': _injurySustained.text,
      }
    ]);
    await Supabase.instance.client.from('intervention').insert([
      {
        'intervention': _interventionPerformed.text,
      }
    ]);
    await Supabase.instance.client.from('requirements').insert([
      {
        'requirements': _requirements.text,
      }
    ]);
    await Supabase.instance.client.from('timeofarr').insert([
      {
        'timeofarrival': _estimatedTimeOfArrival.text,
      }
    ]);
    _clearForm();
  }

  void _clearForm() {
    _timeController.clear();
    _hrController.clear();
    _rrController.clear();
    _spo2Controller.clear();
    _bpController.clear();
    _grbsController.clear();
    _gcsController.clear();
    _tempController.clear();
    _injurySustained.clear();
    _interventionPerformed.clear();
    _requirements.clear();
    _estimatedTimeOfArrival.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vitals & Interventions'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vitals',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Divider(thickness: 2),
              _buildVitalsInputField('Time', _timeController),
              _buildVitalsInputField('Heart Rate', _hrController),
              _buildVitalsInputField('Respiratory Rate', _rrController),
              _buildVitalsInputField('SpO2', _spo2Controller),
              _buildVitalsInputField('Blood Pressure', _bpController),
              _buildVitalsInputField('GRBS', _grbsController),
              _buildVitalsInputField('GCS', _gcsController),
              _buildVitalsInputField('Temperature', _tempController),
              SizedBox(height: 20),
              Text(
                'Injuries Sustained',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Divider(thickness: 2),
              _buildLargeInputField('Describe the injuries', _injurySustained),
              SizedBox(height: 20),
              Text(
                'Interventions Performed',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Divider(thickness: 2),
              _buildLargeInputField(
                  'Describe the interventions', _interventionPerformed),
              SizedBox(height: 20),
              Text(
                'Requirements & ETA',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Divider(thickness: 2),
              _buildLargeInputField('Requirements', _requirements),
              _buildVitalsInputField(
                  'Estimated Time of Arrival', _estimatedTimeOfArrival),
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
                            if (_formKey.currentState!.validate()) {
                              _submitDataToSupabase();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                              //_saveFormData();
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
          ),
            ],
      ),
        ),
      ),
    );
  }

  Widget _buildVitalsInputField(
      String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildLargeInputField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        maxLines: 3,
      ),
    );
  }
}
