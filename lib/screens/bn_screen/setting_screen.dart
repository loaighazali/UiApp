import 'package:example/modale/chech_box.dart';
import 'package:example/modale/droo-menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool _switchValue = false;
  String? _radioValue ;
  int?   _selectedAddress ;

  late TextEditingController _textEditingController ;

  List<String> tags = <String>[];

  List<CheckBoxs> c  = <CheckBoxs>[
    CheckBoxs(title: 'Home', supTitle: '123-1455',),
    CheckBoxs(title: 'Work', supTitle: '123-9427',),
    CheckBoxs(title: 'Work2', supTitle: '123-7548', ),
  ];


  List<DropMenu> _Adsress = <DropMenu>[
    DropMenu(id: 1 , address:  'Gaza'),
    DropMenu(id: 2 , address:  'Rafah'),
    DropMenu(id: 3 , address:  'Khanyons'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.all(20),
      children: [
        SwitchListTile(
          title:const Text(
            'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
          ),
            subtitle:const Text(
              'Enable/Disable Notification',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            value: _switchValue,
            onChanged: (value) {
                setState(() {
                  _switchValue = value ;
                });
            },
        ),

       const SizedBox(height: 20,),

       const Text(
            'Gender',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        RadioListTile(
          title: Text('MAle'),
            value: 'M',
            groupValue: _radioValue,
            onChanged: (value) {
              if(value != null){
                setState(() {
                  _radioValue = value;
                });
              }
            },
        ),

        RadioListTile(
          title: Text('Female'),
          value: 'F',
          groupValue: _radioValue,
          onChanged: (value) {
            if(value != null){
              setState(() {
                _radioValue = value;
              });
            }
          },
        ),

        const SizedBox(height: 20,),

        const Text(
          'Mobiles',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        //معناها لوف على كل الليست
        for(CheckBoxs s in c)
        CheckboxListTile(
            value: s.selected,
            onChanged: (value) {
                if(value != null){
                  setState(() {
                    s.selected = value ;
                  });
                }
            },
          title: Text(s.title),
          subtitle: Text(s.supTitle) ,
        ),

        const SizedBox(height: 20,),

        const Text(
          'Address',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        DropdownButton(
          isExpanded: true,
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            elevation: 10,
            hint: Text('Enter Address'),
            items:
              _Adsress.map((e) {
                return DropdownMenuItem(child: Text(e.address) ,value: e.id, );
              }
              ).toList(),

            onChanged: (value) {
              if(value != null){
                setState(() {
                  _selectedAddress = value ;
                });
              }
            },
            onTap: () {

            },

            value: _selectedAddress,
        ),

        TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.save),
              onPressed: (){
                setState(() {
                  tags.add(_textEditingController.text);
                  _textEditingController.text = '';
                });
              },
            ),
          ),
        ),

        Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: tags.map((e) => Chip(
            backgroundColor: Colors.white,
              label: Text(e,
              style: TextStyle(color: Colors.black),),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15),
               side: BorderSide(
                 width: 2,
                 color: Colors.blue,
               )
             ),
             deleteIcon: Icon(Icons.clear , color: Colors.red,),
            avatar: Icon(Icons.tag, color: Colors.blue),
            deleteIconColor: Colors.black,
            onDeleted: () {
              setState(() {
                tags.remove(e);
              });
            },
          )).toList(),
        ),

      ],
    );
  }
}
