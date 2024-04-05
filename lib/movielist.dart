import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/show.dart';

/// Flutter code sample for [TabBar].

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    List<String> Movies = [
      'Avatar',
      'Avengers',
      'Transformer',
      'Captain Marvel',
      'Spartans',
      'Avatar-2',
      'Spartans-2'
    ];
    List<String> Moviesbio = [
      'Action,Thriller',
      'Action,Thriller',
      'Action,Thriller',
      'Action,Thriller',
      'Action,Thriller',
      'Action,Thriller',
      'Action,Thriller'
    ];
    List<String> hours = [
      '2:40hr',
      '2:30hr',
      '2:20hr',
      '2:20hr',
      '2:10hr',
      '2:45hr',
      '2:22hr',
      '2:18hr',
    ];
    List<String> poster = [
      "images/avatar.jpg",
      "images/avatar.jpg",
      "images/avatar.jpg",
      "images/avatar.jpg",
      "images/avatar.jpg",
      "images/avatar.jpg",
      "images/avatar.jpg",
    ];
    List<String> star = [
      "images/3star.jpg",
      "images/3star.jpg",
      "images/3star.jpg",
      "images/3star.jpg",
      "images/3star.jpg",
      "images/3star.jpg",
      "images/3star.jpg",
    ];

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                const Text(
                  'Movies',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.red),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                Icon(Icons.notification_add),
              ],
            ),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("New"),
              ),
              Tab(
                child: Text("Popular"),
              ),
              Tab(
                child: Text("Upcoming"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: ListView.builder(
                itemCount: Movies.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Shows()),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.90,
                            color: Colors.grey[200],
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.20,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Image.asset(
                                    poster[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.050,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.20,
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            Movies[index],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            child: Image.asset(
                                              star[index],
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.07,
                                              // width: MediaQuery.of(context)
                                              //         .size
                                              //         .width *
                                              //     0.30,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            Moviesbio[index],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            hours[index],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            height: 400,
            width: 500,
            color: Colors.red,
          ),
          Container(
            height: 400,
            width: 500,
            color: Colors.redAccent,
          )
        ]),
      ),
    );
  }
}
