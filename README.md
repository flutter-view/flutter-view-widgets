# Flutter-View Tools

These tools allow some extra functionality for flutter-view:

## Assign

A builder widget used in combination with the flutter-view **assign** tag shortcut, used to assign a value to a new variable in your widget build tree.

## Lifecycle

A widget that lets you hook into different lifecycle events of its children, such as **initState**, **render** and **dispose**. You can use these hooks for updating and cleaning up in your view-model.

## ReactiveWidget

A wrapper of a Flutter **StreamWidget**, that monitors a **Listenable** such as a **Model**, and triggers an update when that **Listenable** updates. This allows for your tree of widgets to respond to model updates.

## Model

Included from the excellent *scoped_model* library dependency. Extend the **Model** class to create your own data entities, and call **Model.notifyListeners()** to trigger reactive widgets.
