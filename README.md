# Flutter-View Tools

> Notice: this replaces the flutter_view_tools library, which is no longer maintained.

Flutter-view is a tool that lets you easily create layouts for Flutter, using Pug and Sass.

[http://flutter-view.io](http://flutter-view.io)

This package adds some widgets that allow some extra functionality for flutter-view, and are highly recommended for your flutter-view projects.

Check out the [documentation](https://docs.flutter-view.io/get-started/installation#installing-flutter-view-tools) on how to get started with this library in your own flutter-view project.
Check out the [example project](./example) for a simple project that uses all supported widgets.

The library adds the following widgets:

## Assign

A builder widget used in combination with the flutter-view **assign** tag shortcut, used to assign a value to a new variable in your widget build tree.

[Documentation](https://docs.flutter-view.io/reference/tag-shortcuts#assign)

## Lifecycle

A stateful widget that lets you hook into different [lifecycle events](https://flutter.io/docs/development/ui/widgets-intro#responding-to-widget-lifecycle-events) of its state, such as **initState**, **render** and **dispose**. You can use these hooks for updating and cleaning up in your view-model.

[Documentation](https://docs.flutter-view.io/reference/tag-shortcuts#lifecycle)

## ReactiveWidget

A wrapper of a Flutter **StreamWidget**, that monitors a **Listenable** such as a **[Model](https://pub.dartlang.org/documentation/scoped_model/latest/scoped_model/Model-class.html)**, and triggers an update when that **Listenable** updates. This allows for your tree of widgets to respond to model updates.

[Documentation](https://docs.flutter-view.io/reference/tag-shortcuts#reactive)
| [Usage guide](https://docs.flutter-view.io/guide/writing-reactive-code)
