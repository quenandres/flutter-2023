import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola guapo', fromWho: FromWho.me),
    Message(text: 'Como estas?', fromWho: FromWho.me),
    Message(text: 'Como estas?', fromWho: FromWho.me),
    Message(text: 'Como estas?', fromWho: FromWho.me),
    Message(text: 'Como estas?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String text ) async {
    if ( text.isEmpty ) return ;
    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);    
    if( text.endsWith('?') ) {
        herReply();
    }
    notifyListeners(); // Notifica a todos los que esten escuchando
    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();

  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }  
}