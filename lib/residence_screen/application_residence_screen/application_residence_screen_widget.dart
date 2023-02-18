import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/app_color.dart';
const List<String> list = <String>['2-х местный номер', '3-х местный номер'];
const List<String> list2 = <String>['Студент', 'Образовательная организация'];

class ApplicationResidenceScreenWidget extends StatefulWidget {
  const ApplicationResidenceScreenWidget({Key? key}) : super(key: key);

  @override
  State<ApplicationResidenceScreenWidget> createState() => _ApplicationResidenceScreenWidgetState();
}

class _ApplicationResidenceScreenWidgetState extends State<ApplicationResidenceScreenWidget> {
  String dropdownValue = list.first;
  String dropdownValue2 = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(20, 0, 0, 0),
                          blurRadius: 40,
                        ),
                      ],
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
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
                ),
                const SizedBox(height: 20),
                const Text(
                  'Тип размещения',
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
                         BorderSide(color: AppColors.colorTextInTextField),
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
                  'Количество мест',
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
                  'Период проживания',
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
                  'Комментарий',
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
                  'Автор заявки',
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
                        BorderSide(color: AppColors.colorTextInTextField),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  value: null,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.colorTextInTextField),
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: list2.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue2 = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),

                Visibility(
                  visible: dropdownValue2.isNotEmpty,
                  replacement: SizedBox(),
                  child: Visibility(
                    visible: dropdownValue2==list2.first,
                      replacement: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Наименование образовательной организации',
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
                          'Наименование организационного комитета',
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
                          'Контактный телефон',
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
                          'Список участников',
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
                      ],
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            'Телефон',
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
                            'Список участников',
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
                        ],
                      ),
                  ),
                ),
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => ApplicationResidenceScreenWidget()));
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 217, 217, 217)),
                        minimumSize:
                        MaterialStateProperty.all(const Size(312, 40))),
                    child: const Text(
                      'Оставить заявку',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
