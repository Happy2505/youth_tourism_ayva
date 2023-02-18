import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationInProfileWidget extends StatelessWidget {
  const InformationInProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 171, 171, 171)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 28,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Text(
                          'Приветствуем Вас в Программе молодежного и студенческого туризма!',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              height: 1.4,
                              color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Цель Программы – создание единого пространства для культурного, профессионального и личностного развития молодежи в России.',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.2,
                              letterSpacing: 0.4,
                              color: Colors.white),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(63, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 6), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 92,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('150+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    Text('университетов',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 82, 82, 82))),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(63, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 6), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 92,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('100+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    Text('городов',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 82, 82, 82))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(63, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 6), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 92,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('70+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    Text('регионов',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 82, 82, 82))),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(63, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 6), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 92,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Все',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    Text('федеральные округа',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 82, 82, 82))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Text(
                                  'Ты можешь стать участником программы, если ты:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      letterSpacing: 0.2,
                                      color:
                                          Color.fromARGB(255, 16, 16, 16))),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  SizedBox(width: 10),
                                  Text('Обучающийся университета',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          letterSpacing: 0.2,
                                          color: Color.fromARGB(
                                              255, 16, 16, 16)))
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                        'Аспирант или молодой учёный до 35 лет',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.2,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                        'Победитель или активист конкурсов или программ платформы «Россия – страна возможностей',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.2,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  SizedBox(width: 10),
                                  Text('Обучающийся университета',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          letterSpacing: 0.2,
                                          color: Color.fromARGB(
                                              255, 16, 16, 16)))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Для тебя доступны следующие направления Программы:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Научно-популярные',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: Color.fromARGB(255, 56, 56, 56))),
                              SizedBox(height: 4),
                              Text('для участников, которые уже выбрали направление своего профессионального развития и осуществляют поездки с целью стажировок на производствах, участия в научных мероприятиях, написания научных работ и т.д.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      letterSpacing: 0.2,
                                      height: 1.3,
                                      color: Color.fromARGB(255, 82, 82, 82))),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Профориентационные',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: Color.fromARGB(255, 56, 56, 56))),
                              SizedBox(height: 4),
                              Text('для путешествующих с целью краткосрочного погружения в интересующие специальности, смены направления обучения, специализации или образовательной организации, а также для освоения новых или дополнительных профессий, навыков и компетенций',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      letterSpacing: 0.2,
                                      height: 1.3,
                                      color: Color.fromARGB(255, 82, 82, 82))),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Культурно-познавательные',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: Color.fromARGB(255, 56, 56, 56))),
                              SizedBox(height: 4),
                              Text('для тех, кто путешествует с целью культурного и личностного развития, а также в личных целях',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      letterSpacing: 0.2,
                                      height: 1.3,
                                      color: Color.fromARGB(255, 82, 82, 82))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('Положение о программе молодежного и студенческого туризма',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('Поручение Пр-753 (2021 г.)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('Поручение Пр-290 (2022 г.)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('План мероприятий научно-популярно туризма до 2024 г.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('Всероссийский реестр научно-популярного туризма',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.note),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text('Концепция развития научно-популярного туризма в РФ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            height: 1.3,
                                            color: Color.fromARGB(
                                                255, 16, 16, 16))),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
