import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneezing_cheetah/colors.dart';
import 'package:sneezing_cheetah/config.dart';
import 'package:sneezing_cheetah/router.dart';

AppBar PrimaryAppBar(BuildContext context) => AppBar(
      backgroundColor: scaffoldColor,
      elevation: 0,
      title: Container(
        height: 42,
        width: 62,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(appLogo))),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      automaticallyImplyLeading: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 21.0, bottom: 16.0, right: 28.0),
          child: InkWell(
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: oroYellow,
                  size: 14,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'Ekyc',
                  style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, ekycPage);
            },
          ),
        )
      ],
    );
