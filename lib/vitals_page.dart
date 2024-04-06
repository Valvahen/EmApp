import 'package:flutter/material.dart';
class VitalsPage extends StatefulWidget {
  @override
  _VitalsPageState createState() => _VitalsPageState();
}

class _VitalsPageState extends State<VitalsPage> {
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, dynamic>> _vitalsData = [];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vitals'),
      ),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _timeController,
                      decoration: InputDecoration(labelText: 'Time'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a time';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _hrController,
                      decoration: InputDecoration(labelText: 'HR'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a heart rate';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _rrController,
                      decoration: InputDecoration(labelText: 'RR'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a respiratory rate';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _spo2Controller,
                      decoration: InputDecoration(labelText: 'SpO2'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a SpO2 value';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _bpController,
                      decoration: InputDecoration(labelText: 'BP'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a blood pressure';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _grbsController,
                      decoration: InputDecoration(labelText: 'GRBS'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a glucose value';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _gcsController,
                      decoration: InputDecoration(labelText: 'GCS'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a GCS value';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _tempController,
                      decoration: InputDecoration(labelText: 'Temp'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a temperature';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _injurySustained,
                      decoration:
                          InputDecoration(labelText: 'Injuries Sustained'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the injuries sustained';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _interventionPerformed,
                      decoration:
                          InputDecoration(labelText: 'Intervention Performed'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the intervention performed';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _requirements,
                      decoration: InputDecoration(labelText: 'Requirements'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a requirement';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _estimatedTimeOfArrival,
                      decoration: InputDecoration(
                          labelText: 'Estimated Time Of Arrival'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the estimated time of arrival';
                        }
                        return null;
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
                            if (_formKey.currentState!.validate()) {
                              _saveFormData();
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _vitalsData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Time: ${_vitalsData[index]['time']}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('HR: ${_vitalsData[index]['hr']}'),
                      Text('RR: ${_vitalsData[index]['rr']}'),
                      Text('SpO2: ${_vitalsData[index]['spo2']}'),
                      Text('BP: ${_vitalsData[index]['bp']}'),
                      Text('GRBS: ${_vitalsData[index]['grbs']}'),
                      Text('GCS: ${_vitalsData[index]['gcs']}'),
                      Text('Temp: ${_vitalsData[index]['temp']}'),
                      Text(
                          'Injuries Sustained: ${_vitalsData[index]['injurySustained']}'),
                      Text(
                          'Intervention Performed: ${_vitalsData[index]['interventionPerformed']}'),
                      Text(
                          'Requirements: ${_vitalsData[index]['requirements']}'),
                      Text(
                          'Estimated Time Of Arrival: ${_vitalsData[index]['EstimatedTimeOfArrival']}'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _saveFormData() {
    setState(() {
      _vitalsData.add({
        'time': _timeController.text,
        'hr': _hrController.text,
        'rr': _rrController.text,
        'spo2': _spo2Controller.text,
        'bp': _bpController.text,
        'grbs': _grbsController.text,
        'gcs': _gcsController.text,
        'temp': _tempController.text,
        'injurySustained': _injurySustained.text,
        'interventionPerformed': _interventionPerformed.text,
        'requirements': _requirements.text,
        'EstimatedTimeOfArrival': _estimatedTimeOfArrival.text,
      });
      // Clearing text controllers after saving data
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
    });
  }
}
