import 'package:flutter/material.dart';
import 'package:myapp/disablity_page.dart';
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
  bool isWeak = false;
  bool isThready = false;
  bool isBounding = false;
  bool isJvd = false;
  bool isControlled = false;
  bool isIv = false;
  bool isIo = false;
  bool isNs = false;
  bool isRl = false;
  bool isPelvicBinderPlaced = false;
  bool isTourniquetApplied = false;

  TextEditingController ivf = TextEditingController();
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
            CheckboxListTile(
              title: Text('JVD:'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isJvd,
              onChanged: (value) {
                setState(() {
                  isJvd = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Bleeding controlled'),
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
              'Acess:',
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
            TextField(
              controller: ivf,
              decoration: InputDecoration(
                hintText: 'Enter text',
              ),
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
            CheckboxListTile(
              title: Text('Pelvic Binder placed'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPelvicBinderPlaced,
              onChanged: (value) {
                setState(() {
                  isPelvicBinderPlaced = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Torniquet applied'),
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
                            builder: (context) => DisabilityPage()));
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
