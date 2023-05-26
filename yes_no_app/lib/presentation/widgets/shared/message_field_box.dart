import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;
  const MessageFieldBox({
    super.key, 
    required this.onValue
  });
  
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
            onValue(textValue);
            textController.clear();
            focusNode.requestFocus(); // Salir del foco del input
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
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
      },
    );
  }
}