import 'package:mvc_application/view.dart';
import 'package:mvc_application/controller.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:clickcounter/controller/myscreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State createState() => _MyHomePageState();
}

//class _MyHomePageState extends State<MyHomePage> {
class _MyHomePageState extends StateMVC<MyHomePage> {
  _MyHomePageState() : super(Controller()) {
    con = controller as Controller;
  }
  late Controller con;

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
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${con.counter}',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Colors.black,
          overlayColor: Colors.black,
          overlayOpacity: 0.4,
          children: [
            SpeedDialChild(
              child: Icon(Icons.add),
              label: 'Increment Counter',
              onTap: () {
                con.onPressed();
              },
            ),
            SpeedDialChild(
              child: Icon(Icons.arrow_right),
              backgroundColor: Colors.green,
              label: 'Next Screen',
              onTap: () {
                con.gotoSecondRoute(context);
              },
            ),
          ],
          //onPressed: con.onPressed(),
          //tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
