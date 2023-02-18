import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationEventInProfile extends StatelessWidget {
  const ApplicationEventInProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 220, 220),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
                      'Заявка',
                      style: TextStyle(height: 1.8, fontSize: 22),
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Статус:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 32, 32, 32),
                            fontSize: 12,
                            letterSpacing: 0.4)),
                    Text('В обработке',
                        style: TextStyle(
                            color: Color.fromARGB(255, 32, 32, 32),
                            fontSize: 12,
                            letterSpacing: 0.4)),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Презентация научных достижений Самарского университета',
                                  style: TextStyle(
                                      letterSpacing: 0.1,
                                      height: 1.4,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                              SizedBox(height: 5),
                              Text('29.05.2022 - 29.05.2024',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      letterSpacing: 0.1,
                                      height: 1.4,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14))
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color.fromARGB(255, 149, 149, 149),
                        )
                      ],
                    )),
                SizedBox(height: 16),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Количество участников:',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 6),
                        Text('2',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 15),
                        Text('ФИО автора заявки',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 6),
                        Text('Кожина Елена Андреевна',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 15),
                        Text('Телефон',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 6),
                        Text('8937777777',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 15),
                        Text('Электронная почта',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        SizedBox(height: 6),
                        Text('kozhina.elena@mail.ru',
                            style: TextStyle(
                                letterSpacing: 0.1,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                      ],
                    )),
                SizedBox(height: 8),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Участник ${index+1}',
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  height: 1.2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          SizedBox(height: 8),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('ФИО участника',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          color: Color.fromARGB(255, 90, 90, 90),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                  SizedBox(height: 6),
                                  Text('Кожина Елена Андреевна',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                  SizedBox(height: 15),
                                  Text('Телефон',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          color: Color.fromARGB(255, 90, 90, 90),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                  SizedBox(height: 6),
                                  Text('8937777777',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                  SizedBox(height: 15),
                                  Text('Электронная почта',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          color: Color.fromARGB(255, 90, 90, 90),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                  SizedBox(height: 6),
                                  Text('kozhina.elena@mail.ru',
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                ],
                              )),
                          SizedBox(height: 8),
                        ],
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
