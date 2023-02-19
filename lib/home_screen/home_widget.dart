import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youth_tourism_ayva/domain/factoryes/scren_factory.dart';
import 'package:youth_tourism_ayva/home_screen/story_screen/story_widget.dart';
import '../../Theme/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'desc_news_screen/desc_news_widget.dart';
import 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int activeIndex = 0;
  final _screenFactory = ScreenFactory();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeModel>();
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.GreenColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 223,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/home_logo.png'),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 178),
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
                          const SizedBox(height: 10),
                          Visibility(
                            visible: false,
                            replacement: RandomRes(),
                            child: Container(
                              height: 174,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          right: 8, left: 8, top: 16),
                                      height: 136,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 214, 239, 240),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Не знаешь куда поехать?',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 0, 55, 63),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text('Мы выберем за тебя',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  height: 2,
                                                  color: Color.fromARGB(
                                                      255, 0, 55, 63),
                                                  fontWeight: FontWeight.w500)),
                                          SizedBox(height: 20),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        0),
                                                backgroundColor: MaterialStateProperty.all(
                                                    AppColors.MainButtonColor),
                                                minimumSize:
                                                    MaterialStateProperty.all(
                                                        const Size(170, 28))),
                                            child: const Text(
                                              'В путь!',
                                              style: TextStyle(
                                                  letterSpacing: 0.1,
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 23,
                                      child: Image.asset('assets/ruka.png')),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
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
                              const SizedBox(height: 10),
                              buildIndicator()
                            ],
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 8, left: 9, top: 16, bottom: 10),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/home_near.png'),
                                  ),
                                  color: Color.fromARGB(255, 214, 239, 240),
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromARGB(255, 66, 75, 13),
                                      Color.fromARGB(255, 155, 169, 75),
                                    ],
                                  )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Путешествия рядом",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16,
                                        height: 1.5,
                                        letterSpacing: 0.15),
                                  ),
                                  const Text(
                                    "Поездки в радиусе 700 км",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 12,
                                        height: 1.5,
                                        letterSpacing: 0.15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text('Новости',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(top: 10),
                            itemCount: model.news[0].list.length,
                            itemBuilder: (BuildContext context, int index) {
                              final news = model.news[0].list[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                                      builder: (context) => _screenFactory.makeNewsID(news.id)));
                                },
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:
                                              NetworkImage(news.images[0].url),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.0, top: 10),
                                            child: Text(news.name,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(height: 14);
                            },
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    ));
  }

  Widget buildCardPromo(int index) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => StoryWidget()));
      },
      child: SizedBox(
          height: 173,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/baikal.png'),
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 18, top: 12, right: 15),
                    height: 80,
                    width: MediaQuery.of(context).size.width - 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(100, 0, 0, 0),
                            Color.fromARGB(180, 0, 0, 0),
                          ],
                        )),
                    // color: const Color.fromARGB(90, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Путешествие на Байкал",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.5,
                              letterSpacing: 0.15),
                        ),
                        const Text(
                          "Самое глубокое и древнее озеро в мире",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.5,
                              letterSpacing: 0.15),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
    );
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

class RandomRes extends StatefulWidget {
  const RandomRes({Key? key}) : super(key: key);

  @override
  State<RandomRes> createState() => _RandomResState();
}

class _RandomResState extends State<RandomRes> with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(63, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 3, // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            'Томск',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 55, 63)),
          ),
          SizedBox(height: 7),
          Container(
            height: 173,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/home_tomsk.png'),
              ),
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Студенческий жилой комплекс «Маяк»',
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 55, 63)),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 214, 239, 240),
                borderRadius: BorderRadius.circular(20)),
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: const Color.fromARGB(255, 59, 97, 99),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 59, 97, 99),
                ),
                tabs: [
                  const Text('Инфо'),
                  const Text('Номера'),
                ]),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 239, 240),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 8),
                              child: Text(
                                'от 2 до 5 дней',
                                style:
                                    TextStyle(fontSize: 12, letterSpacing: 0.4),
                              ),
                            ),
                            const Divider(thickness: 1),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Без питания',
                                style:
                                    TextStyle(fontSize: 12, letterSpacing: 0.4),
                              ),
                            ),
                            const Divider(thickness: 1),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, bottom: 10),
                              child: Text(
                                'ФГАОУ ВО «Национальный исследовательский Томский государственный университет»',
                                style:
                                    TextStyle(fontSize: 12, letterSpacing: 0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 239, 240),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Тип номера',
                                    style: TextStyle(
                                        fontSize: 12, letterSpacing: 0.4),
                                  ),
                                  Text('3-х местный',
                                      style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 0.1,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            const Divider(thickness: 1),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Кол-во номеров',
                                    style: TextStyle(
                                        fontSize: 12, letterSpacing: 0.4),
                                  ),
                                  Text('7',
                                      style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 0.1,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            const Divider(thickness: 1),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Тариф (1 человек)',
                                    style: TextStyle(
                                        fontSize: 12, letterSpacing: 0.4),
                                  ),
                                  Text('200₽',
                                      style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 0.1,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ]),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.MainButtonColor),
                minimumSize: MaterialStateProperty.all(const Size(312, 40))),
            child: const Text(
              'Оставить заявку',
              style: TextStyle(
                  letterSpacing: 0.1,
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
