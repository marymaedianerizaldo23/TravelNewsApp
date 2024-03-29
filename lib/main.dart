import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/news_details_screen.dart';
import 'package:travel_news_app/profile_screen.dart';
import 'package:travel_news_app/size_config.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: klighterWhite,
          body: const ProfileScreen(),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            items:[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0 
                ? SvgPicture.asset('assets/home_selected_icon.svg')
                : SvgPicture.asset('assets/home_unselected_icon.svg'),
              label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1 
                ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2 
                ? SvgPicture.asset('assets/notification_selected_icon.svg')
                : SvgPicture.asset('assets/notification_unselected_icon.svg'),
              label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3 
                ? SvgPicture.asset('assets/profile_selected_icon.svg')
                : SvgPicture.asset('assets/profile_unselected_icon.svg'),
              label: '',
              ),
            ],
          ),
        )
      );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: klightBlue,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://t3.ftcdn.net/jpg/05/91/78/44/360_F_591784413_jjJToWOZ0myZmmaHrt1GKCF2fw4MSlyS.png')),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Back!',
                      style: kPoppinsBold.copyWith(fontSize: 16)),
                  Text('Monday, 3 October',
                      style:
                          kPoppinsRegular.copyWith(color: kGrey, fontSize: 12)),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                    color: kDarkBlue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24.0,
                    spreadRadius: 0.0)
              ],
            ),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  style: kPoppinsRegular.copyWith(color: kBlue, fontSize: 12),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article..',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                          color: klightGrey, fontSize: 12)),
                )),
                Container(
                  decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 50),
                      child: Text(
                        '#Health',
                        style:
                            kPoppinsMedium.copyWith(color: kGrey, fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        '#Music',
                        style:
                            kPoppinsMedium.copyWith(color: kGrey, fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        '#Technology',
                        style:
                            kPoppinsMedium.copyWith(color: kGrey, fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        '#Sports',
                        style:
                            kPoppinsMedium.copyWith(color: kGrey, fontSize: 12),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              height: 304,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(right: 20),
                      height: 304,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                              color: kDarkBlue.withOpacity(0.051),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0)
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 164,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://www.jonnymelon.com/wp-content/uploads/2018/10/daku-island-7.jpg'))),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Flexible(
                              child: Text(
                                  'A Slice of Paradise, A Lifetime of Memories - Siargao.',
                                  style: kPoppinsBold.copyWith(fontSize: 12.5),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                             )
                            ),
                           const SizedBox(height: 16,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: klightBlue,
                                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C5603AQGRQRM6XaoJEg/profile-displayphoto-shrink_800_800/0/1622697307130?e=2147483647&v=beta&t=2BYKn90sbAGxdFE45M0qhrsZWiI166d84R06Q3Vo5NY'),
                                  ),
                                  const SizedBox(width: 12,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Mary Mae Diane Rizaldo',
                                        style: kPoppinsSemiBold.copyWith(fontSize: 10)
                                        ),
                                     Text(
                                        'September 9, 2022',
                                        style: kPoppinsRegular.copyWith(
                                          color:kGrey, 
                                          fontSize: 9)
                                        )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 38,
                                width: 38,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(kBorderRadius), 
                                  color: kLightWhite
                                ),
                                child: SvgPicture.asset('share_icon.svg'),
                              )
                            ],
                           )

                      ],
                    ),
                );
              }
            )
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Short for you',
              style: kPoppinsBold.copyWith(
                color: kBlue, 
                fontSize: 12),
              ),
               Text('View All',
              style: kPoppinsMedium.copyWith(
                color: kBlue, 
                fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                  return Container(
                      padding: const EdgeInsets.all(9),
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      width: 208,
                      height: 88,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            color: kDarkBlue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                           Container(
                            width: 70,
                            height: 70,
                            padding: const EdgeInsets.all(26),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://lp-cms-production.imgix.net/features/2019/05/Palawan-travel-936549056388.jpg?auto=format&w=730&h=630&fit=crop&q=75')
                              )
                            ),
                            child: SvgPicture.asset(
                              'assets/play_icon.svg'
                            ),
                           ),
                           const SizedBox(
                            width: 12
                           ),
                           Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Top trending island is 2022',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsBold.copyWith(
                                    fontSize: 12
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/eye_icon.svg'
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '40,999',
                                      style: kPoppinsMedium.copyWith(
                                        color: kGrey,
                                        fontSize: 12
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          )
                        ]
                      ),
                  );
              }
            ),
          )
        ],
      ),
    );
  }
}
