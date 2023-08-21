import 'package:flutter/material.dart';
import 'video_release.dart';
import 'article_release.dart';

class ReleasePage extends StatefulWidget {
  const ReleasePage({super.key});

  @override
  State<ReleasePage> createState() => _ReleasePageState();
}

class _ReleasePageState extends State<ReleasePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
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
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ArticleRPage()));
                                  },
                                  child: Image.asset(
                                    'assets/images/post_article.png',
                                    width: width * 0.44,
                                    height: height * 0.33,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text('Article'),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(40),
                            child: InkWell(
                                onTap: () {},
                                child:
                                    Image.asset('assets/images/dynamic.png')),
                          ),
                        ),
                        SizedBox(
                          child: Text('Dynamic'),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoPage()));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VideoPage()));
                                    },
                                    child:
                                        Image.asset('assets/images/video.png')),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text('Video'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
