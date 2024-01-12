import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SecondDialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Utilities'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('My notes'),
              subtitle: Text('On that day i was...'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete  ',
                  middleText: 'This is my message',
                  titlePadding: EdgeInsets.only(top: 20),
                );
                // Move the second ListTile outside the first dialog
                // Now, it will be displayed after the first dialog
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the SecondDialog screen
              Get.to(() => SecondDialog());
            },
            child: Text('GetX Navigation'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Hi',
          "I'm Arfa",
          backgroundColor: Colors.purpleAccent,
          snackPosition: SnackPosition.BOTTOM,
          icon: Icon(Icons.add),
        );
      }),
    );
  }
}


