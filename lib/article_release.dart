import 'package:flutter/material.dart';

class ArticleRPage extends StatefulWidget {
  const ArticleRPage({super.key});

  @override
  State<ArticleRPage> createState() => _ArticleRPageState();
}

class _ArticleRPageState extends State<ArticleRPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
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
              Text(
                'Writing articles',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.05),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Next',
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
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the Title',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.white)),
                ),
                style: TextStyle(fontSize: width * 0.06),
              ),
              TextField(
                style: TextStyle(fontSize: width * 0.03),
                decoration: InputDecoration(
                  hintText: 'the input text...',
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
            ],
          ),
        ),
      ],
    ));
  }
}
