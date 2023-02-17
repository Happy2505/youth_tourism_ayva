import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../Theme/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'desc_news_screen/desc_news_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.GreenColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Stack(
              children: [
                const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Главная',
                      style: TextStyle(
                          height: 1.8, fontSize: 22, color: Colors.white),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Рекомендуем',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 55, 74, 0)),
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          CarouselSlider.builder(
                              itemCount: 3,
                              options: CarouselOptions(
                                  height: 173,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      activeIndex = index;
                                    });
                                  }),
                              itemBuilder: (context, index, realIndex) {
                                return buildCardPromo(index);
                              }),
                          const SizedBox(height: 15),
                          buildIndicator()
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text('Новости',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 10),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) =>
                                      const DescNewsWidget()));
                            },
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset(
                                    'assets/1.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 5.0, top: 10),
                                        child: Text(
                                            'Стартовал Международный трек Программы Студтуризм',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.25)),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 40,
                                        child: TextButton(
                                            onPressed: null,
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Подробнее',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const SizedBox(width: 4),
                                                const Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 13,
                                                )
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 14);
                        },
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }

  Widget buildCardPromo(int index) {
    return SizedBox(
        height: 173,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl:
                    "https://cdnn21.img.ria.ru/images/156087/28/1560872802_0:778:1536:1642_600x0_80_0_0_606c2d47b6d37951adc9eaf750de22f0.jpg",
                imageBuilder: (context, imageProvider) =>
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                      child: Image(image: imageProvider,fit: BoxFit.cover,),
                    ),
                placeholder: (context, url) =>
                    Image.asset('assets/1.png', fit: BoxFit.cover),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/1.png', fit: BoxFit.cover),
              ),
            ),
            Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 12, top: 12, right: 15),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(80, 0, 0, 0),
                      Color.fromARGB(180, 0, 0, 0),
                    ],
                  )),
                  // color: const Color.fromARGB(90, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Жемчужина Сибири или Галапагосские острова Россиии",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                            letterSpacing: 0.15),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      count: 3,
      activeIndex: activeIndex,
      effect: const WormEffect(
        dotColor: Color.fromARGB(76, 153, 162, 173),
        activeDotColor: Color.fromARGB(255, 153, 162, 173),
        dotWidth: 7,
        dotHeight: 7,
      ),
    );
  }
}
