import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Theme/app_color.dart';
bool mes = false;
class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdnn21.img.ria.ru/images/156087/28/1560872802_0:778:1536:1642_600x0_80_0_0_606c2d47b6d37951adc9eaf750de22f0.jpg'),
                radius: 15),
            SizedBox(width: 16),
            Text(
              'Поддержка',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
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
      // bottomNavigationBar: BottomAppBar(
      //   child: SizedBox(
      //     height: 70,
      //     child: Padding(
      //       padding: const EdgeInsets.only(right: 20.0, left: 12),
      //       child: Row(
      //         children: [
      //           IconButton(
      //             onPressed: () {},
      //             icon: const Icon(
      //               Icons.add_circle_outline_rounded,
      //               color: Colors.black,
      //               size: 28,
      //             ),
      //           ),
      //           Expanded(
      //             child: TextField(
      //               style: const TextStyle(
      //                   fontWeight: FontWeight.w500,
      //                   fontSize: 12,
      //                   letterSpacing: 0.5),
      //               keyboardType: TextInputType.text,
      //               decoration: InputDecoration(
      //                 suffixIconConstraints: const BoxConstraints(
      //                   minWidth: 10,
      //                   minHeight: 2,
      //                 ),
      //                 suffixIcon: InkWell(
      //                   onTap: () {},
      //                   child: const Padding(
      //                     padding: EdgeInsets.only(right: 8.0),
      //                     child: Icon(
      //                       Icons.arrow_upward,
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                 ),
      //                 hintText: "Сообщение",
      //                 isCollapsed: true,
      //                 contentPadding: const EdgeInsets.symmetric(
      //                     vertical: 13, horizontal: 12),
      //                 helperStyle: const TextStyle(
      //                   letterSpacing: 0.4,
      //                   height: 0.7,
      //                 ),
      //                 labelStyle: const TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                   color: Color.fromARGB(150, 0, 0, 0),
      //                   fontSize: 18,
      //                 ),
      //                 border: OutlineInputBorder(
      //                     borderSide:
      //                         const BorderSide(color: AppColors.colorTextInTextField),
      //                     borderRadius: BorderRadius.circular(20)),
      //                 focusedBorder: OutlineInputBorder(
      //                     borderSide:
      //                         const BorderSide(color: AppColors.colorTextInTextField),
      //                     borderRadius: BorderRadius.circular(20)),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: TextField(
                      onChanged: (v){
                        setState((){
                          if(v!=null) mes = true;
                          if(v.length==0) mes = false;
                        });
                      },
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          letterSpacing: 0.5),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 10,
                          minHeight: 2,
                        ),
                        suffixIcon: Visibility(
                          visible: mes,
                          child: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        hintText: "Сообщение",
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 12),
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
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1,),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 90.0, left: 24),
            child: Container(
              width: 150,
              height: 128,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Stack(
                children: const [
                  Positioned(
                      bottom: 8,
                      right: 8,
                      child: Text(
                        '15:30',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 90.0, right: 24),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12))),
              child: Stack(
                children: const [
                  Positioned(
                      bottom: 8,
                      right: 8,
                      child: Text(
                        '15:30',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
