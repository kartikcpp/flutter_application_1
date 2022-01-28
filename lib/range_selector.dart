import 'package:flutter/material.dart';

class RangeSelector extends StatefulWidget {
  const RangeSelector({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<RangeSelector> createState() => _RangeSelectorState();
}

class _RangeSelectorState extends State<RangeSelector> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather

    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Form(child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            RandomTextFormFieldWidget(labelText: 'Minimum',),
            SizedBox(height: 8),
          RandomTextFormFieldWidget(labelText: 'Maximum')
          ]
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: (){
            
        },
      ),
    );
  }
}

class RandomTextFormFieldWidget extends StatelessWidget {
  const RandomTextFormFieldWidget({
   required this.labelText,
    Key? key,
  }) : super(key: key);
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(border:OutlineInputBorder(),labelText: this.labelText ),
    );
  }
}
