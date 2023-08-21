import 'package:flutter/material.dart';
import 'articlemessages.dart';
import 'chat.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Article_message> msg = [
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Marvin',
        likes: 1,
        messages: 'no one',
        date: '1:20'),
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'Kristin',
        likes: 1,
        messages: 'no one here ',
        date: '11:30'),
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Arthur',
        likes: 1,
        messages: 'no one here to help',
        date: '10:00'),
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'Nguyan',
        likes: 1,
        messages: 'no one here to help except Allah',
        date: '4:10'),
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Richards',
        likes: 1,
        messages:
            'no one dfdf df df f d fsd f f ef e fe fe f f e fe f erf e fe f e f fe rf ef e frf',
        date: '2:30'),
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      onPressed: () {},
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Messages',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: width * 0.08,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: height * 0.11,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: msg.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          msg[index].icimage,
                                          width: width * 0.17,
                                          height: height * 0.09,
                                        ),
                                        Text(
                                          msg[index].name,
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 177, 175, 175)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: msg.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  child: Image.asset(
                                msg[index].icimage,
                                width: width * 0.17,
                                height: height * 0.09,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (context) => ChatPage(
                                        img: msg[index].icimage,
                                        name: msg[index].name,
                                        time: msg[index].date,
                                      ),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(
                                          msg[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(
                                          msg[index].messages,
                                          overflow: TextOverflow.ellipsis,
                                        ))
                                  ],
                                ),
                              ),
                              Spacer(),
                              SizedBox(child: Text(msg[index].date))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                width: width * 0.5,
                height: height * 0.05,
                child: TextField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    hintText: "Search for Friend's Name...",
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
