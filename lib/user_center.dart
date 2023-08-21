import 'package:flutter/material.dart';
import 'settings.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool isswitched = true;
  var value;
  void onchange(bool isswitched) {
    if (isswitched == true) {
      isswitched = false;
      value = 'ON';
      setState(() {});
    } else {
      isswitched = true;
      value = 'off';
      setState(() {});
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    setState(() {});
  }

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
                        'Personal',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 85.0),
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
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 37,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: width * 0.13,
                        backgroundImage:
                            AssetImage('assets/discover_images/profile.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.5,
                              child: Text(
                                'Kate Winslet',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.025),
                              ),
                            ),
                            SizedBox(
                                width: width * 0.5,
                                child: Text('Golden Retriever · Mobile '))
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/icons/qrcode.png',
                        width: width * 0.01,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '9372',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.07),
                        ),
                        Text('Praise')
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '972',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.07),
                        ),
                        Text('Dynamic')
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '372',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.07),
                        ),
                        Text('Share')
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.people_outline),
                        title: Text('Followers'),
                        trailing:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          Text('3562'),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_outlined))
                        ]),
                      ),
                      ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('Following'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Text('35'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          leading: Icon(Icons.star_border_outlined),
                          title: Text('Collections'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Text('2'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          leading: Icon(Icons.shopping_bag_outlined),
                          title: Text('Orders'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Text('62'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          leading: Icon(Icons.mode_night_outlined),
                          title: Text('Dark Mode'),
                          trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Switch(value: isswitched, onChanged: onchange)
                              ])),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SettingPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
