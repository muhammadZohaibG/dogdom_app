import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Release',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Release something new',
                style: TextStyle(fontSize: width * 0.06),
              ),
              TextField(
                style: TextStyle(fontSize: width * 0.03),
                decoration: InputDecoration(
                  hintText: 'what you are thinking right now...',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.4),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(
                width: width * 0.32,
                height: height * 0.13,
                child: ColoredBox(
                  color: Color.fromARGB(255, 201, 199, 199),
                  child: Image.asset(
                    'assets/icons/release.png',
                    width: width * 0.02,
                    height: height * 0.04,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
