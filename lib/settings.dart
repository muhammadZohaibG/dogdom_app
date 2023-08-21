import 'package:flutter/material.dart';
import 'about.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
                          'Settings',
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
              Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        title: Text('Account and Security'),
                        trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios_outlined))
                            ]),
                      ),
                      ListTile(
                          title: Text('Dark mode'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Text('Closed'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(),
                      ListTile(
                          title: Text('New massage notification'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('Privacy'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('General'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(),
                      ListTile(
                          title: Text('Help and Feedback'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                      ListTile(
                          title: Text('About Dogdom'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(_createRoute());
                                },
                                icon: Icon(Icons.arrow_forward_ios_outlined))
                          ])),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Switch Account',
                        style: TextStyle(
                            color: Colors.black, fontSize: height * 0.02),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log out',
                        style: TextStyle(
                            color: Colors.red, fontSize: height * 0.02),
                      ))
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
    pageBuilder: (context, animation, secondaryAnimation) => const AboutPage(),
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
