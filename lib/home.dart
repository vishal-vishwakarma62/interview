import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview/Appcolor.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.yellow,
        title:ListTile(
          leading:  Image.asset('assets/men.png'),
          title: Text('Welcome to, Upthrust,'),
          subtitle: Text("Student Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notifications,size: 25,))
        ],


        leading: IconButton(onPressed: () {

        },
          icon: Icon(Icons.list_outlined),

        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 200,
            backgroundColor: Colors.yellow,
            title:ListTile(
              leading:  Image.asset('assets/men.png'),
              title: Text('Welcome to,'),
              subtitle: Text("Student Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            actions: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.notifications,size: 25,))
            ],


            leading: IconButton(onPressed: () {

            },
              icon: Icon(Icons.menu),

            ),
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/Banner.png'),
                ],
              ),
            ),
          ),
        )
      )
    );

  }
}
