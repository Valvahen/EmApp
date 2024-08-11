import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List<Map<String, dynamic>> _detailsData = [];
  List<Map<String, dynamic>> _masCasData = [];
  List<Map<String, dynamic>> _mech_of_injData = [];
  List<Map<String, dynamic>> _airwayData = [];
  List<Map<String, dynamic>> _preventionData = [];
  List<Map<String, dynamic>> _breathingData = [];
  List<Map<String, dynamic>> _circulationData = [];
  List<Map<String, dynamic>> _disabilityData = [];
  List<Map<String, dynamic>> _sampleData = [];
  List<Map<String, dynamic>> _vitalsData = [];
  List<Map<String, dynamic>> _injuriesData = [];
  List<Map<String, dynamic>> _interventionData = [];
  List<Map<String, dynamic>> _requirementsData = [];
  List<Map<String, dynamic>> _timeofarrData = [];

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

  Future<void> _getMassCasData() async {
    final response = await Supabase.instance.client
        .rpc('view_quantity', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _masCasData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getMechOfInjData() async {
    final response = await Supabase.instance.client
        .rpc('view_mechanism', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _mech_of_injData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getAirwayData() async {
    final response = await Supabase.instance.client
        .rpc('view_airway', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _airwayData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getPreventionData() async {
    final response = await Supabase.instance.client
        .rpc('view_prevention', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _preventionData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getCirculationData() async {
    final response = await Supabase.instance.client
        .rpc('view_circulation', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _circulationData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getDisabilityData() async {
    final response = await Supabase.instance.client
        .rpc('view_disability', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _disabilityData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getSampleData() async {
    final response = await Supabase.instance.client
        .rpc('view_sample', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _sampleData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getVitalsData() async {
    final response = await Supabase.instance.client
        .rpc('view_vitals', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _vitalsData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getInjuriesData() async {
    final response = await Supabase.instance.client
        .rpc('view_injuries', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _injuriesData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getInterventionData() async {
    final response = await Supabase.instance.client.rpc('view_intervention',
        params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _interventionData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getRequirementsData() async {
    final response = await Supabase.instance.client.rpc('view_requirements',
        params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _requirementsData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  Future<void> _getTimeofarrData() async {
    final response = await Supabase.instance.client
        .rpc('view_timeofarr', params: {'id': int.parse(_idController.text)});

    if (response is List) {
      setState(() {
        _timeofarrData = List<Map<String, dynamic>>.from(response);
      });
    } else {
      print('Error: $response');
    }
  }

  @override
  void initState() {
    super.initState();
    _getDetailsData();
    _getMassCasData();
    _getMechOfInjData();
    _getAirwayData();
    _getPreventionData();
    _getBreathingData();
    _getCirculationData();
    _getDisabilityData();
    _getSampleData();
    _getVitalsData();
    _getInjuriesData();
    _getInterventionData();
    _getRequirementsData();
    _getTimeofarrData();
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
                  _getDetailsData();
                  _getMassCasData();
                  _getMechOfInjData();
                  _getAirwayData();
                  _getPreventionData();
                  _getBreathingData();
                  _getCirculationData();
                  _getDisabilityData();
                  _getSampleData();
                  _getVitalsData();
                  _getInjuriesData();
                  _getInterventionData();
                  _getRequirementsData();
                  _getTimeofarrData();
                },
                child: Text('Get Data'),
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Back to Login Page')),
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
              SizedBox(height: 10),
              for (final rowData in _masCasData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Single: ${rowData['single']}'),
                        Text('multiple: ${rowData['multiple']}'),
                        Text('NA: ${rowData['na']}'),
                        Text('Dead On arrival: ${rowData['doa']}'),
                        Text('Mass: ${rowData['mass']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _mech_of_injData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Road Traffic Accident: ${rowData['rta']}'),
                        Text('Driver: ${rowData['driver']}'),
                        Text('Passenger: ${rowData['passenger']}'),
                        Text('Pedestrian: ${rowData['pedestrian']}'),
                        Text('Airbag: ${rowData['airbag']}'),
                        Text('Seatbelt: ${rowData['seatbelt']}'),
                        Text('Other Vehicle: ${rowData['othervehi']}'),
                        Text('Helmet: ${rowData['helmet']}'),
                        Text('Fall: ${rowData['fall']}'),
                        Text('Gun: ${rowData['gun']}'),
                        Text('Animal: ${rowData['animal']}'),
                        Text('Stab: ${rowData['stab']}'),
                        Text('Blunt: ${rowData['blunt']}'),
                        Text('Assualt: ${rowData['assault']}'),
                        Text('Crushed: ${rowData['crushed']}'),
                        Text('Penetration: ${rowData['penetration']}'),
                        Text('Degloved: ${rowData['degloved']}'),
                        Text('Explosion: ${rowData['explosion']}'),
                        Text('Burns: ${rowData['burns']}'),
                        Text('Drowning: ${rowData['drowning']}'),
                        Text('Extricated: ${rowData['extricated']}'),
                        Text('Ejected: ${rowData['ejected']}'),
                        Text('Vehicle Involved: ${rowData['vehi_invol']}'),
                        Text('Crashed With: ${rowData['crash_with']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _airwayData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Patent: ${rowData['patent']}'),
                        Text('Threatened: ${rowData['threatened']}'),
                        Text('Obstructed: ${rowData['obstructed']}'),
                        Text('Object: ${rowData['object']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _preventionData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Head Tilt: ${rowData['head_tilt']}'),
                        Text('Jaw: ${rowData['jaw']}'),
                        Text('Collar: ${rowData['collar']}'),
                        Text('Suctioning: ${rowData['suctioning']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _circulationData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Warmskin: ${rowData['warmskin']}'),
                        Text('Paleskin: ${rowData['paleskin']}'),
                        Text('Cyanotic: ${rowData['cyanotic']}'),
                        Text('Cool: ${rowData['cool']}'),
                        Text('CRT: ${rowData['crt']}'),
                        Text('Weak: ${rowData['weak']}'),
                        Text('Thready: ${rowData['thready']}'),
                        Text('Bounding: ${rowData['bounding']}'),
                        Text('JVD: ${rowData['jvd']}'),
                        Text('Bleeding condition: ${rowData['bleedcont']}'),
                        Text('IV: ${rowData['iv']}'),
                        Text('IO: ${rowData['io']}'),
                        Text('IVF: ${rowData['ivf']}'),
                        Text('NS: ${rowData['ns']}'),
                        Text('RL: ${rowData['rl']}'),
                        Text('Pelvic Binder: ${rowData['pelvicbinder']}'),
                        Text('Tourniquet: ${rowData['tourniquet']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _disabilityData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('A: ${rowData['a']}'),
                        Text('V: ${rowData['v']}'),
                        Text('P: ${rowData['p']}'),
                        Text('U: ${rowData['u']}'),
                        Text('Pupils: ${rowData['pupils']}'),
                        Text('Exposed: ${rowData['exposed']}'),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10),
              for (final rowData in _sampleData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('S: ${rowData['s']}'),
			Text('A: ${rowData['a']}'),
                        Text('M: ${rowData['m']}'),
			Text('P: ${rowData['p']}'),
                        Text('L: ${rowData['l']}'),
			Text('E: ${rowData['e']}'),
                      ],
                    ),
                  ),
                ), 

             SizedBox(height: 10),
              for (final rowData in _vitalsData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                              Text('ID: ${rowData['i_id']}'),
                              Text('Time: ${rowData['time']}'),
                              Text('HR: ${rowData['hr']}'),
                              Text('RR: ${rowData['rr']}'),
                              Text('SPO2: ${rowData['spo2']}'),
                              Text('BP: ${rowData['bp']}'),
                              Text('GRBS: ${rowData['grbs']}'),
                              Text('GCS: ${rowData['gcs']}'),
                              Text('Temperature: ${rowData['temp']}'),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 10),
              for (final rowData in _injuriesData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Injuries: ${rowData['injury']}'),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 10),
              for (final rowData in _interventionData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Interventions done: ${rowData['intervention']}'),
                      ],
                    ),
                  ),
                ),


              SizedBox(height: 10),
              for (final rowData in _requirementsData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Requirements: ${rowData['requirements']}'),
                      ],
                    ),
                  ),
                ),



              SizedBox(height: 10),
              for (final rowData in _timeofarrData)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${rowData['i_id']}'),
                        Text('Time of Arrival: ${rowData['timeofarrival']}'),
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
