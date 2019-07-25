import 'dart:async';

import 'package:flutter/widgets.dart' as flutter;
import 'package:meta/meta.dart';

/// Widget builder function to be called when the listenable updates.
/// Passes the [BuildContext] and current [Listenable].
typedef flutter.Widget ReactiveWidgetBuilder<T extends flutter.Listenable>(
    flutter.BuildContext context, T model);

/// Widget that rebuilds when the specified [Listenable] updates.
///
/// Optionally typed, but the listenable you past must inherit [Listenable].
///
/// Internally creates a stream of [Listenable] updates by listening to the passed
/// [Listenable], and builds a [StreamBuilder] widget which consumes this stream.
class ReactiveWidget<T extends flutter.Listenable>
    extends flutter.StatefulWidget {
  ReactiveWidget({@required this.watch, @required this.builder})
      : assert(watch != null),
        assert(builder != null);

  /// The model to react to
  final T watch;

  /// Builder that gets passed the context and the current version of the listenable
  final ReactiveWidgetBuilder<T> builder;

  @override
  createState() => _ReactiveWidgetState<T>();
}

class _ReactiveWidgetState<T extends flutter.Listenable>
    extends flutter.State<ReactiveWidget<T>> {
  // sink gets closed in dispose, bad warning suppressed:
  // ignore: close_sinks
  StreamController<T> controller;

  void onUpdate() {
    this.controller.add(this.widget.watch);
  }

  @override
  initState() {
    super.initState();
    this.controller = StreamController<T>();
    this.widget.watch.addListener(this.onUpdate);
  }

  @override
  dispose() {
    this.widget.watch.removeListener(onUpdate);
    this.controller.close();
    super.dispose();
  }

  @override
  build(context) => flutter.StreamBuilder<T>(
      initialData: this.widget.watch,
      stream: this.controller.stream,
      builder: (context, snap) => snap.hasData
          ? this.widget.builder(context, snap.data)
          : flutter
              .Container() // should never happen, since we pass initialData
      );
}
