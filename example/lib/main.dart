import 'package:flutter/material.dart';
import 'example_page.dart';
import 'example_model.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  /// The state of the app. Because it extends [Model], it can inform the [ReactiveWidget]
  /// in the [ExamplePage] that it has updated, causing a rerender of the child of the [ReactiveWidget]
  late ExampleModel model;

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
