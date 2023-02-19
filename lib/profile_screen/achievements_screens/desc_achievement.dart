import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Theme/app_color.dart';
import 'ar_screen_widget.dart';

class DescAchievement extends StatelessWidget {
  const DescAchievement({Key? key}) : super(key: key);

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
          'Достижение',
          style:
              TextStyle(fontSize: 22, color: Color.fromARGB(255, 32, 32, 32)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(child: SvgPicture.asset('assets/kubok.svg')),
            SizedBox(height: 48),
            Text(
              'Поздравляем!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text('Вы достигли 1 уровня',
              style: TextStyle(fontSize: 22,height: 1.6, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                  'Отправляйтесь в путешествия, зарабатывайте очки и получайте бонусы от организаций',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, height: 1.5,letterSpacing: 0.15),
              ),
            ),
            SizedBox(height: 39),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const ARScreenWidget()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(20))),
                  elevation:
                  MaterialStateProperty.all(
                      0),
                  backgroundColor: MaterialStateProperty.all(
                      AppColors.MainButtonColor),
                  minimumSize:
                  MaterialStateProperty.all(
                      const Size(312, 40))
              ),
              child: const Text(
                'Поделиться',
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
