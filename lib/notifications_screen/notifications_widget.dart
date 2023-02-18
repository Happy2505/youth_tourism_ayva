import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_screen/chat_widget.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Сообщения',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 28,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const ChatWidget()));
              },
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdnn21.img.ria.ru/images/156087/28/1560872802_0:778:1536:1642_600x0_80_0_0_606c2d47b6d37951adc9eaf750de22f0.jpg'),
                        radius: 25),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Поддержка",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      color: Colors.black)),
                              Text('Здравствуйте, Елена',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0.25,
                                      height: 1.6,
                                      color: Color.fromARGB(255, 95, 95, 95))),
                              SizedBox(height: 4),
                              Text("17:25",
                                  style: TextStyle(
                                      fontSize: 11,
                                      letterSpacing: 0.5,
                                      color: Color.fromARGB(255, 134, 134, 134))),
                            ],
                          )),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      radius: 8,
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => const ChatWidget()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdnn21.img.ria.ru/images/156087/28/1560872802_0:778:1536:1642_600x0_80_0_0_606c2d47b6d37951adc9eaf750de22f0.jpg'),
                                radius: 25),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Спортивно-оздоровительный лагерь лагерь",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.5,
                                              color: Colors.black)),
                                      Text('Ваша заявка на проживание одобрена',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: 0.25,
                                              height: 1.6,
                                              color: Color.fromARGB(255, 95, 95, 95))),
                                      SizedBox(height: 4),
                                      Text("09.03.2022 ",
                                          style: TextStyle(
                                              fontSize: 11,
                                              letterSpacing: 0.5,
                                              color: Color.fromARGB(255, 134, 134, 134))),
                                    ],
                                  )),
                            ),
                            const CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 217, 217, 217),
                              radius: 8,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 134, 134, 134)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    ));
  }
}
