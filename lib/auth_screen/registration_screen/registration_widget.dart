import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/app_color.dart';
import '../personal_information/personal_lnformation_widget.dart';
const List<String> list = <String>['Студент', 'Молодой специалист'];

class RegistrationWidget extends StatefulWidget {
  RegistrationWidget({Key? key}) : super(key: key);

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Регистрация',
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
              'ФИО',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.text,
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
              'Роль',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              // isExpanded: true,
              elevation: 2,
              dropdownColor: Color.fromARGB(255, 241, 241, 241),
              borderRadius: BorderRadius.circular(20),
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
              value: null,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.colorTextInTextField),
              icon: Icon(Icons.keyboard_arrow_down),
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Номер телефона',
              style: TextStyle(fontWeight: FontWeight.w500),
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
              style: TextStyle(fontWeight: FontWeight.w500),
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
            const SizedBox(height: 20),
            const Text(
              'Пароль',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              obscureText: true,
              keyboardType: TextInputType.text,
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
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {

              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                      AppColors.MainButtonColor),
                  minimumSize: MaterialStateProperty.all(const Size(312, 40))),
              child: const Text(
                'Зарегистрироваться',
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  child: const Text(
                    'Нажимая, вы соглашаетесь c правилами обработки и передачи данных',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => PersonalInformationWidget()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
