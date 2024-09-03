import 'package:ai_app/home_controller.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller =
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gemini'),
      ),
      body:GetBuilder<HomeController>(builder: (controller) {
        return  DashChat(
          currentUser: sender,
          onSend: (message) {
            controller.sendMessage(message);
          },
          messages: controller.messages,
        );
      },)
    );
  }
}

ChatUser sender = ChatUser(id: '1',firstName: 'darshan',lastName: 'patel');
ChatUser receiver = ChatUser(id: '2',firstName: 'Niraj',lastName: 'Rajput');

