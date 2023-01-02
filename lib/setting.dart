import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/settings_controllerr.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    final settingController = Provider.of<SettingController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  settingController.increment();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 60.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.green,

                ),
              ),
              ElevatedButton(
                onPressed: () {
                  settingController.deccrement();
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 60.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.red,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
