


import 'package:flutter_view_widgets/flutter_view_widgets.dart';

/// Mixin class to signify that the component is reactive.
/// 
/// Use this if your entities already extend a class. Otherwise just extend [Model] instead.
/// To use extend your entity classes like this:
/// 
/// ```Dart
/// class MyEntity extends SomeModelClass with Reactive {
///   ...
/// }
/// ```
/// 
/// Then when listening with the [ReactiveWidget], instead of listening for
/// the entity itself for changes like you would with a [Model] extending class,
/// listen to the `.changes` property instead:
/// 
/// ```Pug
/// some-function(flutter-view)
///   reactive(watch='model.changes')
///     //- code here will change when model.notifyListeners() is called
/// 
/// ```
abstract class Reactive {

  ReactiveModel _model = new ReactiveModel();

  /// Use this to listen for changes with the reactive-widget
  Model get changes {
    return _model;
  }

  /// Notify any listeners that this entity has been updated
  notifyListeners() {
    // ignore: invalid_use_of_protected_member
    _model.notifyListeners();
  }
}

/// Simply only use the Model to check for updates
class ReactiveModel extends Model {}
