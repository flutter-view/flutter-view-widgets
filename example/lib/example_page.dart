// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_import, dead_code, unused_element, unnecessary_cast, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, invalid_null_aware_operator, avoid_unnecessary_containers, sized_box_for_whitespace
	
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_view_widgets/flutter_view_widgets.dart';
import 'example_model.dart';
	
Lifecycle ExamplePage({ required ExampleModel model }) {
  return Lifecycle( // project://example/lib/example_page.pug#12,2
    onInit: model.init,
    onDispose: model.dispose,
    child: Scaffold( // project://example/lib/example_page.pug#14,3
      appBar: AppBar( // project://example/lib/example_page.pug#16,4
        title: //-- TITLE ----------------------------------------------------------
        Container( // project://example/lib/example_page.pug#17,5
          child: const Text( 
            'Example App',
          ),
        ),
      ),
      body: Center( // project://example/lib/example_page.pug#19,4
        child: Column( 
          children: __flatten([
            //-- SPACER ----------------------------------------------------------
            Container( // project://example/lib/example_page.pug#21,5
              height: 200,
            ),
            DefaultTextStyle.merge( 
              child: //-- MESSAGE-BOX ----------------------------------------------------------
              Container( // project://example/lib/example_page.pug#23,5
                child: Column( 
                  children: __flatten([
                    //-- GREETING ----------------------------------------------------------
                    Container( // project://example/lib/example_page.pug#25,6
                      child: const Text( 
                        'Hello, you entered:',
                      ),
                    ),
                    ReactiveWidget( // project://example/lib/example_page.pug#30,6
                      watch: model as Listenable,
                      builder: (context, $) {
                        return Assign( // project://example/lib/example_page.pug#31,7
                          name: 'text',
                          value: model.textController.text,
                          builder: (context, text) {
                            return //-- TEXT ----------------------------------------------------------
                            Container( // project://example/lib/example_page.pug#34,8
                              child: Text( 
                                '${model.textController.text}',
                              ),
                            );
                          },
                        );
                      },
                    )
                  ]),
                ),
              ),
              style: TextStyle( 
                fontSize: 20,
              ),
            ),
            //-- SPACER ----------------------------------------------------------
            Container( // project://example/lib/example_page.pug#36,5
              height: 200,
            ),
            //-- INPUT ----------------------------------------------------------
            Container( // project://example/lib/example_page.pug#38,5
              child: TextField( // project://example/lib/example_page.pug#40,6
                controller: model.textController,
                decoration: InputDecoration( // project://example/lib/example_page.pug#41,7
                  hintText: 'Enter text',
                ),
              ),
              width: 200,
            )
          ]),
        ),
      ),
    ),
  );
}
	
__flatten(List list) {
  return List<Widget>.from(list.expand((item) {
    return item is Iterable ? item : [item as Widget];
  }));
}