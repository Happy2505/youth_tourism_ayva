import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youth_tourism_ayva/Theme/app_color.dart';
import 'package:youth_tourism_ayva/events_screen/desc_event_screen/desc_event_model.dart';

import '../application_event_screen/application_event_widget.dart';

class DescEventScreenWidget extends StatelessWidget {
  DescEventScreenWidget({Key? key}) : super(key: key);

  Future<void> _launchInBrowser(url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightEvents = MediaQuery.of(context).size.height - 530;
    if (heightEvents < 200) heightEvents = 200;
    final model = context.watch<EventIDModel>();
    if(model.eventID.isEmpty) return SizedBox();
    final eventID = model.eventID[0];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => ApplicationEventWidget()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                      AppColors.MainButtonColor),
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
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: heightEvents,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(eventID.images[0].url),
                      ),
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
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
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 28,
                                color: Color.fromARGB(255, 95, 114, 42),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eventID.name,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 4.5,
                            itemBuilder: (context, index) => Icon(
                              Icons.star_rate_rounded,
                              color: Color.fromARGB(255, 245, 140, 16),
                            ),
                            itemCount: 5,
                            itemSize: 25.0,
                            direction: Axis.horizontal,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '4.5',
                            style: TextStyle(
                                color: Color.fromARGB(255, 130, 130, 130)),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${eventID.startDate} - ${eventID.finishDate}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '${eventID.cost} ₽',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 95, 114, 42),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        eventID.university.name,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            letterSpacing: 0.2),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 20,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 117, 117, 117)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0))),
                          onPressed: () => _launchInBrowser(eventID.university.url),
                          child: Text(eventID.university.url,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'О событии',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 28,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 225, 236, 192),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                eventID.speciality,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 95, 114, 42),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        eventID.description,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300,height: 1.5, letterSpacing: 0.25),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
            // Positioned(
            //   bottom: 10,
            //   left: 23,
            //   right: 23,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).push(CupertinoPageRoute(
            //           builder: (context) => ApplicationEventWidget()));
            //     },
            //     style: ButtonStyle(
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20))),
            //         elevation: MaterialStateProperty.all(0),
            //         backgroundColor: MaterialStateProperty.all(
            //             const Color.fromARGB(255, 217, 217, 217)),
            //         minimumSize:
            //             MaterialStateProperty.all(const Size(312, 40))),
            //     child: const Text(
            //       'Оставить заявку',
            //       style: TextStyle(
            //           letterSpacing: 0.1,
            //           fontSize: 14,
            //           color: Colors.black,
            //           fontWeight: FontWeight.w500),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
