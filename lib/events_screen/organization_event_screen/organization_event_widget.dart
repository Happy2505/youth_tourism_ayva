import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrganizationEventWidget extends StatefulWidget {
  const OrganizationEventWidget({Key? key}) : super(key: key);

  @override
  State<OrganizationEventWidget> createState() =>
      _OrganizationEventWidgetState();
}

class _OrganizationEventWidgetState extends State<OrganizationEventWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  final Uri _url = Uri.parse('https://www.nstu.ru/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

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
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Container(
                      height: heightEvents,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              blurRadius: 40,
                            ),
                          ],
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: Stack(
                        children: [
                          // Image.asset('assets/12.png',fit: BoxFit.fitHeight,height: heightEvents,),
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
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    size: 28,
                                    color: Color.fromARGB(255, 95, 114, 42),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 21),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Кинологический центр РГАЗУ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                                size: 27,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'г. Балашиха',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 95, 114, 42)),
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 236, 192),
                                borderRadius: BorderRadius.circular(20)),
                            child: TabBar(
                                controller: _tabController,
                                labelColor: Colors.white,
                                unselectedLabelColor:
                                    const Color.fromARGB(255, 55, 74, 0),
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 95, 114, 42),
                                ),
                                tabs: [
                                  const Text(
                                    'Об организации',
                                    style: TextStyle(),
                                  ),
                                  const Text('Контакты'),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 300,
                      child: TabBarView(
                          controller: _tabController,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 23.0),
                              child: Text(
                                'На встрече мы побеседуем об основных правилах собаковладения в городе. Расскажем про курсы дрессировки. Вы узнаете: - что входит в базовую подготовку собаки, - чем отличается общий курс дрессировки от курса управляемая городская собака, -сможете выбрать курс, который наиболее полно будет отвечать вашим потребностям. Узнаете, что игра с собакой это не только игра в мячик или палочку. Мы расскажем, в какие игры и как можно играть с собакой, чтобы это было не только интересно собаке и хозяину, но и полезно для жизни. Мы расскажем про поисковые игры. Что это такое, как в них играть и что это даёт собаке.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    height: 1.4,
                                    letterSpacing: 0.25),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, top: 4),
                                  width: MediaQuery.of(context).size.width,
                                  height: 24,
                                  color: Color.fromARGB(255, 225, 236, 192),
                                  child: const Text('Наименование',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 12),
                                  child: Text('Цой Марина Евгеньевна',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, top: 4),
                                  width: MediaQuery.of(context).size.width,
                                  height: 24,
                                  color: Color.fromARGB(255, 225, 236, 192),
                                  child: const Text('Телефон',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4)),
                                ),
                                SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 32, 32, 32)),
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.all(0))),
                                      onPressed: () =>
                                          _makePhoneCall("346-33-67"),
                                      child: const Text('346-33-67',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, top: 4),
                                  width: MediaQuery.of(context).size.width,
                                  height: 24,
                                  color: Color.fromARGB(255, 225, 236, 192),
                                  child: const Text('Электронная почта',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 12),
                                  child: Text('service@fb.nstu.ru',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                      )),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, top: 4),
                                  width: MediaQuery.of(context).size.width,
                                  height: 24,
                                  color: Color.fromARGB(255, 225, 236, 192),
                                  child: const Text(
                                      'Сайт образовательной организации',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4)),
                                ),
                                SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 32, 32, 32)),
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.all(0))),
                                      onPressed: () => _launchInBrowser(),
                                      child: const Text('https://www.nstu.ru/',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                    const SizedBox(height: 15),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
