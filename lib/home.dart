import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'model.dart';
import 'detailmodel.dart';
import 'package:video_player/video_player.dart';
import 'article.dart';
import 'search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> post = [
    Post(
        iconimage: 'assets/images/ellipse14.png',
        name: 'Mirabelle Swift',
        button: 'Follow',
        qoute: 'Adwords Keyword Research For Beginners.',
        uploadedImage: 'assets/images/material2.png',
        likes: 500,
        coments: 200,
        share: 15),
    Post(
        iconimage: 'assets/images/ellipse3.png',
        name: 'William Watts',
        button: 'Follow',
        qoute:
            'How To Boost Your Traffic Of Your Blog And Destroy The Competition.😏 😏 😋',
        uploadedImage: 'assets/images/material3.png',
        likes: 500,
        coments: 200,
        share: 15),
    Post(
        iconimage: 'assets/images/el.png',
        name: 'Jorge Long',
        button: 'Follow',
        qoute:
            'A dog is a beloved, intelligent, and very loyal animal, so i like dogs very much',
        uploadedImage: 'assets/images/material.png',
        likes: 500,
        coments: 200,
        share: 15),
    Post(
        iconimage: 'assets/images/el.png',
        name: 'Jorge Long',
        button: 'Follow',
        qoute:
            'A dog is a beloved, intelligent, and very loyal animal, so i like dogs very much',
        uploadedImage: 'assets/images/material.png',
        likes: 500,
        coments: 200,
        share: 15),
  ];
  List<Postdetail> postdiscover = [
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
        uploadedImage: 'assets/images/material2.png',
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
        uploadedImage: 'assets/videos/cutedog.mp4',
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
  bool slt = true;
  bool dscvr = false;
  var get = '';
  late VideoPlayerController controller;
  late Future<void> _initializeVideoPlayerFuture;
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
        body: slt ? select(width, height) : discover(width, height));
  }

  Widget select(double width, double height) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.078,
                  height: height * 0.07,
                ),
                SizedBox(
                    child: TextButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select',
                        style: TextStyle(color: Colors.black),
                      ),
                      Image.asset(
                        'assets/images/ellipse.png',
                        width: width * 0.05,
                        height: height * 0.025,
                      )
                    ],
                  ),
                  onPressed: () {},
                )),
                SizedBox(
                    height: height * 0.084,
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 152, 152)),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      ),
                      onPressed: () {
                        dscvr = true;
                        slt = false;
                        discover(width, height);
                        setState(() {});
                      },
                    )),
                SizedBox(
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/iconbell.png',
                        width: width * 0.05,
                        height: height * 0.025,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.89,
            height: height * 0.06,
            child: TextField(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  hintText: 'Send the Sample',
                  filled: true,
                  fillColor:
                      Color.fromARGB(255, 211, 203, 203).withOpacity(0.4),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 223, 219, 219))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 206, 202, 202))),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child: Image.asset('assets/images/ranking.png')),
                          Text(
                            'Ranking',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child: Image.asset('assets/images/discuss.png')),
                          Text(
                            'Discuss',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child:
                                  Image.asset('assets/images/surrounding.png')),
                          Text(
                            'Surrounding',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            child: CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: height * 0.35,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                reverse: false,
                aspectRatio: 5.0,
              ),
              itemBuilder: (context, i, id) {
                return GestureDetector(
                  child: Column(children: [
                    SizedBox(
                      child: slider_containers(context, i),
                    ),
                  ]),
                  onTap: () {},
                );
              },
            ),
          ),
          ListView.builder(
              itemCount: post.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                      child: index == 2
                          ? Container(
                              height: height * 0.12,
                              width: width * 0.12,
                              child: Row(
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Image.asset(
                                        'assets/images/featured.png'),
                                  ),
                                  MaterialButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                          'assets/images/hotspot.png')),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (context) => ArticlePage(
                                                icon: post[index].iconimage,
                                                name: post[index].name,
                                                qoute: post[index].qoute,
                                                uploadedimage:
                                                    post[index].uploadedImage),
                                          ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                            width: width * 0.6,
                                            child: Text(
                                              post[index].name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(post[index].button),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.red)),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset(post[index].uploadedImage),
                                  ),
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
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text(
                                                  post[index].likes.toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 13.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/commentlogo.png',
                                                  width: 20,
                                                  height: 20),
                                              Text(post[index]
                                                  .coments
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 13.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/share.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text(
                                                  post[index].share.toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            )),
                );
              }),
        ],
      ),
    );
  }

  Widget slider_containers(context, int i) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    if (i == 0) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 248, 226, 160)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          child: Text(
                            'Take me home',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                            'Take care of stray dogs, please take them home'),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Let me'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/dog.png',
                  width: width * 0.3,
                  height: height * 0.2,
                ),
              ],
            ),
          ),
        ),
      );
    } else if (i == 1) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 247, 199, 247)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          child: Text(
                            'Take me home',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                            'Take care of stray dogs, please take them home'),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Let me'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/dog2.png',
                  width: width * 0.3,
                  height: height * 0.2,
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 209, 248, 177)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).width / 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          child: Text(
                            'Take me home',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                            'Take care of stray dogs, please take them home'),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Let me'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/dog3.png',
                  width: width * 0.3,
                  height: height * 0.2,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget pd(context, int i) {
    get = postdiscover[i].uploadedImage;
    var all;
    all = get.split('.');
    if (all[1] == 'png' || all[1] == 'jpg') {
      return Image.asset(postdiscover[i].uploadedImage);
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

  Widget discover(double width, double height) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.078,
                  height: height * 0.07,
                ),
                SizedBox(
                    child: TextButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select',
                        style: TextStyle(
                            color: Color.fromARGB(255, 153, 152, 152)),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      )
                    ],
                  ),
                  onPressed: () {
                    slt = true;
                    dscvr = false;
                    select(width, height);
                    setState(() {});
                  },
                )),
                SizedBox(
                    height: height * 0.084,
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(color: Colors.black),
                          ),
                          Image.asset(
                            'assets/images/ellipse.png',
                            width: width * 0.05,
                            height: height * 0.025,
                          )
                        ],
                      ),
                      onPressed: () {},
                    )),
                SizedBox(
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/iconbell.png',
                        width: width * 0.05,
                        height: height * 0.025,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.89,
            height: height * 0.06,
            child: TextField(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  hintText: 'Send the Sample',
                  filled: true,
                  fillColor:
                      Color.fromARGB(255, 231, 226, 226).withOpacity(0.4),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 233, 232, 232))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 228, 225, 225))),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child: Image.asset('assets/images/nearby.png')),
                          Text(
                            'Nearby',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child:
                                  Image.asset('assets/images/revelation.png')),
                          Text(
                            'Revelation',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                              height: height * 0.06,
                              child: Image.asset('assets/images/purse.png')),
                          Text(
                            'Foster Care',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          ListView.builder(
              itemCount: postdiscover.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: SizedBox(
                      child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width * 0.03),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (context) => ArticlePage(
                                      icon: postdiscover[index].iconimage,
                                      name: postdiscover[index].name,
                                      qoute: postdiscover[index].qoute,
                                      uploadedimage:
                                          postdiscover[index].uploadedImage),
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(18),
                                    child: Image.asset(
                                      postdiscover[index].iconimage,
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
                                        postdiscover[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(postdiscover[index].location,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 134, 122, 122))),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(postdiscover[index].button),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(postdiscover[index].qoute)),
                        ),
                      ),
                      SizedBox(
                        child: pd(context, index),
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
                                    Text(postdiscover[index].likes.toString()),
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
                                    Text(
                                        postdiscover[index].coments.toString()),
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
                                    Text(postdiscover[index].share.toString()),
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
                );
              }),
        ],
      ),
    );
  }
}
