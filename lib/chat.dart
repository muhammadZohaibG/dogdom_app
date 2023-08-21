import 'package:flutter/material.dart';
import 'callpage.dart';

class ChatPage extends StatefulWidget {
  final String img;
  final String name;
  final String time;
  const ChatPage(
      {super.key, required this.img, required this.name, required this.time});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.img),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Text(
                      widget.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (context) => CallPage()));
                        },
                        icon: Icon(
                          Icons.phone,
                          size: width * 0.08,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/menu.png',
                        width: width * 0.08,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/icons/dialog.png',
                                    width: width * 0.3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('hi, how are you?'),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: width * 0.05,
                              backgroundImage: AssetImage(widget.img),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: width * 0.05,
                              backgroundImage: AssetImage(
                                  'assets/discover_images/profile.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(213, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(width * 0.03))),
                                  width: width * 0.2,
                                  height: height * 0.05,
                                  alignment: Alignment.center,
                                  child: Text('I am Fine')),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: SizedBox(
                    width: width * 0.9,
                    height: height * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'The input information',
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 247, 241, 241).withOpacity(0.4),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 235, 232, 232))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 231, 230, 230))),
                        // suffixIcon: Icon(Icons.add)
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset(
                                'assets/icons/release.png',
                                width: width * 0.05,
                                height: height * 0.05,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: Icon(
                                Icons.mic,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
