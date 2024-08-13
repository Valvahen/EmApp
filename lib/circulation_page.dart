import 'package:flutter/material.dart';
import 'package:myapp/disablity_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CirculationPage extends StatefulWidget {
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
  const CirculationPage({
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
  });

  @override
  _CirculationPageState createState() => _CirculationPageState();
}

class _CirculationPageState extends State<CirculationPage> {
  bool isWarm = false;
  bool isPale = false;
  bool isCyanotic = false;
  bool isCool = false;
  bool lessThan2 = false;
  //bool greaterThan2 = false;
  bool isWeak = false;
  bool isThready = false;
  bool isBounding = false;
  bool isJvd = false;
  bool isControlled = false;
  bool isIv = false;
  bool isIo = false;
  bool isIvf = false;
  bool isNs = false;
  bool isRl = false;
  bool isPelvicBinderPlaced = false;
  bool isTourniquetApplied = false;

  void _submitDataToSupabase() async {
    await Supabase.instance.client.from('circulation').insert([
      {
        'warmskin': isWarm ? 'yes' : 'no',
        'paleskin': isPale ? 'yes' : 'no',
        'cyanotic': isCyanotic ? 'yes' : 'no',
        'cool': isCool ? 'yes' : 'no',
        'crt': lessThan2 ? 'yes' : 'no',
        'weak': isWeak ? 'yes' : 'no',
        'thready': isThready ? 'yes' : 'no',
        'bounding': isBounding ? 'yes' : 'no',
        'jvd': isJvd ? 'yes' : 'no',
        'bleedcont': isControlled ? 'yes' : 'no',
        'iv': isIv ? 'yes' : 'no',
        'io': isIo ? 'yes' : 'no',
        'ivf': isIvf ? 'yes' : 'no',
        'ns': isNs ? 'yes' : 'no',
        'rl': isRl ? 'yes' : 'no',
        'pelvicbinder': isPelvicBinderPlaced ? 'yes' : 'no',
        'tourniquet': isTourniquetApplied ? 'yes' : 'no',
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circulation'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Skin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
                title: Text('Warm'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isWarm,
                onChanged: (value) {
                  setState(() {
                    isWarm = value!;
                  });
                }),
            CheckboxListTile(
              title: Text('Pale'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPale,
              onChanged: (value) {
                setState(() {
                  isPale = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Cyanotic'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCyanotic,
              onChanged: (value) {
                setState(() {
                  isCyanotic = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Cool'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCool,
              onChanged: (value) {
                setState(() {
                  isCool = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'CRT',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('<2:'),
              controlAffinity: ListTileControlAffinity.leading,
              value: lessThan2,
              onChanged: (value) {
                setState(() {
                  lessThan2 = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Pulses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Weak'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isWeak,
              onChanged: (value) {
                setState(() {
                  isWeak = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Thready'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isThready,
              onChanged: (value) {
                setState(() {
                  isThready = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Bounding'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isBounding,
              onChanged: (value) {
                setState(() {
                  isBounding = value!;
                });
              },
            ),
            Text(
              'JVD:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              //title: Text('JVD:'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isJvd,
              onChanged: (value) {
                setState(() {
                  isJvd = value!;
                });
              },
            ),
            Text(
              'Bleeding',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Controlled'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isControlled,
              onChanged: (value) {
                setState(() {
                  isControlled = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Access:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('IV'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isIv,
              onChanged: (value) {
                setState(() {
                  isIv = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('IO'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isIo,
              onChanged: (value) {
                setState(() {
                  isIo = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'IVF:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('IVF'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isIvf,
              onChanged: (value) {
                setState(() {
                  isIvf = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('NS'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isNs,
              onChanged: (value) {
                setState(() {
                  isNs = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('RL'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isRl,
              onChanged: (value) {
                setState(() {
                  isRl = value!;
                });
              },
            ),
            Text(
              'Pelvic Binder',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Placed'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPelvicBinderPlaced,
              onChanged: (value) {
                setState(() {
                  isPelvicBinderPlaced = value!;
                });
              },
            ),
            Text(
              'Tourniquet',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Applied'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isTourniquetApplied,
              onChanged: (value) {
                setState(() {
                  isTourniquetApplied = value!;
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DisabilityPage(
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
                                  spontaneous: widget.spontaneous,
                                  breath_l: widget.breath_l,
                                  breath_r: widget.breath_r,
                                  rib_binder: widget.rib_binder,
                                  oxygen: widget.oxygen,
                                  tube: widget.tube,
                                  warmskin: isWarm ? 'yes' : 'no',
                                  paleskin: isPale ? 'yes' : 'no',
                                  cyanotic: isCyanotic ? 'yes' : 'no',
                                  cool: isCool ? 'yes' : 'no',
                                  crt: lessThan2 ? 'yes' : 'no',
                                  weak: isWeak ? 'yes' : 'no',
                                  thready: isThready ? 'yes' : 'no',
                                  bounding: isBounding ? 'yes' : 'no',
                                  jvd: isJvd ? 'yes' : 'no',
                                  bleedcont: isControlled ? 'yes' : 'no',
                                  iv: isIv ? 'yes' : 'no',
                                  io: isIo ? 'yes' : 'no',
                                  ivf: isIvf ? 'yes' : 'no',
                                  ns: isNs ? 'yes' : 'no',
                                  rl: isRl ? 'yes' : 'no',
                                  pelvicbinder:
                                      isPelvicBinderPlaced ? 'yes' : 'no',
                                  tourniquet:
                                      isTourniquetApplied ? 'yes' : 'no',
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
