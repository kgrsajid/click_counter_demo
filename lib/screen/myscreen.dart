import 'package:mvc_application/view.dart';
import 'package:clickcounter/view/myscreen.dart';

class MyScreen extends AppState {
  factory MyScreen() => _this ??= MyScreen._();
  MyScreen._()
      : super(
          // Application name
          title: 'Flutter Stateful Clicker Counter',
          theme: ThemeData(
            // Application theme data, you can set the colors for the application as
            // you want
            primarySwatch: Colors.indigo,
          ),
          home: MyHomePage(title: 'Clicker Counter Home'),
        );
  static MyScreen? _this;
}
