import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'achievements_screens/achievements_widget.dart';
import 'achievements_screens/top_travelers_widget.dart';
import 'application_in_profile/application_in_profile_widget.dart';
import 'booking_screen/booking_widget.dart';
import 'change_profile_screen/change_profile_widget.dart';
import 'favorite_screen/favorite_widget.dart';
import 'information_in_profile_screen/information_in_profile_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 215, 215),
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
                        image: AssetImage('assets/profile_logo.png'),
                      ),
                    ),
                  )
                ],
              ),
              const Align(
                  child: Text(
                'Профиль',
                style: TextStyle(height: 2.5, fontSize: 22),
              )),
              const SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(top: 128),
                height: MediaQuery.of(context).size.height - 160,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(0, 1, 1, 1)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 24)),
                            elevation: MaterialStateProperty.all(0)),
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const ChangeProfileWidget()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                    backgroundImage: AssetImage('assets/profile_ava.png'),
                                    radius: 36),
                                const SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Кожина Елена",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.15,
                                            color: Colors.black)),
                                    Text('управление аккаунтом',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 0.25,
                                            height: 1.6,
                                            color:
                                                Color.fromARGB(255, 95, 95, 95))),
                                  ],
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromARGB(255, 95, 95, 95),
                              size: 18,
                            )
                          ],
                        )),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 88,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 251, 205),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Уровень 1',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 55, 74, 0)),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '3/5 поездок',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 55, 74, 0)),
                                  ),
                                ],
                              ),
                              CircularPercentIndicator(
                                radius: 31,
                                percent: 0.6,
                                backgroundColor: Colors.transparent,
                                circularStrokeCap: CircularStrokeCap.round,
                                linearGradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromARGB(255, 174, 199, 72),
                                    Color.fromARGB(255, 174, 199, 72),
                                    Color.fromARGB(255, 174, 199, 72),
                                    Color.fromARGB(0, 174, 199, 72),
                                  ],
                                ),
                                center: Text('60%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 55, 74, 0))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const AchievementsWidget()));
                              },
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 244, 251, 205),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 72,
                                child: Align(
                                    child: Text('Мои достижения',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color.fromARGB(255, 55, 74, 0)))),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const TopTravelersWidget()));
                              },
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 244, 251, 205),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 72,
                                child: Align(
                                    child: Text('Топ путешественников',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color.fromARGB(255, 55, 74, 0))
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(0, 1, 1, 1)),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const FavoriteWidget()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Избранное',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 32, 32, 32))),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                    size: 18,
                                  )
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(0, 1, 1, 1)),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) =>
                                        const ApplicationInProfileWidget()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Заявки',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 32, 32, 32))),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                    size: 18,
                                  )
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(0, 1, 1, 1)),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const BookingWidget()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Бронирование',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 32, 32, 32))),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                    size: 18,
                                  )
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(0, 1, 1, 1)),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) =>
                                        const InformationInProfileWidget()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Информация',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 32, 32, 32))),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                    size: 18,
                                  )
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(0, 1, 1, 1)),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {
                                // Navigator.of(context).push(_createRoute());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Помощь',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 32, 32, 32))),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                    size: 18,
                                  )
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
