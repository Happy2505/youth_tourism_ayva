import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youth_tourism_ayva/residence_screen/desc_residence_screen/desc_residence_model.dart';

import '../../Theme/app_color.dart';
import '../application_residence_screen/application_residence_screen_widget.dart';

class DescResidenceWidget extends StatefulWidget {
  const DescResidenceWidget({Key? key}) : super(key: key);

  @override
  State<DescResidenceWidget> createState() => _DescResidenceWidgetState();
}

class _DescResidenceWidgetState extends State<DescResidenceWidget>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;
  List<bool> isExpandedd = List.filled(5, false);

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 7, vsync: this);
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

    // setState(() {
    //   fixedScroll = _tabController.index == 2;
    // });
  }

  final Uri _url = Uri.parse('https://www.nstu.ru/');

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser() async {
    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightEvents = MediaQuery.of(context).size.height - 530;
    if (heightEvents < 200) heightEvents = 200;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ApplicationResidenceScreenWidget()));
              },
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
          ),
        ),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  Container(
                    height: heightEvents,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/12.png'),
                        ),
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60))),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_rounded,
                                  size: 28,
                                  color: Color.fromARGB(255, 95, 114, 42),
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: 25,
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 22,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 24,
                                  color: Color.fromARGB(255, 95, 114, 42),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      'Студенческое общежитие ПВГУС',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          fontSize: 22),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.location_on_sharp,
                                size: 30,
                                color: Color.fromARGB(255, 55, 74, 0)),
                            SizedBox(width: 5),
                            Text(
                              'Тольятти, ул. Ленинградская, 29',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 134, 134, 134)),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.access_time_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 55, 74, 0)),
                                SizedBox(width: 5),
                                Text(
                                  '2-30 дней',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Color.fromARGB(255, 134, 134, 134)),
                                )
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3),
                            Row(
                              children: const [
                                Icon(Icons.coffee_rounded,
                                    size: 30,
                                    color: Color.fromARGB(255, 55, 74, 0)),
                                SizedBox(width: 5),
                                Text(
                                  'Без питания',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Color.fromARGB(255, 134, 134, 134)),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              )),
              SliverToBoxAdapter(
                child: Container(
                    height: 40,
                    // margin: EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 245, 223),
                        borderRadius: BorderRadius.circular(20)),
                    child: TabBar(
                        physics: const BouncingScrollPhysics(),
                        controller: _tabController,
                        isScrollable: true,
                        // padding: EdgeInsets.only(left: 24),
                        labelColor: Colors.white,
                        unselectedLabelColor:
                            const Color.fromARGB(255, 55, 74, 0),
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w500, letterSpacing: 0.1),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 95, 114, 42),
                        ),
                        tabs: const [
                          Text(
                            'Номера',
                          ),
                          Text('Услуги'),
                          Text('Условия'),
                          Text('Контакты'),
                          Text('Документы'),
                          Text('Отзывы'),
                        ])),
              ),
            ];
          },
          body: Container(
            padding: const EdgeInsets.only(top: 16),
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 24, left: 24),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 245, 223),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //       horizontal: 8.0, vertical: 8),
                          //   child: Image.asset('assets/2.png'),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10,top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Кол-во номеров',
                                  style: TextStyle(
                                      fontSize: 12, letterSpacing: 0.4),
                                ),
                                Text('12 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 0.1,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          const Divider(thickness: 1),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Тариф (1 человек)',
                                  style: TextStyle(
                                      fontSize: 12, letterSpacing: 0.4),
                                ),
                                Text('30₽',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 0.1,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          const Divider(thickness: 1),
                          ExpansionPanelList(
                              elevation: 0,
                              expandedHeaderPadding: const EdgeInsets.all(0),
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              expansionCallback: (int index, bool isExpanded) {
                                setState(() {
                                  isExpandedd[index] = !isExpanded;
                                });
                              },
                              children: [
                                ExpansionPanel(
                                  backgroundColor: Colors.transparent,
                                  headerBuilder:
                                      (BuildContext context, bool isExpanded) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 15),
                                      child: Text(
                                        "Описание",
                                        style: TextStyle(
                                            fontSize: 12, letterSpacing: 0.4),
                                      ),
                                    );
                                  },
                                  canTapOnHeader: true,
                                  body: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10, bottom: 10),
                                    child: Text(
                                        'Экономичный вариант размещения для компании друзей! Максимально выгодное размещение в домах категории 3 - в самом центре оздоровительного лагеря, к морю - 2 минуты, в столовой - 2 минуты. В каждом номере: двухъярусные деревянные кровати Икея, мини-холодильник, шкаф, тумбочки, стулья. Большой балкон, санузел, душевая и умывальник на несколько номеров. Теплая вода, бойлер. Постельные принадлежности, полотенца, комплект посуды. В стоимость размещения не входит стоимость питания. Питание: только завтраки, завтрак+обед, завтрак+обед+ужин, завтрак+ужин. Общая инфраструктура: мангальные и спортивные площадки, большой шатер для проведения мероприятий.'),
                                  ),
                                  isExpanded: isExpandedd[0],
                                )
                              ]),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 24, left: 24),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 245, 223),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Услуга',
                                  style: TextStyle(
                                      fontSize: 12, letterSpacing: 0.4),
                                ),
                                Text('Пляж',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 0.1,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          const Divider(thickness: 1),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Тариф (1 человек)',
                                  style: TextStyle(
                                      fontSize: 12, letterSpacing: 0.4),
                                ),
                                Text('0₽',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 0.1,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          const Divider(thickness: 1),
                          ExpansionPanelList(
                              elevation: 0,
                              expandedHeaderPadding: const EdgeInsets.all(0),
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              expansionCallback: (int index, bool isExpanded) {
                                setState(() {
                                  isExpandedd[index] = !isExpanded;
                                });
                              },
                              children: [
                                ExpansionPanel(
                                  backgroundColor: Colors.transparent,
                                  headerBuilder:
                                      (BuildContext context, bool isExpanded) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 15),
                                      child: Text(
                                        "Описание",
                                        style: TextStyle(
                                            fontSize: 12, letterSpacing: 0.4),
                                      ),
                                    );
                                  },
                                  canTapOnHeader: true,
                                  body: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 10, bottom: 10),
                                      child: Text(
                                          'На территории спортивно-оздоровительного лагеря "Горизонт" располагается современный шатер, оснащенный мебелью и аппаратурой для проведения мероприятий (лекций, мастер-классов и конференций). Вместимость - 100 человек Арендовать помещение со всей необходимой аппаратурой можно за 1550 руб./сут.')),
                                  isExpanded: isExpandedd[0],
                                )
                              ]),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 14, left: 14),
                  child: Column(
                    children: [
                      ExpansionPanelList(
                          elevation: 0,
                          expandedHeaderPadding: const EdgeInsets.all(0),
                          animationDuration: const Duration(milliseconds: 300),
                          expansionCallback: (int index, bool isExpanded) {
                            setState(() {
                              isExpandedd[index] = !isExpanded;
                            });
                          },
                          children: [
                            ExpansionPanel(
                              backgroundColor: Colors.transparent,
                              headerBuilder:
                                  (BuildContext context, bool isExpanded) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 15),
                                  child: Text(
                                    "Перечень необходимых документов и требований для направляющей образовательной организации",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1),
                                  ),
                                );
                              },
                              canTapOnHeader: true,
                              body: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Text(
                                    'Для направляющей образовательной организации необходимо предоставить список группы с указанием паспортных данных участников тура. При бронировании групповых заездов необходимо связаться с сотрудниками СОЛ "Горизонт" для подтверждения брони. Для индивидуального бронирования необходимо связаться с нашим администратором в течение 3-х дней с даты бронирования. В высокий сезон (01.07.-31.08.) необходимо осуществить 100% предоплату бронирования для подтверждения заявки.',
                                    style: TextStyle(
                                        height: 1.3, letterSpacing: 0.4),
                                  )),
                              isExpanded: false,
                            ),
                            ExpansionPanel(
                              backgroundColor: Colors.transparent,
                              headerBuilder:
                                  (BuildContext context, bool isExpanded) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 15),
                                  child: Text(
                                    "Перечень необходимых документов и требований для направляющей образовательной организации",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1),
                                  ),
                                );
                              },
                              canTapOnHeader: true,
                              body: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Text(
                                    'Для направляющей образовательной организации необходимо предоставить список группы с указанием паспортных данных участников тура. При бронировании групповых заездов необходимо связаться с сотрудниками СОЛ "Горизонт" для подтверждения брони. Для индивидуального бронирования необходимо связаться с нашим администратором в течение 3-х дней с даты бронирования. В высокий сезон (01.07.-31.08.) необходимо осуществить 100% предоплату бронирования для подтверждения заявки.',
                                    style: TextStyle(
                                        height: 1.3, letterSpacing: 0.4),
                                  )),
                              isExpanded: false,
                            )
                          ]),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 24, top: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 24,
                      color: const Color.fromARGB(255, 240, 245, 223),
                      child: const Text('Образовательная организация',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                      child: Text(
                          'ФГАОУ ВО «Севастопольский государственный университет»',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 24, top: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 24,
                      color: const Color.fromARGB(255, 240, 245, 223),
                      child: const Text('Сайт образовательной организации',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                    ),
                    SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 32, 32, 32)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0))),
                          onPressed: () => _launchInBrowser(),
                          child: const Text('https://www.sevsu.ru/',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 24, top: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 24,
                      color: const Color.fromARGB(255, 240, 245, 223),
                      child: const Text('Наименование',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                      child: Text('Студенческий туристический клуб',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 24, top: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 24,
                      color: const Color.fromARGB(255, 240, 245, 223),
                      child: const Text('Телефон',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                    ),
                    SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 32, 32, 32)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0))),
                          onPressed: () => _makePhoneCall("+79780324399"),
                          child: const Text('+79780324399',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 24, top: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 24,
                      color: const Color.fromARGB(255, 240, 245, 223),
                      child: const Text('Электронная почта',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                      child: Text('service@fb.nstu.ru',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 24, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 2),
                        child: InkWell(
                          onTap: null,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/note.svg'),
                              const SizedBox(width: 10),
                              const Text(
                                'Документ 1',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                          thickness: 1,
                          color: Color.fromARGB(127, 95, 114, 42)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 2),
                        child: InkWell(
                          onTap: null,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/note.svg'),
                              const SizedBox(width: 10),
                              const Text(
                                'Документ 2',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                          thickness: 1,
                          color: Color.fromARGB(127, 95, 114, 42)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 2),
                        child: InkWell(
                          onTap: null,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/note.svg'),
                              const SizedBox(width: 10),
                              const Text(
                                'Документ 3',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                          thickness: 1,
                          color: Color.fromARGB(127, 95, 114, 42)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 24, left: 24),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 245, 223),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.black26,
                              ),
                              SizedBox(width: 7),
                              Expanded(
                                  child: Text('Кожина Елена',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))),
                              Text('16.12.2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 124, 124, 124),
                                    fontSize: 11,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 4,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: Color.fromARGB(255, 95, 114, 42),
                                ),
                                itemCount: 5,
                                itemSize: 25.0,
                                direction: Axis.horizontal,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '4.5',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 130, 130, 130)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      margin: const EdgeInsets.only(right: 24, left: 24),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 245, 223),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.black26,
                              ),
                              SizedBox(width: 7),
                              Expanded(
                                  child: Text('Козенков Вадим',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))),
                              Text('11.12.2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 124, 124, 124),
                                    fontSize: 11,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 5,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: Color.fromARGB(255, 95, 114, 42),
                                ),
                                itemCount: 5,
                                itemSize: 25.0,
                                direction: Axis.horizontal,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '4.5',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 130, 130, 130)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                              'Отличное обслуживание! Обязательно приеду снова!')
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
