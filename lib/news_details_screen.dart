import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';


class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: klighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical!*50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: klighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: kPaddingHorizontal,
                        vertical: 60
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ), 
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset('assets/arrow_back_icon.svg'
                            ),                          
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              border: Border.all(
                                color: kWhite,
                              )
                            ),
                            padding: const EdgeInsetsDirectional.all(12),
                            child: SvgPicture.asset('assets/bookmark_white_icon.svg'),
                          )
                        ],
                      ),
                    ),
                  )
                ],  
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: Text(
                'Unravel Mysteries of the Maldives',
                style: kPoppinsBold.copyWith(
                  color: kDarkBlue,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
                vertical: 16
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kBorderRadius,
                ),
                border: Border.all(color: kBorderColor,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/6185/6185649.png'),
                  ),
                  const SizedBox(
                      width: 12,
                  ),
                  Text(
                    'Keanu Carpent May 17 • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: 12
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: const EdgeInsetsDirectional.symmetric(
              horizontal: kPaddingHorizontal
              ),
              child: Text(
                'Just say anything, George, say what ever/s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it/s 8:00. Hey, McFly, I thought I told you never',
                style: kPoppinsMedium.copyWith(
                  fontSize: 13,
                  color: kDarkBlue
                ),
              ),
            ),
            const SizedBox(height: 14,)
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80'
];
class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}







