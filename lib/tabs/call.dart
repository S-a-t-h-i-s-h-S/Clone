import 'package:flutter/material.dart';

import '../model/call_model.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 5.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(callData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        callData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        i % 2 == 0 ? Icons.call : Icons.camera_alt,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                  subtitle: Text(callData[i].time),
                )
              ],
            ));
  }
}
