//import 'dart:html';
// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the new page after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NewPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  Set<String> selectedCheckboxes = {"Home"};
  TextEditingController otherTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Time text field
          TextField(
            decoration: InputDecoration(
              labelText: 'Select Time',
            ),
            onTap: () async {
              final TimeOfDay? newTime = await showTimePicker(
                context: context,
                initialTime: selectedTime,
              );
              if (newTime != null) {
                setState(() {
                  selectedTime = newTime;
                });
              }
            },
          ),
          // Checkboxes
          Column(
            children: [
              CheckboxListTile(
                title: Text('Home'),
                value: selectedCheckboxes.contains('Home'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Home');
                    } else {
                      selectedCheckboxes.remove('Home');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Health Care facility'),
                value: selectedCheckboxes.contains('Health Care facility'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Health Care facility');
                    } else {
                      selectedCheckboxes.remove('Health Care facility');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Public building'),
                value: selectedCheckboxes.contains('Public building'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Public building');
                    } else {
                      selectedCheckboxes.remove('Public building');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Street/highway'),
                value: selectedCheckboxes.contains('Street/highway'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedCheckboxes.add('Street/highway');
                    } else {
                      selectedCheckboxes.remove('Street/highway');
                    }
                  });
                },
              ),
            ],
          ),
          // Text field for others
          TextField(
            controller: otherTextFieldController,
            decoration: InputDecoration(
              labelText: 'Enter other',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => secondPage()));
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  String _selection = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Page'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MechanismOfInjury()));
                  },
                  child: Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MechanismOfInjury extends StatefulWidget {
  const MechanismOfInjury({super.key});

  @override
  _MechanismOfInjuryState createState() => _MechanismOfInjuryState();
}

class _MechanismOfInjuryState extends State<MechanismOfInjury> {
  // Variables to store checkbox values
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

  // Controllers for text fields
  TextEditingController timeController = TextEditingController();
  TextEditingController vehicleInvolvedController = TextEditingController();
  TextEditingController crashedWithController = TextEditingController();

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
              title: Text('Pedistrain'),
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
              title: Text('SeatBelt'),
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
              title: Text('Restraint'),
              value: restraint,
              onChanged: (newValue) {
                setState(() {
                  restraint = newValue!;
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
            CheckboxListTile(
              title: Text('Fall From height'),
              value: fallFromHeight,
              onChanged: (newValue) {
                setState(() {
                  fallFromHeight = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Gun shot'),
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
              title: Text('Penetration'),
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
              title: Text('Drowing'),
              value: drowning,
              onChanged: (newValue) {
                setState(() {
                  drowning = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('extricated'),
              value: extricated,
              onChanged: (newValue) {
                setState(() {
                  extricated = newValue!;
                });
              },
            ),

            // Add more CheckboxListTile for other options

            SizedBox(height: 20.0),

            Text('Time:',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => AirwayPage()));
                  },
                  child: Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BreathingPage()));
                  },
                  child: Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BreathingPage extends StatefulWidget {
  const BreathingPage({super.key});

  @override
  _BreathingPageState createState() => _BreathingPageState();
}

class _BreathingPageState extends State<BreathingPage> {
  bool isLeft = false;
  bool isRight = false;
  bool isRibBinder = false;

  TextEditingController oxygenController = TextEditingController();
  TextEditingController chestNeedleTubeController = TextEditingController();

  String selection = '';

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
                value: 'No',
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
            CheckboxListTile(
              title: Text('Left'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isLeft,
              onChanged: (value) {
                setState(() {
                  isLeft = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Right'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isRight,
              onChanged: (value) {
                setState(() {
                  isRight = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Rib Binder'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isRibBinder,
              onChanged: (value) {
                setState(() {
                  isRibBinder = value!;
                });
              },
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CirculationPage()));
                  },
                  child: Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                  child: Text('Prev'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CirculationPage extends StatefulWidget {
  const CirculationPage({super.key});

  @override
  _CirculationPageState createState() => _CirculationPageState();
}

class _CirculationPageState extends State<CirculationPage> {
  bool isWarm = false;
  bool isPale = false;
  bool isCyanotic = false;
  bool isCool = false;
  bool lessThan2 = false;
  bool greaterThan2 = false;
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
                CheckboxListTile(
                  title: Text('>2:'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: greaterThan2,
                  onChanged: (value) {
                    setState(() {
                      greaterThan2 = value!;
                    });
                  },
                ),
              ]),
        ));
  }
}
