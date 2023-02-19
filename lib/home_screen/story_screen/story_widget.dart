import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

import '../../Theme/app_color.dart';

class StoryWidget extends StatefulWidget {
  StoryWidget({Key? key}) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  final StoryController controller = StoryController();

bool qwe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.pageProviderImage(AssetImage('assets/story1.png')),
              StoryItem.pageProviderImage(AssetImage('assets/story2.png')),
              StoryItem.pageProviderImage(AssetImage('assets/story3.png')),
              StoryItem.pageProviderImage(AssetImage('assets/story4.png')),
              // StoryItem.pageImage(
              //   url:
              //   "https://cs9.pikabu.ru/post_img/2020/02/27/12/1582835755160185238.jpg",
              //   controller: controller,
              // ),
              // StoryItem.pageProviderImage(AssetImage('assets/story1.png')),
              //
              // StoryItem.pageImage(
              //     url: "https://celes.club/src.php?src=https://celes.club/uploads/posts/2022-01/thumbs/1641980390_1-celes-club-p-vidi-ozera-baikal-priroda-krasivo-foto-2.jpg&w=260&h=390",
              //     controller: controller),
            ],
            onStoryShow: (s) {
              print("Showing a story");
              // setState((){
              //   qwe = !qwe;
              // });
            },
            onComplete: () {
              Navigator.of(context).pop();
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: controller,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ElevatedButton(
                  onPressed: () {},
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
          )
        ],
      ),
    )
    ;
  }
}
