import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola world', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(),

        const SizedBox(height: 10),

        // Todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/yes/2-5df1b403f2654fa77559af1bf2332d7a.gif',
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null ) return child;
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
          child: Text('esta enviando una imagen'),
        );
      },
    ));
  }
}