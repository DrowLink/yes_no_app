import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://d3g9pb5nvr3u7.cloudfront.net/authors/5be1d83f2177895b3e20c1e1/-1018204645/256.jpg')
          ),
        ),
        title: Text('My Love'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ( index % 2 == 0 ) //Way to render different bubbles
                  ? const HerMessageBubble() //HerMessagebubble Widget
                  : const MyMessageBubble(); //MyMessagebubble Widget
              })
            ),
            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}