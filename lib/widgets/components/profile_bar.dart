import 'package:chat_app/colors/colors.dart';
import 'package:flutter/material.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.072,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: dividerColor, width: 3)),
          color: webAppBarColor),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
              color: Colors.grey),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.grey),
        ],
      ),
    );
  }
}
