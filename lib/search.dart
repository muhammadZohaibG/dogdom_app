import 'package:flutter/material.dart';
import 'articlemessages.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 19.0),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.72,
                  height: height * 0.055,
                  child: TextField(
                      autofocus: true,
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
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 48.0, left: 36.0, right: 48.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.05),
                ),
                Icon(
                  Icons.delete_outline,
                  size: width * 0.07,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Spring outing'),
              Text('Teddy'),
              Text('Toy'),
              Text('Show MOE'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0, top: 20.0, bottom: 12.0),
            child: Text(
              'Top Search',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.05),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Dog food'),
              Text('Circle'),
              Text('Lost dog revelation'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0, top: 20.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot circle',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.05),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'more',
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 106, 106)),
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
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              child: Text(
                'Popular Q&A',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.05),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/icons/hash.png',
                    width: width * 0.1,
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        child: Text(
                          "What is it about dogs that don't like to eat?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text('132 to answer')
                    ],
                  ),
                ),
                SizedBox(
                  child: Image.asset(
                    'assets/discover_images/dimg2.png',
                    width: width * 0.35,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/icons/hash.png',
                    width: width * 0.1,
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        height: height * 0.03,
                        child: Container(
                          child: Text(
                            "How does the dog have a fever the first time deal with?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Text('132 to answer')
                    ],
                  ),
                ),
                SizedBox(
                  child: Image.asset(
                    'assets/discover_images/dimg2.png',
                    width: width * 0.35,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
