# Changelog

## 2.2.5-dev.1

	- Fix null safety warning

## 2.2.4-dev.1

	- Add assert support for backwards compatibility

## 2.2.3-dev.1

	- Reactive bugfix

## 2.2.1-dev.1

	- Rename State to Reactive to avoid namespace issues, remove old Reactive code since it duplicates ChangeNotifier behavior

## 2.2.1-dev.1

	- Forgot to export State

## 2.2.0-dev.1

	- Added State class, letting you easily make normal values listenable

## 2.1.1-dev.1

	- Added Reactive mixin to enable reactivity on entities that already extend a class

## 2.0.0-dev.1

	- Made the library null-safe
	- Removed Assign widget as in practice it did not make code cleaner or clearer, and it is hard to make null-safe and typed

> Note: This version requires Dart 2.12 or higher. Use 1.0.6 if you cannot use null safety.

## 1.0.6

	- Renamed from flutter_view_tools to flutter_view_widgets to be able to publish again to pub
	- Use latest Flutter release
	- Formatted sources with flutter format

## 1.0.5

	- Formatted sources with flutter format

## 1.0.4

	- Using scoped_model: ^1.0.1
	- Updated example readme
	- Fixed example bug

## 1.0.3

	- Added example, better description, changelog.md and more documentation.

## 1.0.2

	- Improved exports

## 1.0.1

	- Updated readme and added scoped_model in the exports

## 1.0.0

	- First public release with the tools in a new seperated tools package
