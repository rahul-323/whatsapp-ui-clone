import 'package:chat_app/colors/colors.dart';
import 'package:chat_app/widgets/chat_app_bar.dart';
import 'package:chat_app/widgets/chat_list.dart';
import 'package:chat_app/widgets/components/profile_bar.dart';
import 'package:chat_app/widgets/components/web_search_bar.dart';
import 'package:chat_app/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [WebProfileBar(), WebSearchBar(), ContactList()],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/backgroundImage.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                const ChatAppBar(),
                const Expanded(child: ChatList()),
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: dividerColor)),
                      color: chatBarMessage),
                  child: Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file_sharp)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: 'Message or Chat',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
