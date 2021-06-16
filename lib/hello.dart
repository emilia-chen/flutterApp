
import 'dart:convert';

//import 'a.dart';
import 'package:myapp/a.dart';
void main() async{
  print(oo);
	//print('hell dart');


  // var str="你好 dart,我是var";
  // print(str);
  // String str1=""" 
  // this str
  // this str1234
  // """;
  // print(str1);
  //  String str2="this is str2";
  // String str3="this is str3";
  // String str4="$str2 $str3";
  // String str5=str2+" "+str3;
  // print(str4);
  dynamic name = '李四';
  print(name);
   //测试 数字类型的初始值是什么?
  int lineCount;
  // 为false的时候抛出异常
  //assert(lineCount == null);
  print(lineCount); //打印结果为null，证明数字类型初始化值是null
 final String outSideFinalName = "Alex";
 // outSideFinalName', a final variable, can only be set once
 // 一个final变量，只能被设置一次。
 //outSideFinalName = "Bill";
 var varList =  []; // varList 当前是一个EIL

varList = ["haha"];


const a=1.1;
const b=2;

 print(a*b);
 // double -> String 注意括号中要有小数点位数，否则报错
 String piAsString = 3.14559.toStringAsFixed(2);
 // 截取两位小数, 输出3.14
 print(piAsString);



 //var  singleString = undefined;
 // String doubleString = "abcsdfafd";
 
 // String sdString = '$singleString a "bcsd" ${singleString}';
 // print(sdString);
 // print(dsString);
 //创建一个int类型的list
 List list = [10, 7, 23];
 // 输出[10, 7, 23]
 print(list);
 
 // 使用List的构造函数，也可以添加int参数，表示List固定长度，不能进行添加 删除操作
 var fruits = new List();
 
 // 添加元素
 fruits.add('apples');
 
 // 添加多个元素
 fruits.addAll(['oranges', 'bananas']);
 
 List subFruits = ['apples', 'oranges', 'banans'];
 // 添加多个元素
 fruits.addAll(subFruits);

print(fruits);
 // 获取第一个元素
 print(fruits.first);
  // 删除指定位置的元素，返回删除的元素
 print(fruits.removeAt(0));

print(fruits);


 Map schoolsMap = new Map();
 schoolsMap['first'] = '清华';
 schoolsMap['second'] = '北大';
 schoolsMap['third'] = '复旦';
 // 打印结果 {first: 清华, second: 北大, third: 复旦}
 print(schoolsMap);

//Object a= {first:"清华", second:"北大", third:"复旦"}
 //print(a;
 // var fruits = new Map();
 // fruits["first"] = "apple";
 // fruits["second"] = "banana";
 // fruits["fifth"] = "orange";
 // //换成双引号,换成var 打印结果 {first: apple, second: banana, fifth: orange}
 // print(fruits);
    

//  throw new FormatException('Expected at least 1 section');

   try {
      //misbehave();
    } catch (e) {
      print('3');
    } finally {
      print('4'); // 即使没有rethrow最终都会执行到
    }

 //设置[bold]和[hidden]标志
 void enableFlags(bold ,{ bool hidden}) {
   print('bold1${bold}');
 }  
 
 enableFlags(123, hidden: false);


  printElement(int element) {
     print(element);
  }

var  n=printElement(1);
print(n);

  var av = [1, 2, 3];

  // 把 printElement函数作为一个参数传递进来
  av.forEach(printElement);

 av.forEach((item) => print(item));

  // var jsonData = JSON.decode('{"x":1, "y":2}');


  //    print(jsonData);

 //  var p = new Point(2, 2);

 //  // Set the value of the instance variable y.
 //  p.y = 3;

 //  // Get the value of y.
 //  assert(p.y == 3);

 //  // Invoke distanceTo() on p.
 //  num distance = p.distanceTo(new Point(4, 4));
 // print(distance);
//var p={'y':1};

// p?.y = 4;

//print(p.runtimeType);

    var point = new Point();
    point.x = 4;          // Use the setter method for x.
 //   assert(point.x == 4); // Use the getter method for x.
   // assert(point.y == null); // Values default to null.
print(point.x);
//var c=5;
//var obj={c:4};
//obj.c=44;
point.m();

 checkVersion() async {
    // ...
 }



var dd='ddd';
 int aaaa=5;
  int bbbb=3;
  print(aaaa==bbbb);
int d;
  //d??=22;
  print(d==null);


//var ss={iii:1};
// print('ss${ss}');

  ((int n){
  print("我是自执行方法 n=$n");
  })(11);

List getList(){
  return ["111","222","333"];
}
 print( getList());
 
 var p =new Point();
 p.m();

var json1={
  "name": "John Smith",
  "email": "john@example.com"
};

// Map userMap = json.decode(json1);
// var user = new User.fromJson(userMap);

// print('Howdy, ${user.name}!');
// print('We sent the verification link to ${user.email}.');
//print('We sent the verification link to ${user['email']}.');// String ii='';
//  print(ii==1);

// const iii=123;
// const ppp=55;
//  print(iii || ppp);
  //print(new Singleton() == new Singleton());
  //print(identical(new Singleton() , new Singleton()));
var d1 = DateTime.parse('2018-10-10 09:30:30Z');
print(d1);
var d2 = DateTime.parse('2018-10-10 09:30:30+0800');
print('d2:');

  var s=new Set();
  s.add("校长");
  s.add("老师");
  s.add("主任");
  s.add("主任");
  print(s);
 
  print(s.toList());
  List list1=["香蕉","苹果","西瓜","香蕉",
  "苹果","西瓜","香蕉","苹果","西瓜"];
  var s1=new Set();
  s1.addAll(list1);
  print(s1);
  print(s1.toList());
  print(DateTime.now().millisecondsSinceEpoch);
  await p.b();
  print(DateTime.now().millisecondsSinceEpoch);
//p.b();


  var jsonData = jsonDecode('{"x":1, "y":2}');
  print(jsonData);
  var jsonData1 = jsonEncode(jsonData);
  print(jsonData1);
    print(jsonData is Object);

}




// bool i=true
// bool p=true
//  print(i==true || p==true);
//const ii=undefined
// const u=111
// if(u){
//    print('u'+u);
// }

// bool d=true;
// bool r=false;
// print(d && );


 class Point {
    num x=2;
    num y;
   int m(){
    	print('14455${this.x}');
    }
   void b() async{
 return await Future.wait([
  // 2秒后返回结果  
  Future.delayed(new Duration(seconds: 2), () {
    return "hello";
  }),
  // 4秒后返回结果  
  Future.delayed(new Duration(seconds: 4), () {
    return " world";
  })
]).then((results){
  print(results[0]+results[1]);
}).catchError((e){
  print(e);
});
}

 }



// class Singleton {
//  const Singleton() =>const Singleton.a();
//   const Singleton.a();
// }


 class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson1(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
    <String, dynamic>{
      'name': name,
      'email': email,
    };
}



