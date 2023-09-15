import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
    return const  ListTile(
        leading: Icon(Icons.person),
        title: Text('Loai'),
        subtitle: Text('+972597138252'),
        trailing: Icon(Icons.add),
      );
    }, separatorBuilder: (context, index) {
     return const Divider(
     color: Colors.red,
     indent: 20,
     endIndent: 20,
     );
    }, itemCount: 10);
  }
}
