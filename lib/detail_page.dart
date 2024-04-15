import 'package:flutter/material.dart';
import 'package:myapp/mass_cas.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  Set<String> selectedCheckboxes = {"Home"};
  TextEditingController otherTextFieldController = TextEditingController();
  TextEditingController timeFieldController = TextEditingController();

  void _submitDataToSupabase() async {
    // Get the text entered in the text field
    String otherText = otherTextFieldController.text.trim(); // Trim whitespace
    String time = timeFieldController.text.trim(); // Trim whitespace

    // Check if each checkbox is checked and set the corresponding value
    bool isHomeSelected = selectedCheckboxes.contains('Home');
    bool isHealthFacilitySelected =
        selectedCheckboxes.contains('Health Care facility');
    bool isPublicBuildingSelected =
        selectedCheckboxes.contains('Public building');
    bool isStreetSelected = selectedCheckboxes.contains('Street/highway');

    // Log the length of the day value
    print('Length of day value: ${time.length}');

    // Insert the data into the 'i_info' table
    await Supabase.instance.client.from('i_info').insert([
      {
        'day': time,
        'home': isHomeSelected ? 'yes' : 'no',
        'health_facility': isHealthFacilitySelected ? 'yes' : 'no',
        'public_place': isPublicBuildingSelected ? 'yes' : 'no',
        'street': isStreetSelected ? 'yes' : 'no',
        'others': otherText.isNotEmpty
            ? otherText
            : 'N/A', // Use 'N/A' if otherText is empty
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Time text field
          TextField(
            controller: timeFieldController,
            decoration: InputDecoration(
              labelText: 'Enter time',
            ),
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
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => massCasualtyPage()));
                _submitDataToSupabase();
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}
