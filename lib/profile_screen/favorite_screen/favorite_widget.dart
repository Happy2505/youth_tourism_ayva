import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../events_screen/desc_event_screen/desc_event_widget.dart';
import '../../residence_screen/desc_residence_screen/desc_residence_widget.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>  with SingleTickerProviderStateMixin {
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
          body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value)
        {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                          'Избранное',
                          style: TextStyle(height: 1.8, fontSize: 22),
                        )),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24,bottom: 16),
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
                        color:
                        const Color.fromARGB(255, 116, 116, 116),
                      ),
                      tabs: [
                        const Text(
                          'Проживание',
                          style: TextStyle(),
                        ),
                        const Text('События'),
                      ]),
                ),
              ),
            ),
          ];
        },
            body:Container(
              margin: EdgeInsets.only(left: 24,right: 24),
              child: TabBarView(
                controller: _tabController,
                  children: [
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 11),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          // margin: const EdgeInsets.only(left: 24),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => const DescResidenceWidget()));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 160,
                                  child: Stack(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.black12
                                            // gradient: const LinearGradient(
                                            //     colors: [
                                            //       Color.fromARGB(0, 255, 255, 255),
                                            //       Colors.black45
                                            //     ],
                                            //     begin: Alignment.topCenter,
                                            //     end: Alignment.bottomCenter)
                                          )),
                                      Positioned(
                                          bottom: 8,
                                          left: 8,
                                          child: Container(
                                            height: 24,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 6),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: const Color.fromARGB(
                                                  255, 125, 125, 125),
                                            ),
                                            child: const Text(
                                              '900₽-1500₽',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color.fromARGB(
                                                      255, 240, 240, 240),
                                                  letterSpacing: 0.5),
                                            ),
                                          )),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.favorite,
                                              size: 23,
                                              color: Color.fromARGB(255, 77, 77, 77),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                const Text(
                                  "Студенческое общежитие ПВГУС",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 32, 32, 32),
                                      fontSize: 14,
                                      height: 1.2,
                                      letterSpacing: 0.1),
                                ),
                                const Text(
                                  "от 3 до 10 дней",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 134, 134, 134),
                                      fontSize: 14,
                                      height: 1.5,
                                      letterSpacing: 0.1),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: const [
                                    Icon(Icons.location_on_sharp,
                                        size: 18,
                                        color: Color.fromARGB(255, 130, 130, 130)),
                                    Text(
                                      'Тольятти',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 134, 134, 134)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      // padding: const EdgeInsets.only(top: 20),
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.of(context).push(CupertinoPageRoute(
                            //     builder: (context) =>
                            //     DescEventScreenWidget()));
                          },
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/1.png'),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('29.05.2022 - 29.05.2024',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(height: 5),
                                    Text('Посещение центра боевой славы',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(height: 7),
                                    Text('Ульяновская область',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1.4)),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                height: 105,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite)),
                                    Container(
                                      // height: 20,
                                      // width: 70,
                                      decoration: const BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('4000 ₽'),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                    ),
                  ]
              )
            ))
        )
    );
  }
}
