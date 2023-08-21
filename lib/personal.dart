import 'package:flutter/material.dart';
import 'detailmodel.dart';
import 'user_center.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  bool dynami = true;
  bool answer = false;
  bool articles = false;
  bool video = false;
  List<Postdetail> post = [
    Postdetail(
        iconimage: 'assets/discover_images/profile2.png',
        name: 'Kate Winslet',
        button: '',
        qoute: "Isn't five-month-old Teddy cute? 😏 😏",
        uploadedImage: 'assets/discover_images/profile.png',
        likes: 1,
        coments: 2,
        share: 3,
        location: "Golden Retriever · Fayetteville"),
    Postdetail(
        iconimage: 'assets/discover_images/profile2.png',
        name: 'Kate Winslet',
        button: '',
        qoute: "Isn't five-month-old Teddy cute? 😏 😏",
        uploadedImage: 'assets/discover_images/profile.png',
        likes: 1,
        coments: 2,
        share: 3,
        location: "Golden Retriever · Fayetteville"),
    Postdetail(
        iconimage: 'assets/discover_images/profile2.png',
        name: 'Kate Winslet',
        button: '',
        qoute: "Isn't five-month-old Teddy cute? 😏 😏",
        uploadedImage: 'assets/discover_images/profile.png',
        likes: 1,
        coments: 2,
        share: 3,
        location: "Golden Retriever · Fayetteville"),
    Postdetail(
        iconimage: 'assets/discover_images/profile2.png',
        name: 'Kate Winslet',
        button: '',
        qoute: "Isn't five-month-old Teddy cute? 😏 😏",
        uploadedImage: 'assets/discover_images/profile.png',
        likes: 1,
        coments: 2,
        share: 3,
        location: "Golden Retriever · Fayetteville"),
    Postdetail(
        iconimage: 'assets/discover_images/profile2.png',
        name: 'Kate Winslet',
        button: '',
        qoute: "Isn't five-month-old Teddy cute? 😏 😏",
        uploadedImage: 'assets/discover_images/profile.png',
        likes: 1,
        coments: 2,
        share: 3,
        location: "Golden Retriever · Fayetteville")
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image.asset('assets/discover_images/profile.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: height * 0.15),
                            child: SizedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('assets/icons/back.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.18),
                            child: Text(
                              'Kate Winslet',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.07),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.06, right: height * 0.13),
                            child: SizedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('assets/icons/edit.png'))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.01),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.06,
                                ),
                                SizedBox(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            'assets/icons/qrcode.png'))),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: width * 0.18,
                                  child: CircleAvatar(
                                    radius: width * 0.17,
                                    backgroundImage: AssetImage(
                                      'assets/discover_images/profile2.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.06, left: height * 0.13),
                            child: SizedBox(
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(_createRoute());
                                    },
                                    icon:
                                        Image.asset('assets/icons/menu.png'))),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: width * 0.02, bottom: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '2985',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(' Followers'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '286',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(' Following'),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.42,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                  'A dog is the only thing that loves you more than you love yourself.'),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My pet'),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.15),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width * 0.055,
                          child: CircleAvatar(
                            radius: width * 0.05,
                            backgroundImage: AssetImage(
                                'assets/discover_images/profile2.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width * 0.055,
                          child: CircleAvatar(
                            radius: width * 0.05,
                            backgroundImage: AssetImage(
                                'assets/discover_images/profile.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.15),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/group.png',
                              width: width * 0.2,
                              height: height * 0.2,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              child: dynami
                  ? dynamic()
                  : answer
                      ? answers()
                      : articles
                          ? article()
                          : videos(),
            )
          ],
        ),
      ),
    );
  }

  Widget dynamic() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Dynamic',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/icons/redline.png',
                        width: width * 0.05,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = true;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Answers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.013,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = true;
                            video = false;
                          },
                          child: Text(
                            'Article',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = false;
                            video = true;
                          },
                          child: Text(
                            'Videos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
              ],
            ),
            ListView.builder(
                itemCount: post.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: SizedBox(
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(18),
                                        child: Image.asset(
                                          post[index].iconimage,
                                          width: width * 0.01,
                                          height: height * 0.01,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.58,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            post[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(post[index].location,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 134, 122, 122))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.07),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(post[index].qoute)),
                            ),
                          ),
                          SizedBox(
                            child: Image.asset(post[index].uploadedImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/like.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].likes.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/commentlogo.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].coments.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/share.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].share.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget answers() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = true;
                            answer = false;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Dynamic',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.013,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Answers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/icons/redline.png',
                        width: width * 0.05,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = true;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Article',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.013,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = false;
                            video = true;
                            setState(() {});
                          },
                          child: Text(
                            'Videos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.013,
                    )
                  ],
                ),
              ],
            ),
            ListView.builder(
                itemCount: post.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: SizedBox(
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(18),
                                        child: Image.asset(
                                          post[index].iconimage,
                                          width: width * 0.01,
                                          height: height * 0.01,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.58,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            post[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(post[index].location,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 134, 122, 122))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.07),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(post[index].qoute)),
                            ),
                          ),
                          SizedBox(
                            child: Image.asset(post[index].uploadedImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/like.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].likes.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/commentlogo.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].coments.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/share.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].share.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget article() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = true;
                            answer = false;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Dynamic',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = true;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Answers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Article',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/icons/redline.png',
                        width: width * 0.05,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = false;
                            video = true;
                            setState(() {});
                          },
                          child: Text(
                            'Videos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
              ],
            ),
            ListView.builder(
                itemCount: post.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: SizedBox(
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(18),
                                        child: Image.asset(
                                          post[index].iconimage,
                                          width: width * 0.01,
                                          height: height * 0.01,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.58,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            post[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(post[index].location,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 134, 122, 122))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.07),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(post[index].qoute)),
                            ),
                          ),
                          SizedBox(
                            child: Image.asset(post[index].uploadedImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/like.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].likes.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/commentlogo.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].coments.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/share.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].share.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget videos() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = true;
                            answer = false;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Dynamic',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = true;
                            articles = false;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Answers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            dynami = false;
                            answer = false;
                            articles = true;
                            video = false;
                            setState(() {});
                          },
                          child: Text(
                            'Article',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(height: height * 0.013)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Videos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/icons/redline.png',
                        width: width * 0.05,
                      ),
                    )
                  ],
                ),
              ],
            ),
            ListView.builder(
                itemCount: post.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: SizedBox(
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(18),
                                        child: Image.asset(
                                          post[index].iconimage,
                                          width: width * 0.01,
                                          height: height * 0.01,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.58,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            post[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(post[index].location,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 134, 122, 122))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.07),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(post[index].qoute)),
                            ),
                          ),
                          SizedBox(
                            child: Image.asset(post[index].uploadedImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/like.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].likes.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/commentlogo.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].coments.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/share.png',
                                          width: width * 0.05,
                                          height: height * 0.025,
                                        ),
                                        Text(post[index].share.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const User(),
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
