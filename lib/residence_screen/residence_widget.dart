import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/app_color.dart';
import 'desc_residence_screen/desc_residence_widget.dart';

class ResidentsWidget extends StatelessWidget {
  const ResidentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Stack(
                  children: [
                    const Align(
                      child: Text(
                        'Проживание',
                        style: TextStyle(
                            fontSize: 22, height: 1.8, color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          color: Colors.black,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                          const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 16),
                          hintText: 'Поиск события',
                          prefixIcon: IconButton(
                              icon: const Icon(
                                  Icons.search, color: Colors.black),
                              onPressed: () {}),
                          suffixIcon: IconButton(
                              icon: const Icon(
                                  Icons.tune_rounded, color: Colors.black),
                              onPressed: () {}),
                          filled: true,
                          fillColor: Colors.white.withAlpha(235),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(28)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.colorTextInTextField),
                              borderRadius: BorderRadius.circular(28)),
                        )),
                    SizedBox(height: 16),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 11),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (
                                    context) => const DescResidenceWidget()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 160,
                                child: Stack(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                12),
                                            color: Colors.black12
                                          // gradient: const LinearGradient(
                                          //     colors: [
                                          //       Color.fromARGB(0, 255, 255, 255),
                                          //       Colors.black45
                                          //     ],
                                          //     begin: Alignment.topCenter,
                                          //     end: Alignment.bottomCenter)
                                        ),
                                    ),
                                    // SizedBox(
                                    //   height: 160,
                                    //   width: 152,
                                    //   child: Image.asset(
                                    //       'assets/res.png'),
                                    // ),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        child: Container(
                                          height: 24,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 6),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                12),
                                            color: const Color.fromARGB(205, 225, 236, 192),
                                          ),
                                          child: const Text(
                                            '900₽-1500₽',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color: Color.fromARGB(
                                                    255, 55, 74, 0),
                                                letterSpacing: 0.5),
                                          ),
                                        )),

                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: CircleAvatar(
                                        radius: 19,
                                        backgroundColor: Color.fromARGB(205, 225, 236, 192),
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 23,
                                              color: Color.fromARGB(255, 95, 114, 42),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              const Text(
                                "Студенческое общежитие ПВГУС",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 32, 32, 32),
                                    fontSize: 14,
                                    height: 1.2,
                                    letterSpacing: 0.1),
                              ),
                              const Text(
                                "от 3 до 10 дней",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 134, 134, 134),
                                    fontSize: 14,
                                    height: 1.5,
                                    letterSpacing: 0.1),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: const [
                                  Icon(Icons.location_on_sharp,
                                      size: 18,
                                      color: Color.fromARGB(
                                          255, 130, 130, 130)),
                                  Text(
                                    'Тольятти',
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 134, 134, 134)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
