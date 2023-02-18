import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Theme/app_color.dart';
const List<String> list = <String>['Студент', 'Молодой специалист'];

class ChangeProfileWidget extends StatefulWidget {
  const ChangeProfileWidget({Key? key}) : super(key: key);

  @override
  State<ChangeProfileWidget> createState() => _ChangeProfileWidgetState();
}

class _ChangeProfileWidgetState extends State<ChangeProfileWidget> {
  String dropdownValue = list.first;
  late DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        data.text = DateFormat('dd.MM.yyyy').format(pickedDate).toString();
      });
    }
  }
  final phone = MaskedTextController(mask: '0 (000) 000-00-00');
  final data = MaskedTextController(mask: '00.00.0000');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 215, 215),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
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
                      'Профиль',
                      style: TextStyle(height: 1.8, fontSize: 22),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.exit_to_app_outlined,
                        size: 28,
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height - 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  SizedBox(height: 24),
                  const Text(
                    'Фамилия',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Фамилия",
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
                    'Имя',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Имя",
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
                    'Отчество',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Отчество",
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
                      hintText: "Электронная почта",
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
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    onSaved: (String? value) {
                      phone.text = value == null ? '' : value;
                    },
                    controller: phone,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Номер телефона",
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
                    hint: Text('Роль'),
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
                    'Пол',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Пол",
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
                    'Дата рождения',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    onSaved: (String? value) {
                      data.text = value == null ? '' : value;
                    },
                    controller: data,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 10,
                        minHeight: 2,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => _selectDate(context),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 18.0),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
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
                    'Город отправления',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Город отправления",
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
                    'Ссылка на соцсеть',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Ссылка на соцсеть",
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
                    'ВУЗ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "ВУЗ",
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
                    'Специализация',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    // isExpanded: true,
                    elevation: 2,
                    dropdownColor: Color.fromARGB(255, 241, 241, 241),
                    borderRadius: BorderRadius.circular(20),
                    hint: Text('Выберите из списка'),
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
                  const SizedBox(height: 25),
                  Align(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 217, 217, 217)),
                          minimumSize: MaterialStateProperty.all(const Size(312, 40))),
                      child: const Text(
                        'Сохранить изменения',
                        style: TextStyle(
                            letterSpacing: 0.1,
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
