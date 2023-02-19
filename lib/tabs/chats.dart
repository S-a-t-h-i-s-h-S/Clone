import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatdata.length,
        itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 5.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatdata[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chatdata[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(chatdata[i].time,
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.all(5), child: Text(chatdata[i].msg)),
                )
              ],
            ));
  }
}
