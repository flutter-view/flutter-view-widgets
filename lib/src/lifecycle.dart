import 'package:flutter/widgets.dart' as flutter;

/// Widget that lets you listen to the lifecycle of the [BuildContext] it is part of
///
/// Useful in combination with [Model] and [ReactiveModel], since your model can
/// be informed when the [BuildContext] is being initialized, built, rendered and disposed of.
class Lifecycle extends flutter.StatefulWidget {
  /// Called when the context is being initialized. Optional.
  final Function? onInit;

  /// Called when the context is being built. Optional.
  final Function(flutter.BuildContext context)? onBuild;

  /// Called when the context is being rendered. Optional.
  final Function(flutter.BuildContext context)? onRender;

  /// Called when the context is being disposed of. Optional.
  final Function? onDispose;

  /// child widget to render. Optional.
  final flutter.Widget child;

  Lifecycle({
    required this.child,
    this.onInit,
    this.onBuild,
    this.onRender,
    this.onDispose,
  });

  @override
  flutter.State<flutter.StatefulWidget> createState() => _LifecycleState();
}

class _LifecycleState extends flutter.State<Lifecycle> {
  @override
  initState() {
    super.initState();
    if (this.widget.onInit != null) this.widget.onInit!();
  }

  @override
  build(flutter.BuildContext context) {
    if (this.widget.onBuild != null) this.widget.onBuild!(context);

    if (this.widget.onRender != null && flutter.WidgetsBinding.instance != null) {
      flutter.WidgetsBinding.instance!.addPostFrameCallback((_) => this.widget.onRender!(context));
    }

    return this.widget.child;
  }

  @override
  dispose() {
    if (this.widget.onDispose != null) this.widget.onDispose!();
    super.dispose();
  }
}
