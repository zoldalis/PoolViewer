import 'package:flutter/material.dart';
import 'package:pool_viewer/PoolInfoManager.dart';
import 'Widgets/AccountInfoPage.dart';
import 'dart:io';

void main() {
  runApp(MyApp());

  //const String info = manager.getInfo();
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Pool viewer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pool viewer'),
        ),
        body:  Center(
          child: UpdateText()
        ),
      ),
    );
  }

}


class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}



class UpdateTextState extends State {

  final myController = TextEditingController();
  late String connection;
  late final String textHolder;
 late AccountInfoWidget accountInfo;

  checkConn()
  {
    try {
      InternetAddress.lookup('example.com').then((value) => (){
        setState(() {
          if (value.isNotEmpty && value[0].rawAddress.isNotEmpty) {
            connection = 'connected';
          }
        });
      });

    } on SocketException catch (_) {
      setState(() {
        connection = 'not connected';
      });
    }
  }




  changeText(String accountId)  {




    PoolInfoManager manager = new PoolInfoManager(accountId);
    if(accountId == textHolder)
    { setState(() {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => accountInfo),
    );}); }
    else{
      manager.fetchAccount().then((value) => setState(() {
      accountInfo = new AccountInfoWidget(value);
      textHolder = manager.id;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => accountInfo),
      );}));
    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Center(child: ListView(
            children: <Widget>[
              TextField(
                  controller: myController,
              ),

              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text('Current id: $textHolder',
                      style: TextStyle(fontSize: 22))),
              //  child: accountInfo),

              ElevatedButton(
                onPressed: () => changeText(myController.text),
                child: Text('Open account info'),

              ),

              ElevatedButton(
                onPressed: () => checkConn(),
                child: Text('Check connection'),

              ),

              Text('Connection: $connection'),

            ]))
    );
  }
}