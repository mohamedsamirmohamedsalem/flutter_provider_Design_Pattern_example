import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) {
        return Data();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: MyText(),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              level1(),
            ],
          ),
        ),
      ),
    );
  }
}

class level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return level2();
  }
}

class level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[MyTetxField(), level3()],
    );
  }
}

class level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      //listener to provider design pattern
      Provider.of<Data>(context).myText,
      style: TextStyle(fontSize: 40.0),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('needs data');
  }
}

class MyTetxField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}

class Data extends ChangeNotifier {
  String myText = 'some Data';
}
