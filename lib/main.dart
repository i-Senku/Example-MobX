import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mobx/store/test_store.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TestStore store = TestStore();

  @override
  void initState() {
    super.initState();
    store.setup();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Mobx Test'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(builder:(_) => Text('Mesaj : ${store.mesaj}',style: TextStyle(fontWeight: FontWeight.bold),)),
          SizedBox(height: 30,),
          Center(child: Observer(builder:(_) => Text(store.sayi.toString(),style: TextStyle(fontSize: 36),))),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: store.arttir,child: Text('Arttır'),color: Colors.green,),
              SizedBox(width: 16,),
              RaisedButton(onPressed: store.azalt,child: Text('Azalt'),color: Colors.red,),
            ],
          )
        ],
      ),
    ));
  }
}
