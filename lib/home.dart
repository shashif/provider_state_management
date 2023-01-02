import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/about.dart';
import 'package:provider_state_management/setting.dart';
import 'package:provider_state_management/settings_controllerr.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) {
                  return Setting();
                });
                Navigator.push(context, route);
              },
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) {
                  return About();
                });
                Navigator.push(context, route);
              },
              title: Text('About'),
              trailing: Icon(Icons.info),
            ),
          ],
        ),
      ),
      body: Container(
        child: Consumer<SettingController>(
          builder: (context, settingController, child) {
            print(settingController.sizeCounter.toDouble());
            return Text(
              """There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.""",
              style: TextStyle(
                fontSize: settingController.sizeCounter.toDouble()==0.0 ? 20 : settingController.sizeCounter.toDouble() ,
              ),
            );
          },
        ),
      ),
    );
  }
}
