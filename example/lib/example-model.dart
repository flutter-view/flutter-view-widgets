import 'package:flutter/widgets.dart';
import 'package:flutter_view_tools/flutter_view_tools.dart';

/// The model of this example app
/// Because it extends [Model] from the ScopedModel library, other classes can be informed when it updates
class ExampleModel extends Model {

	/// This [TextEditingController] controls the text in the input box of the example page.
	TextEditingController textController = TextEditingController();

	/// This method is called by the [Lifecycle] widget in the example-page, whenever the state is created
	init() {
		// Whenever the text in the input box changes, we want to be informed
		textController.addListener(onTextChange);
	}

	/// This method is called by the [Lifecycle] widget in the example-page, whenever the state is disposed of
	dispose() {
		// Clean up the listener when the state is disposed of
		textController.removeListener(onTextChange);
	}

	/// Called whenever the text in the textfield updates
	onTextChange() {
		print('current text: ${textController.text}');
		/// By calling notifyListeners, the [ReactiveWidget] of the example-page will be triggered to rerender it,
		/// since it watches this example model
		notifyListeners();
	}

}
