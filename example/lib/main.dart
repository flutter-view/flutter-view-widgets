import 'package:example/example-page.dart';
import 'package:example/example-model.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {

  /// The state of the app. Because it extends [Model], it can inform the [ReactiveWidget]
  /// in the [ExamplePage] that it has updated, causing a rerender of the child of the [ReactiveWidget]
  ExampleModel model;

  @override
    void initState() {
      /// Create the app state
      model = ExampleModel();
      super.initState();
    }

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Example',
    /// Render the homepage by callig the [ExamplePage] method, passing in the model
    home: ExamplePage(model: model),
  );

}
