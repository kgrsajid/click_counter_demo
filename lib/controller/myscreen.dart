import 'package:mvc_application/controller.dart';
//import 'package:clickcounter/model/myscreen.dart';

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
  void onPressed() => setState(() => model._incrementCounter());

  int get counter => model.integer;

  /// The Controller knows how to 'talk to' the Model.
  void incrementCounter() => model._incrementCounter();
}
