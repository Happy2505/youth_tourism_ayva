import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Theme/app_color.dart';
import 'login_screen/login_widget.dart';
import 'registration_screen/registration_widget.dart';

class AuthStartWidget extends StatelessWidget {
  const AuthStartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/start.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 70,
            left: 23,
            right: 23,
            child: Text(
              'Приветствуем вас в Программе молодежного и студенческого туризма!',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  color: Color.fromARGB(255, 65, 79, 8),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
              bottom: 50,
              right: 23,
              left: 23,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => const LoginWidget()));
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                             AppColors.MainButtonColor),
                        minimumSize:
                            MaterialStateProperty.all(const Size(312, 40))),
                    child: const Text(
                      'Вход',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => RegistrationWidget()));
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 255, 255)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(312, 40))),
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 14,
                          color: Color.fromARGB(255, 74, 90, 8),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
