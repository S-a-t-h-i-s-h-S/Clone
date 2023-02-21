import 'package:flutter/material.dart';

import '../model/staus_model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: ListTile(
              leading: Container(
                width: 50.0,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://randomuser.me/api/portraits/men/50.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              title: Text(
                'My Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tab to add the status'),
            ))
          ],
        ),
        SizedBox(
          height: 30,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              'Recent Update',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        Divider(
                          height: 0.1,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(statusData[i].pic)),
                          title: Row(children: [
                            Text(
                              statusData[i].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ]),
                          subtitle: Text(
                            statusData[i].time,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        )
                      ],
                    )))
      ],
    );
  }
}
