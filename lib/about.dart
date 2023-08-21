import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'About Dogdom',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.05),
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
              Image.asset(
                'assets/icons/logo.png',
                width: width * 0.22,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                child: Text('Dogdom Version 6.0.5'),
              ),
              Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        title: Text('To score'),
                        trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios_outlined))
                            ]),
                      ),
                      ListTile(
                          title: Text('Function is introduced'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('Q&A'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('Privacy policy'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('Feedback'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('Version update'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.18,
              ),
              Text(
                '《Dogdom User Agreement》《Dogdom User Agreement》',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: height * 0.014),
              ),
              Text(
                'Dogdom All Rights Reserved',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromARGB(255, 197, 192, 192),
                    fontSize: height * 0.012),
              ),
              Text(
                'Copyright © 2014-2021 Dogdom All Rights Reserved',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromARGB(255, 197, 192, 192),
                    fontSize: height * 0.012),
              )
            ],
          ),
        ),
      ),
    );
  }
}
