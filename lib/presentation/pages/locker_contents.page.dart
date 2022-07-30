import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneezing_cheetah/colors.dart';

class LockerContentsPage extends StatelessWidget {
  const LockerContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO(roy): Put all these in a ThemeData
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: scaffoldColor,
        elevation: 0,
        title: Text(
          'Locker Contents',
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          textScaleFactor: 1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 269),
          children: [
            LockerContentCard(),
            LockerContentCard(),
            LockerContentCard()
          ],
        ),
      ),
      floatingActionButton: InkWell(
        child: Container(
          margin: EdgeInsets.only(bottom: 12, left: 10, right: 22),
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
            padding: const EdgeInsets.all(12.5),
            child: Text(
              'Pay',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.black),
            ),
          ),
        ),
        onTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class LockerContentCard extends StatelessWidget {
  const LockerContentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 8),
            height: 110,
            decoration: BoxDecoration(color: Color(0xfff9f9f9)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'SEAL PHOTOS HERE',
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.1),
                textScaleFactor: 1,
                textAlign: TextAlign.center,
              ),
            )),
          ),
          Text(
            'OSS1001',
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w600, fontSize: 12, letterSpacing: 0.1),
            textScaleFactor: 1,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Necklace',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  '02 QTY'.toUpperCase(),
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w800, fontSize: 8),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentDetails(
                      title: 'Quality',
                      content: '22 carats',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ContentDetails(
                      title: 'Stone weight',
                      content: '30 grams',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentDetails(title: 'Gross weight', content: '150 grams'),
                    SizedBox(
                      height: 8,
                    ),
                    ContentDetails(
                      title: 'Net weight / anw',
                      content: '4g / 4g',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffffe1a8)),
            child: Text(
              'view gold photos'.toUpperCase(),
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w800,
                fontSize: 8,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContentDetails extends StatelessWidget {
  const ContentDetails({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w700,
              fontSize: 6,
              letterSpacing: 0.02,
              color: Color(0xff919191)),
          textScaleFactor: 1,
          textAlign: TextAlign.start,
        ),
        Text(
          content,
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: Color(0xff454545)),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
