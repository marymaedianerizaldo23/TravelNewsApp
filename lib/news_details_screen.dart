import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/size_config.dart';

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
          

          ],
        ),
      ),
    );
  }
}