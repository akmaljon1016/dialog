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
                  return Dialog(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 300),
                            child: TextField(
                              maxLines: null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Email"),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "parol"),
                          ),
                          SizedBox(height: 10,),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
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