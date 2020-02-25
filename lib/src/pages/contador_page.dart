import 'package:flutter/material.dart';
import 'package:hello_world/src/styles/styles.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Stateful', style: Styles.titleText), centerTitle: true),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('Numero de clicks:', style: Styles.genericText),
            Text('$_conteo', style: Styles.genericText),
          ])),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox(width: 5)),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
      SizedBox(width: 5),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
    ]);
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _remove() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
