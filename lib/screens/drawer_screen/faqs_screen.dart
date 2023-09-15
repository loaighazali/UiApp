import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'faqs_tab/general_tab.dart';
import 'faqs_tab/usage_tab.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen>with SingleTickerProviderStateMixin{

  late TabController _tabBarController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabBarController = TabController(length: 10 , vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title:const Text('Faqs' ,
            style:TextStyle(
                color: Colors.white
            )
        ),
        centerTitle: true,

        bottom: TabBar(
          controller: _tabBarController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorSize: TabBarIndicatorSize.tab ,
          labelColor: Colors.white,
          indicatorColor: Colors.red,
          indicatorWeight: 3,
          labelStyle:const TextStyle(
            fontSize: 20,
          ),
          labelPadding:const EdgeInsetsDirectional.symmetric(vertical: 10 , horizontal: 10),
          tabs:const [
            Text('General'),
            Text('Usage'),
            Text('General'),
            Text('Usage'),
            Text('General'),
            Text('Usage'),
            Text('General'),
            Text('Usage'),
            Text('General'),
            Text('Usage'),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabBarController,
        children:const [
          GeneralTab(),
          UsageTab(),
          GeneralTab(),
          UsageTab(),
          GeneralTab(),
          UsageTab(),
          GeneralTab(),
          UsageTab(),
          GeneralTab(),
          UsageTab(),

        ],
      ),
    );
  }
}
