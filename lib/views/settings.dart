import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "News",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "Tak",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 0, 0),
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: SwitchListTile(
          //     title: const Text('Change Theme'),
          //     value: _lights,
          //     onChanged: (bool value) {
          //       setState(() {
          //         _lights = value;
          //       });
          //     },
          //     secondary: const Icon(Icons.nightlight_round),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
