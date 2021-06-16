import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
 final arguments;
  Page1({this.arguments});

  @override
  Widget build(BuildContext context) {
    //print(this);
    return Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转到Page2${arguments}"),
          onPressed: () {
          //路由跳转
          //   Navigator.pushNamed(context, '/page2');

          Navigator.pop(context, "我是返回值");
          },
        ),
      ),
    );
  }
}
