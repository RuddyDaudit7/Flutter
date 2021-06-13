import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grouped_list/grouped_list.dart';

List _data = [
  {

    'title' : 'The Hamburger',
    'image' : 'assets/burger.png',
    'author' : 'qwerty',
    'group' :'1',
  },
  {

    'title' : 'Tacos',
    'image' : 'assets/taco.png',
    'author' : 'azerty',
    'group' :'2',
  },
  {

    'title' : 'THe Delicious Hot-Dog',
    'image' : 'assets/hotdog.png',
    'author' : 'qwerty',
    'group' :'3',
  },
  {

    'title' : 'PoP Corn',
    'image' : 'assets/popcorn.png',
    'author' : 'azerty',
    'group' :'4',
  },
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding:EdgeInsets.all(20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
              '',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(
                      image: AssetImage('assets/tuxedo.png'),
                    ),
                  ),
                )
                ],
              )
            ),
            Container(
              child: Text('SEARCH \n FOR RECIPES'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text('Recommended'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 200,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child:Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 150,
                                    height: 80,
                                    child: Image(
                                      image: AssetImage('assets/burger.png'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text("Hamburger", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        Text(" 21 Dollars", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                              )
                            ] )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child:Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 150,
                                    height: 80,
                                    child: Image(
                                      image: AssetImage('assets/fries.png'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text("Frites", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        Text(" 15 Dollars", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                              )
                            ] )
                    ),
                  ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child:Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 150,
                                  height: 80,
                                  child: Image(
                                    image: AssetImage('assets/cheese.png'),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Cheese", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                      Text(" 6 Dollars", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                )
                            )
                          ] )
                  ),
)               ,
                ],
              ),
            ),






            Container(
              height: 100,
              child: Row(
                children: [
                  Text(('Featured        '),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                  Text('Combo            '),
                  Text('Favorites        '),
                  Text('Recommended      '),
                ],
              ),
            ),
            Container(
              height: 200,
              width:200,
              child: GroupedListView<dynamic,String>(
                scrollDirection:Axis.vertical,
                elements: _data,
                groupBy: (item) =>item['group'],
                groupSeparatorBuilder: (groupValue)=>Padding(
                    padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8,right: 8),
                        child: Text(
                          groupValue,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                      ),
                      Expanded(
                        child: Divider(
                        color: Colors.red,
                      ),
                      ),
                    ],
                  )
            ),
                itemBuilder: (context,item){
                  return Card(
                  elevation: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                    child: Container(
                      padding: EdgeInsets.all(8),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                        flex:2,
                         child:ClipRRect(child:Image(image:NetworkImage(item['image']),fit:BoxFit.cover,),
                        borderRadius:BorderRadius.all(Radius.circular(4)),)),
                        Expanded(flex:6,child:Container(
                            padding:EdgeInsets.only(bottom:8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:EdgeInsets.only(left: 8,right: 8),
                                child: Text(
                                    item['title'],
                                    style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ),
                              Padding(
                                  padding:EdgeInsets.only(left: 8,right: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow, size: 50),
                                      Icon(Icons.star, color: Colors.yellow, size: 50),
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                        ),

                                ]
                    ),
                  ),
                  );
                },
                groupComparator: (group1,group2)=>group1.compareTo(group2),
                itemComparator:  (item1,item2)=>item1['title'].compareTo(item2['title']),
                useStickyGroupSeparators: true,
                floatingHeader: false,
                order: GroupedListOrder.ASC,
            ),
              ),
            ],
    ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


