import 'package:flutter/material.dart';

class MessaageFieldBox extends StatelessWidget {
  const MessaageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide( color: Colors.transparent ),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {

          }, 
          icon: const Icon( Icons.send_outlined )
        )
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('submit $value');
      },
      onChanged: (value) {
        print('onChange $value');
      },
    );
  }
}