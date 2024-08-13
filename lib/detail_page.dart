import 'package:flutter/material.dart';
import 'package:myapp/mass_cas.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DetailsPage extends StatefulWidget {
  final String username;
  final String password;
  const DetailsPage({
    super.key,
    required this.username,
    required this.password,
  });
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  //TimeOfDay selectedTime = TimeOfDay.now();
  Set<String> selectedCheckboxes = {"Home"};
  TextEditingController otherTextFieldController = TextEditingController();
  //TextEditingController timeFieldController = TextEditingController();
  bool isHomeSelected = false;
  bool isHealthFacilitySelected = false;
  bool isPublicBuildingSelected = false;
  bool isStreetSelected = false;
  //String otherText = "";
  void _submitDataToSupabase() async {
    // Get the text entered in the text field
    // Trim whitespace
    // Trim whitespace

    // Check if each checkbox is checked and set the corresponding value
    // bool isHomeSelected = selectedCheckboxes.contains('Home');
    // bool isHealthFacilitySelected =
    //     selectedCheckboxes.contains('Health Care facility');
    // bool isPublicBuildingSelected =
    //     selectedCheckboxes.contains('Public building');
    // bool isStreetSelected = selectedCheckboxes.contains('Street/highway');

    // Log the length of the day value

    // Insert the data into the 'i_info' table
    await Supabase.instance.client.from('i_info').insert([
      {
        'home': isHomeSelected ? 'yes' : 'no',
        'health_facility': isHealthFacilitySelected ? 'yes' : 'no',
        'public_place': isPublicBuildingSelected ? 'yes' : 'no',
        'street': isStreetSelected ? 'yes' : 'no',
        'others': otherTextFieldController.text.isNotEmpty
            ? otherTextFieldController.text
            : 'N/A',
      }
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incident Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Time text field
          // Checkboxes
          Column(
            children: [
              CheckboxListTile(
                title: Text('Home'),
                value: isHomeSelected,
                onChanged: (newValue) {
                  setState(() {
                    isHomeSelected = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Health Care facility'),
                value: isHealthFacilitySelected,
                onChanged: (newValue) {
                  setState(() {
                    isHealthFacilitySelected = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Public building'),
                value: isPublicBuildingSelected,
                onChanged: (newValue) {
                  setState(() {
                    isPublicBuildingSelected = newValue!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Street/highway'),
                value: isStreetSelected,
                onChanged: (newValue) {
                  setState(() {
                    isStreetSelected = newValue!;
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
                        builder: (context) => massCasualtyPage(
                            username: widget.username,
                            password: widget.password,
                            home: isHomeSelected ? 'yes' : 'no',
                            health_facility:
                                isHealthFacilitySelected ? 'yes' : 'no',
                            public_place:
                                isPublicBuildingSelected ? 'yes' : 'no',
                            street: isStreetSelected ? 'yes' : 'no',
                            others: otherTextFieldController.text.isNotEmpty? otherTextFieldController.text: 'N/A')));
                //_submitDataToSupabase();
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}
