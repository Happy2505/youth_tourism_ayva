import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../events_screen/desc_event_screen/desc_event_widget.dart';
import '../../residence_screen/desc_residence_screen/desc_residence_widget.dart';
import '../application_event_in_profile/application_event_in_profile_widget.dart';
import '../application_residence_in_profile/application_residence_in_profile_widget.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  // List<bool> isExpandedd = List.filled(5, false);

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder: (context, value) {
                  return [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                    size: 28,
                                  )),
                            ),
                            const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Бронирование',
                                  style: TextStyle(height: 1.8, fontSize: 22),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, bottom: 16),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 241, 241, 241),
                              borderRadius: BorderRadius.circular(20)),
                          child: TabBar(
                              controller: _tabController,
                              labelColor: Colors.white,
                              unselectedLabelColor:
                                  const Color.fromARGB(255, 80, 80, 80),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 116, 116, 116),
                              ),
                              tabs: const [
                                Text(
                                  'Проживание',
                                ),
                                Text('События'),
                              ]),
                        ),
                      ),
                    ),
                  ];
                },
                body: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TabBarView(controller: _tabController, children: [
                      ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => const ApplicationResidenceInProfile()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                      // color: Colors.black12,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Stack(
                                    children: [
                                      Align(
                                        child: Container(
                                          height: 136,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 240, 240, 240),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                      ),
                                      const Positioned(
                                          left: 73,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 7,
                                          )),
                                      const Positioned(
                                          bottom: 0,
                                          left: 73,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 7,
                                          )),
                                      Positioned(
                                          top: 15,
                                          left: 79,
                                          child: Flex(
                                            direction: Axis.vertical,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: List.generate(
                                                7,
                                                (index) => const Text(
                                                      "|",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          height: 1.5,
                                                          color: Color.fromARGB(
                                                              255,
                                                              201,
                                                              201,
                                                              201)),
                                                    )),
                                          )),
                                      const Positioned(
                                        top: 30,
                                        left: 22,
                                        child: Text('25.05'),
                                      ),
                                      Positioned(
                                        top: 75,
                                        left: 22,
                                        child: Container(
                                          color: Colors.black,
                                          height: 1,
                                          width: 36,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 30,
                                        left: 22,
                                        child: Text('29.05'),
                                      ),
                                      Positioned(
                                        top: 25,
                                        left: 100,
                                        child: Container(
                                          width: 230,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Спортивно-оздоровительный лагерь «Горизонт»',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(height: 14),
                                              Text(
                                                'Севастополь, ул. Челюскинцев, 119',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    letterSpacing: 0.4,
                                                    color: Color.fromARGB(
                                                        255, 135, 135, 135),
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              SizedBox(height: 26),
                                              Text('3 участника'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 20);
                        },
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const ApplicationEventInProfile()));
                        },
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                      // color: Colors.black12,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Stack(
                                    children: [
                                      Align(
                                        child: Container(
                                          height: 136,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 240, 240, 240),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                      ),
                                      const Positioned(
                                          left: 73,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 7,
                                          )),
                                      const Positioned(
                                          bottom: 0,
                                          left: 73,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 7,
                                          )),
                                      Positioned(
                                          top: 15,
                                          left: 79,
                                          child: Flex(
                                            direction: Axis.vertical,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: List.generate(
                                                7,
                                                (index) => const Text(
                                                      "|",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          height: 1.5,
                                                          color: Color.fromARGB(
                                                              255,
                                                              201,
                                                              201,
                                                              201)),
                                                    )),
                                          )),
                                      const Positioned(
                                        top: 30,
                                        left: 22,
                                        child: Text('25.05'),
                                      ),
                                      Positioned(
                                        top: 75,
                                        left: 22,
                                        child: Container(
                                          color: Colors.black,
                                          height: 1,
                                          width: 36,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 30,
                                        left: 22,
                                        child: Text('500₽'),
                                      ),
                                      Positioned(
                                        top: 25,
                                        left: 100,
                                        child: Container(
                                          width: 230,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Посещение центра боевой славы',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(height: 14),
                                              Text(
                                                'Поволжский казачий институт управления и пищевых технолог...',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    letterSpacing: 0.4,
                                                    color: Color.fromARGB(
                                                        255, 135, 135, 135),
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              SizedBox(height: 26),
                                              Text('3 участника'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 20);
                          },
                        ),
                      ),
                    ])))));
  }
}
