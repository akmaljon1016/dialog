import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Programmadan chiqish"),
                    content: Text(
                        "Siz rostan ham ushbu programmadan chiqishni xohlaysizmi?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yo'q")),
                      TextButton(onPressed: () {
                        SystemNavigator.pop();
                      }, child: Text("Ha"))
                    ],
                  );
                });
          },
          child: Text("Show"),
          color: Colors.purple,
        ),
      ),
    );
  }
}