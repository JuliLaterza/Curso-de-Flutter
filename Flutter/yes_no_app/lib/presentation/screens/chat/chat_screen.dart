import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_dart.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_bubble_chart.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(padding: EdgeInsets.all(4),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://predis.ai/top-instagram-accounts/leomessi.jpeg'),
        )),
        title: const Text('El Rey'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}


class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: ListView.builder(itemCount: 100,itemBuilder: (context, index) {
            return (index % 2 == 0)
            ? const HerMessageBubble()
            : const MyMessageBubble();
          },
          )),
          //const Text('Caja de texto')
          const MessageFieldBox()
        ],
      ),
    );
  }
}