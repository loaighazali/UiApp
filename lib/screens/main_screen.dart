import 'package:example/screens/bn_screen/artical_screen.dart';
import 'package:example/screens/bn_screen/favorite_screen.dart';
import 'package:example/screens/bn_screen/home_screen.dart';
import 'package:example/screens/bn_screen/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modale/bn_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

   int _current = 0 ;

   List<BnScreen> bnScreen = <BnScreen>[
     BnScreen('Home', HomeScreen()),
     BnScreen('Favorite', FavoriteScreen()),
     BnScreen('Artical', ArticalScreen()),
     BnScreen('Setting', SettingScreen()),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        elevation: 10,
        title: Text(
          bnScreen[_current].text,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.cyan.shade900,
                    Colors.cyan.shade300,
                  ],
                ),
              ),
                accountName: Text('Loai'),
                accountEmail: Text('lo59713828@gmail.com'),
              currentAccountPicture: CircleAvatar(),
              otherAccountsPictures: [
                CircleAvatar(),
                CircleAvatar(),
                CircleAvatar(),
              ],
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/info_screen');
                //Navigator.pop(context);
              },
              leading: Icon(Icons.error_outline),
                title: Text('info'),
              subtitle: Text('Info about app'),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/faqs_screen');
              },
              leading: Icon(Icons.question_answer_outlined),
              title: Text('FAQs'),
              subtitle: Text('Frequnetly asked qustions'),
            ),

            const Divider(
              indent: 10,
              endIndent: 10,
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration(seconds: 1) , () {
                  Navigator.pushNamedAndRemoveUntil(context, '/login_screen', (route) => false);
                }, );
              },
              leading: Icon(Icons.error_outline),
              title: Text('Logout'),
              subtitle: Text('Waiting your return'),
            ),


          ],
        ),
      ),

      body: bnScreen[_current].widget,

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
       // selectedLabelStyle: TextStyle(color: Colors.blue),
       // unselectedLabelStyle: TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.shifting,
        selectedItemColor:Colors.blue ,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 16,
        unselectedFontSize: 14,


        onTap: (value) {
          setState(() {
            _current = value ;
          });
        },

        currentIndex: _current,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'String',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article),
            label: 'Artical',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
