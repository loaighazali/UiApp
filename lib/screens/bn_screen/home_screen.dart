import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const Text(
                'Most Selling',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextButton(
                  onPressed: (){},
                  child:const Text(
                    'view All',
                  style: TextStyle(
                    color: Colors.black,
                  fontSize: 20,
                  ),
                  ),
              ),
            ],
          ),
        ),

        Container(
          height: 150,
          width: double.infinity,
          child: GridView.builder(
            padding:const EdgeInsetsDirectional.symmetric(horizontal: 20),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,

            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 100,
              mainAxisSpacing: 10,

            ),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                elevation: 10,
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Selling',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextButton(
                onPressed: (){},
                child:const Text(
                  'view All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 150,
          width: double.infinity,
          child: GridView.builder(
            padding:const EdgeInsetsDirectional.symmetric(horizontal: 20),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,

            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 100,
                mainAxisSpacing: 10,

            ),
           itemBuilder: (context, index) {
             return Card(
               color: Colors.white,
               elevation: 10,
             );
           },
          ),
        ),

        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
         return const ListTile(
            leading: Icon(Icons.person),
            title: Text('Loai'),
            subtitle: Text('0957956985'),
          );
        },)
      ],

      );
  }
}
