import 'package:flutter/material.dart';
import 'search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'articlemessages.dart';
import 'circledetail.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({super.key});

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  List<Article_message> msg = [
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'I love Golden Retriever',
        likes: 1,
        messages: '1232 members',
        date: '1:20'),
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'The life of a dog king',
        likes: 1,
        messages: '23 members',
        date: '11:30'),
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Arthur',
        likes: 1,
        messages: '121 members',
        date: ''),
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'Nguyan',
        likes: 1,
        messages: '1422 members',
        date: '4:10'),
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Richards',
        likes: 1,
        messages: '6866 members',
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
                    SizedBox(
                      child: Text(
                        'Circle',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/scan.png',
                              width: 40,
                            ),
                          ),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 40,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 40,
                  child: TextField(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                        hintText: 'Send the Sample',
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 228, 220, 220).withOpacity(0.4),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 240, 235, 235))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 234, 234))),
                      )),
                ),
              ),
              SizedBox(
                child: CarouselSlider.builder(
                  itemCount: 3,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: height * 0.35,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                  itemBuilder: (context, i, id) {
                    return GestureDetector(
                      child: Column(children: [
                        SizedBox(
                          child: slider_containers(context, i),
                        ),
                      ]),
                      onTap: () {},
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 36.0, top: 20.0, bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular circle',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.05),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'more',
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 106, 106)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
                padding:
                    const EdgeInsets.only(left: 36.0, top: 20.0, bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The circle to join',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.05),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'more',
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 106, 106)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
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
                                      builder: (context) => CircleDPage(
                                        img: msg[index].icimage,
                                        name: msg[index].name,
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
                              SizedBox(
                                  width: width * 0.17,
                                  height: height * 0.037,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.red)),
                                      onPressed: () {},
                                      child: Text(
                                        'Joined',
                                        style:
                                            TextStyle(fontSize: width * 0.025),
                                      )))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget slider_containers(context, int i) {
  final double width = MediaQuery.of(context).size.width;
  final double height = MediaQuery.of(context).size.height;
  if (i == 0) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 247, 236, 206)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'How do you Create Your Circle?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Create'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/dog.png',
                width: width * 0.3,
                height: height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  } else if (i == 1) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 224, 224, 224)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'How do you Create Your Circle?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Create'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/dog2.png',
                width: width * 0.3,
                height: height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  } else {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 237, 245, 230)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'How do you Create Your Circle?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Create'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/dog3.png',
                width: width * 0.3,
                height: height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
