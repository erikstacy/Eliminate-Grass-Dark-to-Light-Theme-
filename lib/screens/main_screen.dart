import 'package:eliminate_grass_project/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {

  static String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool isDark;

  @override
  void initState() {
    super.initState();

    isDark = false;
  }

  @override
  Widget build(BuildContext context) {

    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Eliminate Grass Project'),
        centerTitle: true,
        actions: <Widget>[
          Switch(
            value: isDark,
            onChanged: (value) {
              setState(() {
                isDark = value;
              });
              _themeChanger.setTheme(value);
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/ALL.png'),
          ),
          SizedBox(height: 20,),
          Text(
            'Why we want grass gone for GOOD',
            style: Theme.of(context).textTheme.headline,
          ),
          SizedBox(height: 5,),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Anti-Grass Gang',
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Bruh, listen up. What has grass really done for you in this life time? Like, did grass give you a gift this morning? Did grass even bother to say good morning?! NO! Why not, you may now be wondering. I\'m here to tell you that the simple fact is that grass is evil. Grass was made by an evil person in an evil lair with evil intentions. Grass is here trying to take over the world. I mean, have you ever wondered why there\'s so much grass? That is just one part of the evil plan. It may not be our fight, but our grandchildren\'s grandchildren will be on the front lines duking it out with those green blades of rage.',
              style: Theme.of(context).textTheme.body1,
            ),
          ),
        ],
      ),
    );
  }
}