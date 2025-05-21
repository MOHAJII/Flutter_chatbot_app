import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  var messages = [
    {"type": "user", "content": "Hello"},
    {"type": "bot", "content": "Hi, how can I help you?"},
    {"type": "user", "content": "I need help with my homework"},
    {"type": "bot", "content": "Sure, what do you need help with?"},
  ];

  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat Bot',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text("${messages[index]['content']}"));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: userController,
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      String question = userController.text;
                      userController.clear();
                      String response = "Respond to $question";
                      setState(() {
                        messages.add({"type": "user", "content": question});
                        messages.add({"type": "bot", "content": response});

                      });
                    },
                    icon: Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
