// ignore_for_file: sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngo_index/screens/home/widgets/carousel.dart';
import 'package:ngo_index/screens/home/widgets/ngolist.dart';
import 'package:ngo_index/utils/colors.dart';
import 'package:ngo_index/widgets/app_heavy_text.dart';
import 'package:ngo_index/widgets/app_text.dart';
import 'package:ngo_index/widgets/blurshadow.dart';
import 'package:ngo_index/screens/home/widgets/search_bar.dart';
import 'package:ngo_index/screens/home/widgets/top_area.dart';

import 'package:ngo_index/utils/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenheight = Dimensions.screenHeight;

    final Widget logo = SvgPicture.asset(
      'assets/images/logo.svg',
      semanticsLabel: "Logo",
    );

    String visitorName = 'Chi Serge';
    String currentNgo = 'PEXIMUS NGO';
    String ngoName = 'DRC';

    List<String> picLinkList = [
      'assets/images/ngo1.jpg',
      'assets/images/ngo1.png',
      'assets/images/ngo3.png',
      'assets/images/ngo4.png',
      'assets/images/ngo5.jpg',
      'assets/images/ngo4.png',
      'assets/images/ngo1.png',
    ];

    print(screenheight);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeScreenTopArea(
                            visitorName: visitorName, currentNgo: currentNgo),
                        const CustomSearchBar(),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height20),
                          child: AppHeavyText(
                            text: "Most Visited NGOs",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Carousel
                  CarouselSlider(
                    items: [
                      CarouselItemImages(
                        ngoName: ngoName,
                        imageLink: picLinkList[0],
                      ),
                      CarouselItemImages(
                        ngoName: ngoName,
                        imageLink: picLinkList[1],
                      ),
                      CarouselItemImages(
                        ngoName: ngoName,
                        imageLink: picLinkList[2],
                      ),
                      CarouselItemImages(
                        ngoName: ngoName,
                        imageLink: picLinkList[3],
                      ),
                      CarouselItemImages(
                        ngoName: ngoName,
                        imageLink: picLinkList[4],
                      )
                    ],
                    options: CarouselOptions(
                      padEnds: true,
                      viewportFraction: 0.85,
                      enlargeCenterPage: true,
                      aspectRatio: 1.7,
                      //  height: 100,
                      enlargeFactor: 0.25,
                    ),
                  ),
                  // NGO list

                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height5),
                    child: AppHeavyText(
                      text: 'NGO List',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  NgoList(picLinkList: picLinkList),
                ],
              ),
            ),
            Center(
              child: SafeArea(
                  child: AppText(
                text: 'Second Page',
              )),
            ),
            Center(
              child: SafeArea(
                  child: AppText(
                text: 'Third Page',
              )),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppColors.secondaryColor.withOpacity(0.3),
                spreadRadius: 1,
                offset: const Offset(0, 0),
                blurRadius: 5,
                blurStyle: BlurStyle.outer)
          ], color: AppColors.textWhite),
          height: Dimensions.font20 * 3,
          child: TabBar(
              indicatorWeight: 0.1,
              indicatorColor: AppColors.boderWhite,
              labelColor: AppColors.primaryColor,
              labelPadding: EdgeInsets.all(0),
              splashFactory: NoSplash.splashFactory,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.only(top: 5),
                  // text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                    iconMargin: EdgeInsets.only(top: 5),
                    // text: "Events",
                    icon: Icon(Icons.event_note_outlined)),
                Tab(
                  iconMargin: EdgeInsets.only(top: 5),
                  // text: "Profile",
                  icon: Icon(Icons.person),
                ),
              ]),
        ),
      ),
    );
  }
}
