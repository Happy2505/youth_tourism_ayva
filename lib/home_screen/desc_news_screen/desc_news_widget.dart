import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_tourism_ayva/home_screen/desc_news_screen/desc_news_model.dart';

import '../../Theme/app_color.dart';

class DescNewsWidget extends StatelessWidget {
  const DescNewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightEvents = MediaQuery.of(context).size.height - 530;
    if (heightEvents < 200) heightEvents = 200;
    final model = context.watch<NewsIDModel>();
    if (model.newsID.isEmpty) return SizedBox();
    final newsID = model.newsID[0];
    return SafeArea(
        child: Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: heightEvents,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image:
                    DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(newsID.images[0].url)
                    ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 28,
                          color: Color.fromARGB(255, 95, 114, 42),
                        )),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 25,
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22,
                      child: Transform.rotate(
                          angle: 5.4,
                          child: IconButton(
                            icon: Icon(
                              Icons.send_rounded,
                              size: 24,
                              color: Color.fromARGB(255, 95, 114, 42),
                            ),
                            onPressed: () => buildConfirmDialog(context),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(newsID.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: 0.15),
                ),
              ])),
          SizedBox(height: 15),
          SizedBox(
            height: 28,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 24),
                itemCount: newsID.hashtags.length,
                itemBuilder: (BuildContext context, int index) {
                  final hash = newsID.hashtags[index];
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(90, 154, 192, 46),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      hash.text,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 55, 74, 0),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    ),
                  );
                }),
          ),
          SizedBox(height: 14),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                Text(newsID.description,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 0.25),
                ),
                SizedBox(height: 14),
              ])),
        ],
      ),
    ));
  }

  void buildConfirmDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(100, 0, 0, 0),
                          blurRadius: 40,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32.0),
                          topRight: Radius.circular(32.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 16),
                        child: Container(
                          height: 4,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 129, 129, 129),
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: Material(
                            child: Text("Поделиться новостью",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(180),
                                  color: Color.fromARGB(255, 0, 119, 255)),
                              child: Image.asset('assets/vk.png'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25)
                    ],
                  ),
                )),
          );
        });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const qwe(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1);
        const end = Offset(0.0, 0.0);
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class qwe extends StatelessWidget {
  const qwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 40,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 16),
                  child: Container(
                    height: 4,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 129, 129, 129),
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Material(
                      child: Text("Поделиться новостью",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black))),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25)
              ],
            ),
          )),
    );
  }
}
