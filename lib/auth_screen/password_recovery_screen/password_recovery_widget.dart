import 'package:flutter/material.dart';

import '../../Theme/app_color.dart';

class PasswordRecoveryWidget extends StatefulWidget {
  const PasswordRecoveryWidget({Key? key}) : super(key: key);

  @override
  State<PasswordRecoveryWidget> createState() => _PasswordRecoveryWidgetState();
}

class _PasswordRecoveryWidgetState extends State<PasswordRecoveryWidget> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Восстановление пароля',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 35),
            const Text(
              'Электронная почта',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "example@mail.ru",
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
            Visibility(
              visible: check,
              replacement: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    child: const Text(
                      'Инструкции по восстановлению пароля отправлены на почту kozhina.elena2001@mail.ru',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 148, 148, 148),
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = false;
                  });
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        AppColors.MainButtonColor),
                    minimumSize:
                        MaterialStateProperty.all(const Size(312, 40))),
                child: const Text(
                  'Восстановить',
                  style: TextStyle(
                      letterSpacing: 0.1,
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
