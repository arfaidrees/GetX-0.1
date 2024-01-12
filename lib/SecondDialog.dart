import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondDialog extends StatefulWidget {
  const SecondDialog({super.key});

  @override
  State<SecondDialog> createState() => _SecondDialogState();
}

class _SecondDialogState extends State<SecondDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Dialog box'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Dialog Alert'),
              subtitle: Text('I used getX for this'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete chat  ',
                  middleText: 'Are you sure you want to delete that chat?',
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  contentPadding: EdgeInsets.all(20),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text ('GetX Theme'),
              subtitle: Text('I used getX for this'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.pinkAccent,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },  // Add a comma here
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },  // Add a
                        ),

                        // Remove the extra closing parenthesis

                      ],
                    ),
                  ),
                );
              },
            ),

          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('GetX Back'),
          ),
        ],

      ),

    );
  }
}
