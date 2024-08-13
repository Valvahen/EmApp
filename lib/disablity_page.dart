import 'package:flutter/material.dart';
import 'package:myapp/vitals_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DisabilityPage extends StatefulWidget {
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
  const DisabilityPage({
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
    });

  @override
  _DisabilityPageState createState() => _DisabilityPageState();
}

class _DisabilityPageState extends State<DisabilityPage> {
  bool isAlert = false;
  bool isV = false;
  bool isP = false;
  bool isUnconscious = false;
  bool isExposedCompletly = false;

  TextEditingController pupils = TextEditingController();
  TextEditingController signsAndSymptoms = TextEditingController();
  TextEditingController allergies = TextEditingController();
  TextEditingController medications = TextEditingController();
  TextEditingController postMedicalHistory = TextEditingController();
  TextEditingController lastMeal = TextEditingController();
  TextEditingController eventLeadingForCause = TextEditingController();

  void _submitDataToSupabase() async {
    // Insert data into the 'mechanism' table
    await Supabase.instance.client.from('disability').insert([
      {
        'a': isAlert ? 'yes' : 'no',
        'v': isV ? 'yes' : 'no',
        'p': isP ? 'yes' : 'no',
        'u': isUnconscious ? 'yes' : 'no',
        'pupils': pupils.text,
        'exposed': isExposedCompletly ? 'yes' : 'no',
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disability'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Responsiveness:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Alert'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isAlert,
              onChanged: (value) {
                setState(() {
                  isAlert = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Verbal'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isV,
              onChanged: (value) {
                setState(() {
                  isV = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('With Pressure'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isP,
              onChanged: (value) {
                setState(() {
                  isP = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Unresponsive'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isUnconscious,
              onChanged: (value) {
                setState(() {
                  isUnconscious = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Pupils:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: pupils,
              decoration: InputDecoration(
                hintText: 'Enter condition of pupils',
              ),
            ),
            Text(
              'Exposed Completely:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Hypothermia'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isExposedCompletly,
              onChanged: (value) {
                setState(() {
                  isExposedCompletly = value!;
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VitalsPage(
                          username:widget.username,
                              password:widget.password,
                              home:widget.home,
                              health_facility:widget.health_facility,
                              public_place:widget.public_place,
                              street:widget.street,
                              others:widget.others,
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
                              warmskin: widget.warmskin,
                              paleskin: widget.paleskin,
                              cyanotic: widget.cyanotic,
                              cool: widget.cool,
                              crt: widget.crt,
                              weak: widget.weak,
                              thready: widget.thready,
                              bounding: widget.bounding,
                              jvd: widget.jvd,
                              bleedcont: widget.bleedcont,
                              iv: widget.iv,
                              io: widget.io,
                              ivf: widget.ivf,
                              ns: widget.ns,
                              rl: widget.rl,
                              pelvicbinder: widget.pelvicbinder,
                              tourniquet: widget.tourniquet,
                              a: isAlert ? 'yes' : 'no',
                              v: isV ? 'yes' : 'no',
                              p: isP ? 'yes' : 'no',
                              u: isUnconscious ? 'yes' : 'no',
                              pupils: pupils.text,
                              exposed: isExposedCompletly ? 'yes' : 'no',
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
