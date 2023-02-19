import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTravelersWidget extends StatelessWidget {
  const TopTravelersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Топ путешественников',
              style:
              TextStyle(fontSize: 22, color: Color.fromARGB(255, 32, 32, 32)),
            ),
          ),
      backgroundColor: const Color.fromARGB(255, 214, 239, 240),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/top_tr_logo.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: 610,
                left: 45,
                child: Container(
                  height: 127,
                  width: 84,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 0, 58, 61),
                      Color.fromARGB(255, 74, 158, 163),
                    ],
                  )),
                ),
              ),
              Positioned(
                  bottom: 750,
                  left: 45,
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/top_ava.png'),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '12 поездок',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 59, 97, 99)),
                      )
                    ],
                  )),
              Positioned(
                bottom: 610,
                left: 155,
                child: Container(
                  height: 175,
                  width: 84,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 0, 58, 61),
                      Color.fromARGB(255, 74, 158, 163),
                    ],
                  )),
                ),
              ),
              Positioned(
                  bottom: 797,
                  left: 155,
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/top_ava.png'),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '15 поездок',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 59, 97, 99)),
                      )
                    ],
                  )),
              Positioned(
                bottom: 610,
                right: 45,
                child: Container(
                  height: 103,
                  width: 84,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 0, 58, 61),
                      Color.fromARGB(255, 74, 158, 163),
                    ],
                  )),
                ),
              ),
              Positioned(
                  bottom: 725,
                  right: 45,
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/top_ava.png'),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '11 поездок',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 59, 97, 99)),
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 328),
                height: MediaQuery.of(context).size.height - 160,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 11),
                  child: Column(
                    children: [
                      const Text(
                        'Лидеры за год',
                        style: TextStyle(
                            color: Color.fromARGB(255, 59, 97, 99),
                          fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const Text('1', style: TextStyle(fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/profile_ava.png'),
                            radius: 29,
                          ),
                          const SizedBox(width: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Кожина Елена', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('15 поездок', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Text('2', style: TextStyle(fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/profile_ava.png'),
                            radius: 29,
                          ),
                          const SizedBox(width: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Кожина Елена', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('12 поездок', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Text('2', style: TextStyle(fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/profile_ava.png'),
                            radius: 29,
                          ),
                          const SizedBox(width: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Кожина Елена', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('11 поездок', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Text('4', style: TextStyle(fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/profile_ava.png'),
                            radius: 29,
                          ),
                          const SizedBox(width: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Кожина Елена', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('11 поездок', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
