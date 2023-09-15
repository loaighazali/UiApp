import 'package:example/screens/drawer_screen/faqs_tab/general_tab.dart';
import 'package:example/screens/drawer_screen/faqs_tab/usage_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen>  with SingleTickerProviderStateMixin{

  late TabController _tabController ;
  int _selectIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme:const  IconThemeData(color: Colors.white,),
        title:const Text('Info',
        style:TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: ListView(
        //shrinkWrap: true,
        padding: EdgeInsetsDirectional.all(20),
        children: [
          const CircleAvatar(radius: 60,),

          TabBar(
            controller: _tabController,
              labelStyle:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              labelColor: Colors.black,
              labelPadding:const EdgeInsetsDirectional.symmetric(vertical: 10),
              indicatorSize: TabBarIndicatorSize.tab ,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              onTap: (value) {
                setState(() {
                  _selectIndex = value ;
                });
              },
              tabs:const [
                Text('App'),
                Text('Company'),
              ],
          ),

          IndexedStack(
            index: _selectIndex,
              children:[
                GeneralTab(),
                UsageTab(),
              ]
          ),
        ],
      ),
    );
  }
}
