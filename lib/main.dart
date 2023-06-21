import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dailer App',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ['Naresh Dhimal', "Nitesh Sharma", 'Mukash'];
  var phoneNumber = ['98923', '1231200', '1233'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Dailer App'),
        backgroundColor: Color(0xFFE21717),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            leading: Icon(Icons.supervised_user_circle),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                launchUrlString('tel: //${phoneNumber[index]}');

                // launch('https://flutter.dev');2
              },
            ),
          );
        },
      ),
    );
  }
}
