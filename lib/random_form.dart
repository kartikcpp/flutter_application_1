import 'package:flutter/material.dart';
class RandomFormWidget extends StatelessWidget {

  final void Function(int value) minValueSetter;
  final void Function(int value) maxValueSetter;
  const RandomFormWidget({
    Key? key,
    required this.formKey,
    required this.minValueSetter,
    required this.maxValueSetter
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey,
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RandomTextFormFieldWidget(
          labelText: 'Minimum',
          intValueSetter:minValueSetter,
        ),
        SizedBox(height: 8),
        RandomTextFormFieldWidget(
          labelText: 'Maximum',
          intValueSetter: maxValueSetter,
        )
      ]),
    ));
  }
}

class RandomTextFormFieldWidget extends StatelessWidget {
  const RandomTextFormFieldWidget({
    required this.labelText,
    required this.intValueSetter,
    Key? key,
  }) : super(key: key);

  final void Function(int value) intValueSetter;

  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '0')),
      keyboardType: TextInputType.number,
      validator: (value) {
        if ( value == null || int.tryParse(value) == null) {
          return 'Value must be Integer';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: this.labelText),
    );
  }
}