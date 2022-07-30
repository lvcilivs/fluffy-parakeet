import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneezing_cheetah/bloc/pdf_loader_bloc.dart';
import 'package:sneezing_cheetah/bloc/terms_and_conditions_bloc.dart';
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
          builder: (context) => BlocProvider(
                create: (context) => TermsAndConditionsBloc(),
                child: const SimpleDialog(
                  // TODO(roy): Make this responsive
                  insetPadding: EdgeInsets.all(12),
                  contentPadding: EdgeInsets.all(0),
                  children: [PopUpTermsAndConditions()],
                ),
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
      body: Container(),
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
                    BlocSelector<TermsAndConditionsBloc,
                        TermsAndConditionsState, SelectLanguage>(
                      selector: (state) {
                        return SelectLanguage(selectedLanguage: state.language);
                      },
                      builder: (context, state) {
                        return Text(
                          state.selectedLanguage,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                          textScaleFactor: 1,
                        );
                      },
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
                      PopupMenuItem(
                        value: 'English',
                        onTap: () {
                          context
                              .read<TermsAndConditionsBloc>()
                              .add(SelectLanguage(selectedLanguage: 'English'));
                        },
                        child: const PopUpMenuLanguage(
                          language: 'English',
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Tamil',
                        onTap: () {
                          context
                              .read<TermsAndConditionsBloc>()
                              .add(SelectLanguage(selectedLanguage: 'Tamil'));
                        },
                        child: const PopUpMenuLanguage(
                          language: 'Tamil',
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Telegu',
                        onTap: () {
                          context
                              .read<TermsAndConditionsBloc>()
                              .add(SelectLanguage(selectedLanguage: 'Telegu'));
                        },
                        child: const PopUpMenuLanguage(
                          language: 'Telegu',
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Kannada',
                        onTap: () {
                          context
                              .read<TermsAndConditionsBloc>()
                              .add(SelectLanguage(selectedLanguage: 'Kannada'));
                        },
                        child: const PopUpMenuLanguage(
                          language: 'Kannada',
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Marathi',
                        onTap: () {
                          context
                              .read<TermsAndConditionsBloc>()
                              .add(SelectLanguage(selectedLanguage: 'Marathi'));
                        },
                        child: const PopUpMenuLanguage(
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
        BlocBuilder<TermsAndConditionsBloc, TermsAndConditionsState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 15, color: const Color(0xffc4c4c4))),
              height: 350,
              child: SfPdfViewer.network(
                state.pdfUrl,
                canShowScrollStatus: true,
                enableDoubleTapZooming: true,
              ),
            );
          },
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
