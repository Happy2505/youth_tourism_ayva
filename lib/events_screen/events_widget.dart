import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/app_color.dart';
import 'desc_event_screen/desc_event_widget.dart';
import 'organization_event_screen/organization_event_widget.dart';

class EventsScreenWidget extends StatefulWidget {
  const EventsScreenWidget({Key? key}) : super(key: key);

  @override
  State<EventsScreenWidget> createState() => _EventsScreenWidgetState();
}

class _EventsScreenWidgetState extends State<EventsScreenWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                stretch: true,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                toolbarHeight: 60,
                title: Stack(
                  children: [
                    Align(
                      child: const Text(
                        'События',
                        style: TextStyle(
                            fontSize: 22, height: 1.8, color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.message,
                          color: Colors.black,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  physics: const BouncingScrollPhysics(),
                  isScrollable: true,
                  labelPadding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  indicatorWeight: 3,
                  indicatorColor: Color.fromARGB(255, 95, 114, 42),
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                      _tabController.animateTo(index);
                    });
                  },
                  tabs: const [
                    Text(
                      'Мероприятия',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Организации',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SliverAppBar(
                stretch: true,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                toolbarHeight: 60,
                title: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 16),
                      hintText: 'Поиск события',
                      prefixIcon: IconButton(
                          icon: const Icon(Icons.search, color: Colors.black),
                          onPressed: () {}),
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.tune_rounded,
                              color: Colors.black),
                          onPressed: () {}),
                      filled: true,
                      fillColor: Colors.white.withAlpha(235),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.colorTextInTextField),
                          borderRadius: BorderRadius.circular(28)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.colorTextInTextField),
                          borderRadius: BorderRadius.circular(28)),
                    )),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
              controller: _tabController,
              physics: const BouncingScrollPhysics(),
              children: [
                ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => DescEventScreenWidget()));
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),

                              color: Colors.red
                            ),
                            // child: Image.asset(
                            //   'assets/9.png',
                            //   width: 76,
                            //   height: 104,
                            //   fit: BoxFit.fill,
                            // ),
                          ),
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
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Color.fromARGB(255, 95, 114, 42),
                                    )),
                                Container(
                                  // height: 20,
                                  // width: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(225, 225, 236, 192),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '4000 ₽',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 55, 74, 0),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
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
                ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) =>
                                const OrganizationEventWidget()));
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/1.png'),
                          const SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Кинологический центр РГАЗУ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      )),
                                  const SizedBox(height: 7),
                                  Row(
                                    children: const [
                                      Icon(Icons.location_on_sharp,
                                          color: Color.fromARGB(
                                              255, 130, 130, 130)),
                                      Text(
                                        'Балашиха',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 130, 130, 130)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            height: 105,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_border)),
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
              ]),
        ),
      ),
    );
  }
}
