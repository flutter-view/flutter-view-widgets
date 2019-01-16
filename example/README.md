# Flutter-View Tools Example

![Screenshot](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LRHVDDIma_3N68abufD%2F-LWM9V9wMP-C9WhjSbbp%2F-LWM9aQ8XpDfbRzDhcCX%2FScreen%20Shot%202019-01-16%20at%2015.56.18.png?alt=media&token=4906ced2-15fd-478f-a80d-8e9a4eab8d20)

This app shows you by example how you may use the [Assign](../lib/src/assign.dart), [Lifecycle](../lib/src/lifecycle.dart), and [ReactiveWidget](../lib/src/reactive-widget.dart) classes.

It is a simple screen that lets you enter a text, and as you type, updates the same text on the screen.

- It demonstrates the *reactive* tag and *ReactiveWidget* by using it to update the text on the screen by monitoring the model
- It demonstrates the *assign* tag and widget by assigning the text controller to the ctl parameter
- It demonstrates the *lifecycle* tag and widget by using it to call methods to init and dispose of a listener for the text controller

The most important files to check are:

- [example-model.dart](lib/example-model.dart): This contains the state of the app. Since it extends the Model class, it can call notifyListeners() to inform any listeners that it has changed. This allows the ReactiveWidget in the ExamplePage to watch it, and rerender whenever the example model has changed.
- [main.dart](lib/main.dart): The startpoint of the app. It creates the ExampleApp and its _ExampleAppState. The _ExampleAppState creates and holds the ExampleModel, and for the home it uses the ExamplePage, passing the model for rendering.
- [example-page.pug](lib/example-page.pug): The template for the home page of the example app. In this file you see each flutter-view tag being used, with some explanation in the comments.
- [example-page.dart](lib/example-page.dart): This is the generated Dart code from example-page.pug, after having been processed by the flutter-view console tool.

See the [project page](../) for more information on this project and flutter-view.