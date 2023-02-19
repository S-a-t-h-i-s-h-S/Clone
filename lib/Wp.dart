import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabs/call.dart';
import 'package:whatsapp_clone/tabs/camera.dart';
import 'package:whatsapp_clone/tabs/chats.dart';
import 'package:whatsapp_clone/tabs/status.dart';

class whatsapp extends StatefulWidget {
  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 80, 73),
        title: Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.more_vert)
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'status',
              ),
              Tab(
                text: 'Call',
              )
            ]),
      ),
      body: new TabBarView(controller: _tabController, children: [
        new Camera(),
        new Chats(),
        new Status(),
        new Call(),
      ]),
      floatingActionButton: _tabController?.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            )
          : _tabController?.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                )
              : _tabController?.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                    ),
    );
  }
}
