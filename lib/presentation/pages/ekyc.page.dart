import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneezing_cheetah/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EkycPage extends StatefulWidget {
  const EkycPage({Key? key}) : super(key: key);

  @override
  State<EkycPage> createState() => _EkycPageState();
}

class _EkycPageState extends State<EkycPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      return showDialog(
          context: context,
          builder: (context) => const SimpleDialog(
                // TODO(roy): Make this responsive
                insetPadding: EdgeInsets.all(12),
                contentPadding: EdgeInsets.all(0),
                children: [PopUpTermsAndConditions()],
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        elevation: 0,
      ),
      body: PopUpTermsAndConditions(),
    );
  }
}

class PopUpTermsAndConditions extends StatelessWidget {
  const PopUpTermsAndConditions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'e-Kyc Confirmation',
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
              textScaleFactor: 1,
            ),
            PopupMenuButton(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.5, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffffe1a8)),
                  child: Row(children: [
                    Text(
                      'English',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      textScaleFactor: 1,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.translate,
                      size: 15,
                    ),
                  ]),
                ),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: PopUpMenuLanguage(
                          language: 'English',
                        ),
                      ),
                      const PopupMenuItem(
                        child: PopUpMenuLanguage(
                          language: 'Tamil',
                        ),
                      ),
                      const PopupMenuItem(
                        child: PopUpMenuLanguage(
                          language: 'Telegu',
                        ),
                      ),
                      const PopupMenuItem(
                        child: PopUpMenuLanguage(
                          language: 'Kannada',
                        ),
                      ),
                      const PopupMenuItem(
                        child: PopUpMenuLanguage(
                          language: 'Marathi',
                          divider: false,
                        ),
                      ),
                    ]),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Please read the document carefully before proceeding further.',
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: const Color(0xff919191),
          ),
          textScaleFactor: 1,
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 15, color: Color(0xffc4c4c4))),
          height: 350,
          child: SfPdfViewer.network(
            'https://www.fleetster.net/legal/standard-terms-and-conditions.pdf',
            canShowScrollStatus: true,
            enableDoubleTapZooming: true,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffcecece))),
              child: Text(
                'Close',
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700, fontSize: 14),
                textAlign: TextAlign.center,
                textScaleFactor: 1,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: const Color(0xffffc351),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Confirm to proceed further',
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700, fontSize: 14),
                textScaleFactor: 1,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ]),
    );
  }
}

class PopUpMenuLanguage extends StatelessWidget {
  const PopUpMenuLanguage({
    Key? key,
    required this.language,
    this.divider = true,
  }) : super(key: key);
  final String language;
  final bool divider;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(language,
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w600, fontSize: 12)),
        if (divider) const Divider(),
      ],
    );
  }
}
