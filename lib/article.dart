import 'package:flutter/material.dart';
import 'articlemessages.dart';

class ArticlePage extends StatefulWidget {
  final String icon;
  final String name;
  final String qoute;
  final String uploadedimage;
  const ArticlePage(
      {super.key,
      required this.icon,
      required this.name,
      required this.qoute,
      required this.uploadedimage});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List<Article_message> msg = [
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'Vicky',
        likes: 90,
        messages:
            '''Speak to me often. Even if I don't understand your words, I feel your voice speaking to me. 👉''',
        date: '15 Minutes ago · Reply'),
    Article_message(
        icimage: 'assets/images/ellipse3.png',
        name: 'Tim Noyes',
        likes: 10,
        messages:
            'Take care of me when I get old, for you, too, will grow old. 😋 😋',
        date: '30 Minutes ago · Reply'),
    Article_message(
        icimage: 'assets/images/ellipse14.png',
        name: 'Bill Doefe',
        likes: 16,
        messages:
            'Before you take me home, please remember that my life is likely to last ten to fifteen years. If you abandon me, it will be my greatest pain.',
        date: '31 Minutes ago · Reply'),
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
                    padding: EdgeInsets.only(left: width * 0.3),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: width * 0.08,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: width * 0.08,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(18),
                        child: Image.asset(
                          widget.icon,
                          width: width * 0.01,
                          height: height * 0.01,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: width * 0.6,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Follow'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text(widget.qoute)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(widget.uploadedimage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(
                    "It tiger head, round head, hairy ears, ear tip is? Colored and droopy. Eyes big, round, like a bell. The tip of the nose was dark brown, like a chocolate bar. Large nostrils, wheezing when hot. The hair around the mouth is white, like long beside the beard, can have a man's taste! It likes to use sticky tongue licking our hands, that feeling wet, can be itchy! Its feet are plum shaped, long a thick layer of meat pad, sharp claws into the meat pad, start road not a sound."),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/material.png'),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/material.png'),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''My family has a cute and clever dog, Mary. It's fat, fat and lovely. Its yellow fur is very beautiful. Mary's eyes were round like two topaz stones. Its legs are very long and it can run very fast. The tail, in particular, wagged to and fro when it saw me, as if to show affection to me.
                
                The dog had a very strange appearance, with a flat nose, a wide mouth, swaying ears, and a wrinkled forehead, but in a very orderly way. Many bigger dogs are a little afraid of him and hide from him. In fact, it is disgusting and kind. Every time I take it to the park or climb a mountain, passers-by point at it. I thought, perhaps it was thinking to itself: I am very ugly, but I am very gentle.''',
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Publish my article'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                  width: double.infinity,
                  child: Align(
                      alignment: Alignment.centerLeft, child: Text('Message'))),
            ),
            ListView.builder(
                itemCount: msg.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(18),
                                child: Image.asset(
                                  msg[index].icimage,
                                  width: width * 0.01,
                                  height: height * 0.01,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.6,
                            child: Text(
                              msg[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: SizedBox(
                                child: Row(
                              children: [
                                Text(msg[index].likes.toString()),
                                Image.asset(
                                  'assets/images/like.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(msg[index].messages)),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                msg[index].date,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 172, 167, 167)),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      )
                    ],
                  );
                }),
            Row(
              children: [
                SizedBox(
                  width: width * 0.5,
                  height: height * 0.07,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your opinion',
                        filled: true,
                        fillColor: Color.fromARGB(255, 235, 234, 234),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 207, 207, 207))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 212, 211, 211))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/message.png',
                      width: width * 0.06,
                      height: height * 0.03,
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/like.png',
                      width: width * 0.06,
                      height: height * 0.03,
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/star.png',
                      width: width * 0.06,
                      height: height * 0.03,
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/share.png',
                      width: width * 0.06,
                      height: height * 0.03,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
