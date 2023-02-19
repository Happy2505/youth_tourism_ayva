import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'desc_achievement.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({Key? key}) : super(key: key);

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
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      'Мои достижения',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const DescAchievement()));
                              },
                              child: Container(
                                height: 190,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(53, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/kubok.png'),
                                    SizedBox(height: 6),
                                    Text(
                                      'Уровень 1',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('5/5 поездок',
                                      style: TextStyle(
                                          fontSize: 12,
                                          height: 1.5,
                                          color: Color.fromARGB(255, 117, 117, 117),
                                          fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                height: 190,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(63, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/kubok.png'),
                                    SizedBox(height: 6),
                                    Text(
                                      'Уровень 1',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('5/5 поездок',
                                        style: TextStyle(
                                            fontSize: 12,
                                            height: 1.5,
                                            color: Color.fromARGB(255, 117, 117, 117),
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
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
