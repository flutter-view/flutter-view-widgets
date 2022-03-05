import 'package:scoped_model/scoped_model.dart';

/// [Reactive] is a simple wrapper around a value to make it listenable for changes.
/// This lets you make any value listenable, instead of having to extend [Model] or [ChangeNotifier].
///
/// [Reactive] extends [Model], meaning it is listenable. It also exposes
/// a getter and a setter for the wrapped value. By setting a new value, notifyListeners is also called
/// for you. This makes it possible to listen for changes and reactively rerender content.
///
/// ### Example:
///
/// ```Dart
/// final user = Reactive(User(name: 'John'));
/// user.addListener(() { print('updated'); });
/// print(user.value); // prints John
/// user.value = 'Mary'; // prints 'updated'
/// print(user.value); // prints Mary
/// ```
class Reactive<T> extends Model {
  Reactive(T e) : _value = e;

  /// The wrapped value
  T _value;

  /// Gets the current value
  T get value {
    return _value;
  }

  /// Sets the new value, and calls notifyListeners
  set value(T newValue) {
    _value = newValue;
    notifyListeners();
  }

  @override
  String toString() {
    return value.toString();
  }
}
