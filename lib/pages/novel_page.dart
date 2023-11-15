import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../models/novel.dart';
import 'novel_read_page.dart';

class NovelPage extends StatefulWidget {
  const NovelPage({super.key});

  @override
  State<NovelPage> createState() => _NovelPageState();
}

class _NovelPageState extends State<NovelPage> {
  @override
  Widget build(BuildContext context) {
    final novels = Novel.fetchAll();

    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Novel's List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/snowball.png', height: 70.0),
                  const Text(
                    'So.. we now that you love novels\ncheck it out!\nSnowball and Sammy or tukik :)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8.0,
                    ),
                  ),
                  Image.asset('assets/images/sammy.png', height: 70.0),
                ],
              ),
              const SizedBox(height: 25.0),
              Expanded(
                child: Container(
                  child: CarouselSlider.builder(
                    itemCount: novels.length,
                    itemBuilder: (context, index, realIndex) {
                      return InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return DraggableScrollableSheet(
                                initialChildSize: 0.8,
                                minChildSize: 0.5,
                                maxChildSize: 0.8,
                                builder: (_, controller) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          novels[index].image,
                                          height: 120.0,
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Text(
                                        novels[index].judul,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Divider(color: Colors.grey),
                                      Expanded(
                                        child: ListView(
                                          controller: controller,
                                          children: novels[index]
                                              .chapters
                                              .map(
                                                (chap) => InkWell(
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      8.0,
                                                    ),
                                                    margin:
                                                        const EdgeInsets.only(
                                                      top: 8.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          chap.chapterke,
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey[850],
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'assets/images/ic003.png',
                                                          height: 10.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            NovelReadPage(
                                                          chapters: chap,
                                                          novel: novels[index],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            novels[index].image,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(height: 400.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
