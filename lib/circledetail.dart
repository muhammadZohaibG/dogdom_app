import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'detailmodel.dart';
import 'package:video_player/video_player.dart';

class CircleDPage extends StatefulWidget {
  final String img;
  final String name;
  const CircleDPage({super.key, required this.img, required this.name});

  @override
  State<CircleDPage> createState() => _CircleDPageState();
}

class _CircleDPageState extends State<CircleDPage> {
  bool dmc = true;
  bool disc = false;
  bool selct = false;
  var get = '';
  late VideoPlayerController controller;
  late Future<void> _initializeVideoPlayerFuture;
  List<Postdetail> post = [
    Postdetail(
        iconimage: 'assets/discover_images/ellipse1.png',
        name: 'Huntington',
        button: 'Follow',
        qoute:
            'With golden retriever together of the day is always short, soon to the New Year, leave you in the city.',
        uploadedImage: 'assets/discover_images/material1.png',
        likes: 500,
        coments: 200,
        share: 15,
        location: 'Golden Retriever · Mobile '),
    Postdetail(
        iconimage: 'assets/discover_images/ellipse2.png',
        name: 'Quentin Raman',
        button: 'Follow',
        qoute:
            'Your dog is only a part of your world, but to your dog, you are the world.😊 😊',
        uploadedImage: 'assets/videos/cutedog.mp4',
        likes: 500,
        coments: 200,
        share: 15,
        location: 'Labrador Peninsula · Atlanta'),
    Postdetail(
        iconimage: 'assets/discover_images/ellipse3.png',
        name: 'Edgar',
        button: 'Follow',
        qoute:
            'If you just because of its cute appearance, silly expression so love, please do not keep it.',
        uploadedImage: '',
        likes: 500,
        coments: 200,
        share: 15,
        location: 'Golden Retriever · Mobile '),
    Postdetail(
        iconimage: 'assets/discover_images/ellipse4.png',
        name: 'Alexandra',
        button: 'Follow',
        qoute: 'Take your dog out and play.',
        uploadedImage: 'assets/images/material.png',
        likes: 500,
        coments: 200,
        share: 15,
        location: 'Labrador Peninsula · Atlanta '),
  ];
  @override
  void initState() {
    super.initState();
    loadvideoplayer();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  loadvideoplayer() {
    controller = VideoPlayerController.asset('assets/videos/cutedog.mp4');
    _initializeVideoPlayerFuture = controller.initialize();
    setState(() {
      controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/discover_images/profile.png',
                    width: width,
                    height: height * 0.226,
                  ).blurred(blur: width * 0.01, colorOpacity: 0.02),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('assets/icons/back.png'))),
                            Padding(
                              padding: const EdgeInsets.only(left: 230.0),
                              child: SizedBox(
                                  width: width * 0.1,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ))),
                            ),
                            SizedBox(
                                child: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('assets/icons/menu.png'))),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: width * 0.10,
                            backgroundImage: AssetImage(
                              'assets/discover_images/profile2.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                    'Dogs Life',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.07,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                    'Dog knowledge sharing, irregularly organized offline exchanges and group buying.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.03),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '545 members',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        'joined',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(
                      child: Text(
                        'Notice Group buying dog food.',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0, right: width * 0.01),
                    child: SizedBox(
                      child: dmc
                          ? dynamic()
                          : disc
                              ? discuss()
                              : select(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dynamic() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Column(
                  children: [
                    Text('Dynamic',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Image.asset(
                      'assets/icons/redline.png',
                      width: width * 0.05,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = false;
                      disc = true;
                      selct = false;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Discuss',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = false;
                      disc = false;
                      selct = true;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Select',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(
            child: alllistview(context),
          ),
        ],
      ),
    );
  }

  Widget discuss() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = true;
                      disc = false;
                      selct = false;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Dynamic',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: width * 0.2,
                child: Column(
                  children: [
                    Text(
                      'Discuss',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Image.asset(
                      'assets/icons/redline.png',
                      width: width * 0.05,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = false;
                      disc = false;
                      selct = true;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Select',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(
            child: discusslists(context),
          )
        ],
      ),
    );
  }

  Widget select() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = true;
                      disc = false;
                      selct = false;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Dynamic',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: width * 0.2,
                child: InkWell(
                    onTap: () {
                      dmc = false;
                      disc = true;
                      selct = false;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          'Discuss',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: width * 0.2,
                child: Column(
                  children: [
                    Text(
                      'Select',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Image.asset(
                      'assets/icons/redline.png',
                      width: width * 0.05,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            child: alllistview(context),
          )
        ],
      ),
    );
  }

  Widget alllistview(context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: post.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      post[index].iconimage,
                      width: width * 0.09,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            post[index].location,
                            style: TextStyle(
                                color: Color.fromARGB(255, 172, 170, 170)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(post[index].qoute),
                ),
              ),
              SizedBox(child: pd(context, index)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset('assets/icons/like.png',
                              width: width * 0.05),
                          Text(post[index].likes.toString()),
                          SizedBox(
                            width: width * 0.06,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset('assets/icons/commentlogo.png',
                              width: width * 0.04),
                          Text(post[index].coments.toString()),
                          SizedBox(
                            width: width * 0.06,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset('assets/icons/share.png',
                              width: width * 0.05),
                          Text(post[index].share.toString()),
                          SizedBox(
                            width: width * 0.06,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }));
  }

  Widget discusslists(context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: post.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return di(context, index);
        }));
  }

  Widget di(context, int i) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    get = post[i].uploadedImage;
    if (get == '') {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  post[i].iconimage,
                  width: width * 0.09,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        post[i].location,
                        style: TextStyle(
                            color: Color.fromARGB(255, 172, 170, 170)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(post[i].qoute),
            ),
          ),
          SizedBox(child: pd(context, i)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset('assets/icons/like.png', width: width * 0.05),
                      Text(post[i].likes.toString()),
                      SizedBox(
                        width: width * 0.06,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset('assets/icons/commentlogo.png',
                          width: width * 0.04),
                      Text(post[i].coments.toString()),
                      SizedBox(
                        width: width * 0.06,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset('assets/icons/share.png',
                          width: width * 0.05),
                      Text(post[i].share.toString()),
                      SizedBox(
                        width: width * 0.06,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
    } else {
      return SizedBox();
    }
  }

  Widget pd(context, int i) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    get = post[i].uploadedImage;
    var all;
    all = get.split('.');
    if (get == '') {
      return SizedBox();
    } else if (all[1] == 'png' || all[1] == 'jpg') {
      return Image.asset(
        post[i].uploadedImage,
        width: width * 0.9,
      );
    } else {
      return InkWell(
        onTap: () {
          controller.play();
          setState(() {});
        },
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );
    }
  }
}
