import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List<Map<String, dynamic>> _breathingData = [];
  List<Map<String, dynamic>> _detailsData = [];

  TextEditingController _idController = TextEditingController();

  Future<void> _getBreathingData() async {
    final response = await Supabase.instance.client
        .rpc('view_breathing', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _breathingData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getDetailsData() async {
    final response = await Supabase.instance.client
        .rpc('view_info', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _detailsData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  @override
  void initState() {
    super.initState();
    _getBreathingData();
    _getDetailsData();
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data list'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _idController,
                  decoration: InputDecoration(
                    labelText: 'Enter ID',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _getBreathingData();
                  _getDetailsData();
                },
                child: Text('Get Data'),
              ),
              SizedBox(height: 10),
              for (final rowData in _breathingData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Spontaneous: ${rowData['spontaneous']}'),
                        Text('Breath L: ${rowData['breath_l']}'),
                        Text('Breath R: ${rowData['breath_r']}'),
                        Text('Rib Binder: ${rowData['rib_binder']}'),
                        Text('Oxygen: ${rowData['oxygen']}'),
                        Text('Tube: ${rowData['tube']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _detailsData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Day: ${rowData['day']}'),
                        Text('Home: ${rowData['home']}'),
                        Text('health facility: ${rowData['health_facility']}'),
                        Text('Public place: ${rowData['public_place']}'),
                        Text('street: ${rowData['street']}'),
                        Text('Others: ${rowData['others']}'),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
