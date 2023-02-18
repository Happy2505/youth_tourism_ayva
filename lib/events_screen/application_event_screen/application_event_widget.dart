import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/app_color.dart';

class ApplicationEventWidget extends StatefulWidget {
  ApplicationEventWidget({Key? key}) : super(key: key);

  @override
  State<ApplicationEventWidget> createState() => _ApplicationEventWidgetState();
}

class _ApplicationEventWidgetState extends State<ApplicationEventWidget> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => ApplicationEventWidget()));
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
      appBar: AppBar(
        title: const Text(
          'Заявка',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 249, 240),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Презентация научных достижений Самарского университета',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 7),
                            Text('29.05.2022 - 29.05.2024',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color.fromARGB(255, 149, 149, 149),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Количество мест',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.number,
              onSubmitted: (value) {
                setState(() {
                  count = int.parse(value);
                });
              },
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'ФИО автора заявки',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Номер телефона',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Электронная почта',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: count,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Участник ${index + 1}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 55, 74, 0)),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'ФИО',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 16),
                          helperStyle: const TextStyle(
                            letterSpacing: 0.4,
                            height: 0.7,
                          ),
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(150, 0, 0, 0),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Телефона',
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 16),
                          helperStyle: const TextStyle(
                            letterSpacing: 0.4,
                            height: 0.7,
                          ),
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(150, 0, 0, 0),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Электронная почта',
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 16),
                          helperStyle: const TextStyle(
                            letterSpacing: 0.4,
                            height: 0.7,
                          ),
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(150, 0, 0, 0),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  );
                }),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
