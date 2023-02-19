import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Theme/app_color.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/auth',(Route<dynamic> route) => false);
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Пропустить',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 245, 140, 16)),
                      ),
                    )),
                SizedBox(height: 100),
                SvgPicture.asset('assets/four.svg'),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Зарабатывай баллы за поездки, достигай новые уровни и получай бонусы от организаций',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromARGB(255, 10, 66, 63)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height-545),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/auth',(Route<dynamic> route) => false);
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.MainButtonColor),
                      minimumSize: MaterialStateProperty.all(const Size(400, 40))),
                  child: const Text(
                    'Далее',
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
