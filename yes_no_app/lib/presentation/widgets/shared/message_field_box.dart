import 'package:flutter/material.dart';

class MessaageFieldBox extends StatelessWidget {
  const MessaageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode(); // Simiar al textcontroller

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide( color: Colors.transparent ),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {            
            final textValue = textController.value.text;
            print('boton $textValue');
            textController.clear();
          }, 
          icon: const Icon( Icons.send_outlined )
        )
      );

    return TextFormField(     
      onTapOutside: (event) {
        focusNode.unfocus(); // Salir del foco del input
      }, 
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {        
        print('valor enviado $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
      },
    );
  }
}