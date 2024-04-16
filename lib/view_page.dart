import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List<Map<String, dynamic>> _breathingData = [];

  Future<void> _getBreathingData() async {
    final response = await Supabase.instance.client.rpc('view_breathing');

    if (response is List) {
      setState(() {
        _breathingData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  @override
  void initState() {
    super.initState();
    _getBreathingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breathing Data'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: _getBreathingData,
                child: Text('Refresh Data'),
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
            ],
          ),
        ),
      ),
    );
  }
}
