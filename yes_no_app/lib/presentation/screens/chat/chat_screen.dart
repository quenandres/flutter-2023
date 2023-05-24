import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/3/30/Henry_Cavill_%2848417913146%29_%28cropped%29.jpg'
            ),
          ),
        ),
        title: const Text('Alguien mas... 💢'),        
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) { 
                  return const MyMessageBubble();
               },
              ),
            ),
            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}