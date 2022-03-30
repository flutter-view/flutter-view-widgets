import 'package:flutter/widgets.dart';

typedef Widget AssignedBuilder<T>(BuildContext context, T assignment);

/// Flutter-view helper widget to allow assigning a value or expression
/// to a new variable name.
///
/// In flutter-view you would use it like this:
///
/// ```pug
/// assign(name='sum' :value='2*3')
///   | the sum is $sum
/// ```
///
/// Which flutter-view converts to this:
///
/// ```dart
/// return Assign<int>(
///   name: 'sum',
///   value: 2*3,
///   builder: (context, sum) => Text('the sum is $sum')
/// );
///
/// See the flutter-view documentation for more information.
/// ```
class Assign<T> extends StatelessWidget {
  final T value;
  final String name;
  final AssignedBuilder<T> builder;

  Assign({required this.name, required this.value, required this.builder});

  @override
  Widget build(BuildContext context) {
    return this.builder(context, value);
  }
}
