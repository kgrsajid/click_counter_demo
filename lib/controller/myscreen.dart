import 'package:mvc_application/controller.dart';

import 'package:clickcounter/route/second.dart';

part '../model/myscreen.dart';

class Controller extends ControllerMVC {
  factory Controller() => _this ??= Controller._();
  Controller._()
      : model = _Model(),
        super();

  static Controller? _this;
  final _Model model;

  /// You're free to mimic Flutter's own API
  /// The Controller is able to talk to the View (the State object)
  //void onPressed() => setState(() => model._incrementCounter());

  void onPressed(BuildContext context) => (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondRoute()),
        );
      };

  int get counter => model.integer;

  /// The Controller knows how to 'talk to' the Model.
  void incrementCounter() => model._incrementCounter();
}
