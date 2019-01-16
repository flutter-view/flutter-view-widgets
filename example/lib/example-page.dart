// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:flutter_view_tools/flutter_view_tools.dart';
// ignore: unused_import
import 'example-model.dart';
// ignore: non_constant_identifier_names
Lifecycle ExamplePage({ @required ExampleModel model }) {
  return Lifecycle( // project://lib/example-page.pug#12,2
    onInit: model.init,
    onDispose: model.dispose,
    child: Scaffold( // project://lib/example-page.pug#14,3
      appBar: AppBar( // project://lib/example-page.pug#16,4
        title: 
        //-- TITLE ----------------------------------------------------------
        Container( // project://lib/example-page.pug#17,5
          child: Text( 
            'Example App',
          ),
        ),
      ),
      body: Center( // project://lib/example-page.pug#19,4
        child: Column( 
          children: __flatten([

            //-- SPACER ----------------------------------------------------------
            Container( // project://lib/example-page.pug#21,5
              height: 200,
            ),
            Assign( // project://lib/example-page.pug#26,5
              name: 'ctl',
              value: model.textController,
              builder: (context, ctl) {
                return Column( 
                  children: __flatten([
                    DefaultTextStyle.merge( 
                      child: 
                      //-- MESSAGE-BOX ----------------------------------------------------------
                      Container( // project://lib/example-page.pug#29,6
                        child: Column( 
                          children: __flatten([

                            //-- GREETING ----------------------------------------------------------
                            Container( // project://lib/example-page.pug#31,7
                              child: Text( 
                                'Hello, you entered:',
                              ),
                            ),
                            ReactiveWidget( // project://lib/example-page.pug#36,7
                              watch: model as Listenable,
                              builder: (context, $) {
                                return 
                                //-- TEXT ----------------------------------------------------------
                                Container( // project://lib/example-page.pug#39,8
                                  child: Text( 
                                    '${ctl.text}',
                                  ),
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
                    Container( // project://lib/example-page.pug#41,6
                      height: 200,
                    ),

                    //-- INPUT ----------------------------------------------------------
                    Container( // project://lib/example-page.pug#43,6
                      child: TextField( // project://lib/example-page.pug#45,7
                        controller: ctl,
                        decoration: InputDecoration( // project://lib/example-page.pug#46,8
                          hintText: 'Enter text',
                        ),
                      ),
                      width: 200,
                    )
                  ]),
                );
              },
            )
          ]),
        ),
      ),
    ),
  );
}
// ignore: unused_element
__flatten(List list) {
  return List<Widget>.from(list.expand((item) {
    return item is Iterable ? item : [item as Widget];
  }));
}