import 'package:mvc_application/view.dart';
import 'package:clickcounter/main.dart';

class View extends AppState {
  factory View() => _this ??= View._();
  View._()
      : super(
          // Application name
          title: 'Flutter Stateful Clicker Counter',
          theme: ThemeData(
            // Application theme data, you can set the colors for the application as
            // you want
            primarySwatch: Colors.lightGreen,
          ),
          home: MyHomePage(title: 'Clicker Counter Home'),
        );
  static View? _this;
}
