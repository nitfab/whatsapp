import 'package:flutter/material.dart';

import 'widget/ChatsWidget.dart';
import 'widget/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          //Custom height to app bar
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: ((context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New group",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked device",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Stared messages",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Payments",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 6,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: const Color.fromARGB(255, 176, 73, 73),
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Container(
                    width: 25,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: 110,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("CHATS"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // padding: EdgeInsets.all(10),
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("STATUS"),
                          Container(
                            height: 20,
                            width: 20,
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("CALLS"),
                          Container(
                            height: 20,
                            width: 20,
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    //Tab 1
                    Container(color: Colors.black),
                    // Tab 2
                    const ChatsWidget(),
                    //Tab 3
                    const StatusWidget(),
                    //Tab 4
                    Container(color: Colors.black),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
