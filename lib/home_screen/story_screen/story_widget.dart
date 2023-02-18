import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

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
              StoryItem.pageImage(
                url:
                "https://cs9.pikabu.ru/post_img/2020/02/27/12/1582835755160185238.jpg",
                controller: controller,
              ),
              StoryItem.pageProviderImage(AssetImage('assets/story1.png')),

              StoryItem.pageImage(
                  url: "https://celes.club/src.php?src=https://celes.club/uploads/posts/2022-01/thumbs/1641980390_1-celes-club-p-vidi-ozera-baikal-priroda-krasivo-foto-2.jpg&w=260&h=390",
                  controller: controller),
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
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 500,
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           begin: Alignment.bottomCenter,
          //           end: Alignment.topCenter,
          //           colors: [
          //             Color.fromARGB(180, 0, 0, 0),
          //             Color.fromARGB(120, 0, 0, 0),
          //             Color.fromARGB(100, 0, 0, 0),
          //             Color.fromARGB(0, 0, 0, 0),
          //           ],
          //         ),
          //         color: const Color.fromARGB(
          //             255, 255, 255, 255),
          //         borderRadius: BorderRadius.circular(12)),
          //   ),
          // ),
          // Positioned(
          //   bottom: 100,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //     child: Container(
          //       width: MediaQuery.of(context).size.width-70,
          //       child: Text('Каждый год туристы со всего мира приезжают туда, чтобы своими глазами увидеть это чудо сибирской природы. Помимо потрясающе красивых пейзажей, Байкал поражает разнообразием флоры и фауны, а некоторые виды животных и растений, встречающиеся в его водах и на берегах, не обитают больше нигде в мире.',
          //       style: TextStyle(color: Colors.white,letterSpacing: 0.25,height: 2),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    )
    ;
  }
}
