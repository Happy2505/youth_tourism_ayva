import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../events_screen/desc_event_screen/desc_event_widget.dart';
import '../../residence_screen/desc_residence_screen/desc_residence_widget.dart';

class ApplicationInProfileWidget extends StatefulWidget {
  const ApplicationInProfileWidget({Key? key}) : super(key: key);

  @override
  State<ApplicationInProfileWidget> createState() => _ApplicationInProfileWidgetState();
}

class _ApplicationInProfileWidgetState extends State<ApplicationInProfileWidget>  with SingleTickerProviderStateMixin {
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
                          'Заявки',
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
                    ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      // padding: const EdgeInsets.only(top: 20),
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) =>
                                 DescEventScreenWidget()));
                          },
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/1.png'),
                              const SizedBox(width: 15),
                              Expanded(
                                child: SizedBox(
                                  height: 90,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Спортивно-оздоровительный лагерь «Горизонт»',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              height: 1.4
                                          )),
                                      SizedBox(height: 10),
                                      Text('29.05.2022 - 29.05.2024',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromARGB(255, 97, 97, 97)
                                          )),
                                      SizedBox(height: 7),
                                      Text('3 участника',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromARGB(255, 97, 97, 97),
                                              height: 1.2)),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
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
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) =>
                                DescEventScreenWidget()));
                          },
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/1.png'),
                              const SizedBox(width: 15),
                              Expanded(
                                child: SizedBox(
                                  height: 90,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Презентация научных достижений Самарского университета',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            height: 1.4
                                          )),
                                      SizedBox(height: 10),
                                      Text('29.05.2022 - 29.05.2024',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromARGB(255, 97, 97, 97)
                                          )),
                                      SizedBox(height: 7),
                                      Text('2 участника',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromARGB(255, 97, 97, 97),
                                              height: 1.2)),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
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
