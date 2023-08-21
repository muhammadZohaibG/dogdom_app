import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/discover_images/background.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/narrow.png',
                          width: width * 0.08,
                          height: height * 0.05,
                        )),
                  ),
                  Image.asset(
                    'assets/discover_images/person.png',
                    width: width * 0.3,
                    height: height * 0.3,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.35),
                child: SizedBox(
                  height: height * 0.05,
                  child: Text(
                    '02:30:00',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.1),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          'assets/icons/callswitch.png',
                          width: width * 0.22,
                          height: height * 0.14,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                        child: Text(
                          'Switch',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          'assets/icons/callend.png',
                          width: width * 0.22,
                          height: height * 0.14,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                        child: Text(
                          'Hang Up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          'assets/icons/cameraswitch.png',
                          width: width * 0.22,
                          height: height * 0.14,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                        child: Text(
                          'Switch Camera',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
