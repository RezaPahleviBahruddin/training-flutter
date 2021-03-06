import 'package:flutter/material.dart';
import 'package:tes12345/telepon.dart';

Telepon tempData = new Telepon();

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage(title: 'Hello World'),
    );
  }
}

class HelloPage extends StatefulWidget {
  HelloPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HelloPage createState() => _HelloPage();
}

class _HelloPage extends State<HelloPage> {
  List<Telepon> _telepon = <Telepon>[];
  // List<String> _dinamis = <String>[];
  
  @override
  void initState() {
    // _dinamis[0] = "nandi";
    _looping();
    // TODO: implement initState
    super.initState();
  }

  void _looping() {
    for (var i = 0; i < 10; i++) {
      tempData.setNama("Nama Tes");
      tempData.setNomor("0888888");
      _telepon.add(tempData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _telepon.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(_telepon[i].getNama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_telepon[i].getNomor, textAlign: TextAlign.left,),
                Text("alamat", textAlign: TextAlign.right,),
              ],
            ),
          );
        },
      ),
    );
  }
}
