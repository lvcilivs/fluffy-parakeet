import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneezing_cheetah/colors.dart';
import 'package:sneezing_cheetah/config.dart';
import 'package:sneezing_cheetah/presentation/widgets/dotted_vertical_line.widget.dart';
import 'package:sneezing_cheetah/presentation/widgets/primary_app_bar.widget.dart';
import 'package:sneezing_cheetah/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SizeConfig size = SizeConfig(context);
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: PrimaryAppBar(),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            height: size.safeBlockVertical * 28.9,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    // TODO(roy): Refactor colour code into separate file.
                    color: Color(0xffe6e6e6),
                    style: BorderStyle.solid,
                    width: 0.6)),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 16),
                    child: StatusTrail(),
                  ),
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, bottom: 10, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 12, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'current doorstep locker visit'.toUpperCase(),
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: const Color(0xff919191),
                                ),
                                textScaleFactor: 1,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Locker',
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                                textScaleFactor: 1,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'We will confirm your request shortly.',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: subtleTextColor,
                                ),
                                textScaleFactor: 1,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                              gradient: oroGradient,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.16),
                                    offset: Offset(0, 4),
                                    blurRadius: 10)
                              ]),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Locker Contents',
                                    style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.chevron_right,
                                    size: 20,
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          CategoryHeadline(
            headlineText: 'Advantages of Doorstep Lockers',
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              padding: EdgeInsets.only(top: 11, bottom: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Access lockers at your doorstep.',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 14, fontWeight: FontWeight.w600),
                  textScaleFactor: 1,
                ),
              ]),
            ),
          ),
          CategoryHeadline(
            headlineText: 'A sneak-peek into our Locker Space!',
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 164,
            child: Center(
              child: Icon(
                Icons.play_arrow_outlined,
                size: 24,
              ),
            ),
          ),
          CategoryHeadline(
            headlineText: 'Where are your Locker Items stored?',
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Container(
                    height: 116,
                    width: 136,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 116,
                    width: 136,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 116,
                    width: 136,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
          CategoryHeadline(headlineText: 'Safe & Secure Guarantee'),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 40,
                  width: 59,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(oroSafe), fit: BoxFit.fill)),
                ),
                Container(
                  height: 40,
                  width: 83,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(godrejLogo))),
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(niacLogo))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          )
        ],
      )),
    );
  }
}

class StatusTrail extends StatelessWidget {
  const StatusTrail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 36,
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: oroYellow,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.schedule,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(1, 16),
            painter: DottedVerticalLine(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackgroundColor,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.done,
              size: 24,
              color: subtleTextColor,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(1, 16),
            painter: DottedVerticalLine(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackgroundColor,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.person_outlined,
              size: 24,
              color: subtleTextColor,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(1, 16),
            painter: DottedVerticalLine(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackgroundColor,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.play_arrow_outlined,
              size: 24,
              color: subtleTextColor,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(1, 16),
            painter: DottedVerticalLine(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackgroundColor,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.done_all,
              size: 24,
              color: subtleTextColor,
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(1, 16),
            painter: DottedVerticalLine(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackgroundColor,
          ),
          height: 36,
          child: Center(
            child: Icon(
              Icons.payment_outlined,
              size: 24,
              color: subtleTextColor,
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryHeadline extends StatelessWidget {
  const CategoryHeadline({
    Key? key,
    required this.headlineText,
  }) : super(key: key);

  final String headlineText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16.0),
      child: Row(
        children: [
          Text(
            headlineText,
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: textHeadline2Color,
            ),
            textScaleFactor: 1,
          ),
          Container(
            height: 5,
            decoration: BoxDecoration(
              gradient: oroGradient,
            ),
          ),
          Container(
            height: 5.89,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(oroLogo))),
          )
        ],
      ),
    );
  }
}
