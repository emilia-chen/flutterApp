import 'package:flutter/material.dart';
import './page1.dart';
class MyAppBar extends StatelessWidget {
  const MyAppBar({this.title});

  // Widget子类中的字段往往都会定义为"final"

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 80.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        //列表项的类型是 <Widget>
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu11',
            onPressed: null, // null 会禁用 button
          ),
          // Expanded expands its child to fill the available space.
          new Expanded(
            child: title,
          ),
         new RaisedButton(
                  onPressed: () {
                    //arguments:{"title":"命名路由传值"}
 Navigator.pushNamed(context, '/page1',arguments:{"title":"命名路由传值"});

                    },
                  //按下事件处理
                  color: Colors.green,
                  //按钮的颜色
                  child: Text("按钮"),
                  splashColor: Colors.blue,//点击时水波纹的颜色
                  highlightColor: Colors.deepOrange,//长按按钮的颜色
                  elevation: 10,
                  //阴影
                  textColor: Colors.white, //文字的颜色
                ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return new Material(
      // Column is 垂直方向的线性布局.
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example title1',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),


// Container(
//         margin: EdgeInsets.only(top: 100.0, left: 80.0), //容器外填充
//       //  width: 200.0,
//       //  height: 150.0,//容器大小
// //        constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //容器大小
//         decoration: BoxDecoration(//背景装饰
//             gradient: RadialGradient( //背景径向渐变
//                 colors: [Colors.red, Colors.green],
//                 center: Alignment.center,
//                 radius:0.7
//             ),
//         ),
//        // transform: Matrix4.rotationZ(0.2), //容器倾斜变换
//         alignment: Alignment.center, //容器内文字居中
//         child: Text( //卡片文字
//           "1314", style: TextStyle(color: Colors.white, fontSize: 40.0),
//         ),
 
//       ),
//      Padding(
//         padding: EdgeInsets.only(top:0),
//         child: Text('上面20',style: TextStyle(
//         color: Colors.red,fontSize: 20
//                      ),),
//                  ),


// SimpleDialog(
//               title: Text('对话框'),
//             children: <Widget>[
//                SimpleDialogOption(
//                   onPressed: (){},
//                   child: Text('A'),
//                ),
//               SimpleDialogOption(
//                 onPressed: (){},
//                 child: Text('B'),
//               ),
//             ],
//           ),
  // new Expanded(
  //         //	flex:0.6,
  //           child: new Center(
  //             child: new Text('1Hello, world!1'),
  //           ),
  //         ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  final routes = {
    '/page1': (context,{arguments}) => Page1(arguments: arguments),
  };


  @override
  Widget build(BuildContext context) {
   return  new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new MyScaffold(),
      //  routes: {
      //   '/page1': (context,{arguments}) => Page1(arguments: arguments),
      // },
       onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        print(name);
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
      },
  );

  }

}



