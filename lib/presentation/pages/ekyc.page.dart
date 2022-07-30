import 'package:flutter/material.dart';
import 'package:sneezing_cheetah/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EkycPage extends StatefulWidget {
  const EkycPage({Key? key}) : super(key: key);

  @override
  State<EkycPage> createState() => _EkycPageState();

  @override
  Future<void> initState() async {
    //PDFDocument doc = await PDFDocument.fromAsset('assets/test.pdf');
  }
}

class _EkycPageState extends State<EkycPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        elevation: 0,
      ),
      body: Column(children: [
        Row(
          children: [
            Text('e-Kyc Confirmation'),
            PopupMenuButton(
                child: Container(
                  child: Row(children: [
                    Text('English'),
                    Icon(
                      Icons.translate,
                    ),
                  ]),
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text('English'),
                      ),
                    ])
          ],
        ),
        Text('Terms and condition thing.'),
        Divider(),
        Container(
          height: 500,
          child: SfPdfViewer.network(
            'https://www.fleetster.net/legal/standard-terms-and-conditions.pdf',
            canShowScrollHead: true,
            canShowScrollStatus: true,
          ),
        ),
        Row(children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              child: Text('Close'),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              child: Text('Confirm to proceed further'),
            ),
          )
        ]),
      ]),
    );
  }
}
