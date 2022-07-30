import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

enum PaymentSchemes { A, B, C, D }

String indianRupeeUnicode = '\u20B9';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Color(0xffffaa07),
                        size: 32,
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Choose Plan & Pay',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        textScaleFactor: 1,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.close,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const PaymentSchemeCards(),
              PaymentSchemeCards(),
              PaymentSchemeCards(),
              PaymentSchemeCards(),
              Container(
                child: Row(children: [
                  Icon(Icons.done),
                  Column(
                    children: [
                      Text('No security deposit'),
                      Text(
                          'Oro Safe does not charge security deposit for your lockers.')
                    ],
                  )
                ]),
              ),
              Text('Tax payable (18%): 260'),
              //Spacer(),
              Container(
                child: Row(children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Duration'),
                              Text('6 Months'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Amount (incl. tax'),
                              Text('1704'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (_) {}),
                          Text('I agree to terms & conditions')
                        ],
                      ),
                      Container(
                        child: Text('Confirm Plan Selection'),
                      )
                    ],
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class PaymentSchemeCards extends StatelessWidget {
  const PaymentSchemeCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xffe6e6e6),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Radio<PaymentSchemes>(
                value: PaymentSchemes.A,
                onChanged: (PaymentSchemes? payment) {},
                groupValue: PaymentSchemes.A,
                activeColor: Colors.green,
              ),
              Text(
                '6 Months',
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
                textScaleFactor: 1,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$indianRupeeUnicode 1444',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                  textScaleFactor: 1,
                ),
                Text('$indianRupeeUnicode 240 monthly'.toUpperCase(),
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                        color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
