import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: klighterWhite,
          body: HomeScreen(),
        ));
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
                                  )
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
                  })),
        ],
      ),
    );
  }
}
