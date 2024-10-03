import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lemmehandle/Invoice.dart';

class Businessdetails extends StatelessWidget {
  Businessdetails({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04032b),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'DashBoard',
                      style: TextStyle(
                        fontFamily: 'Utsaah',
                        fontSize: 40,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Daily stats',
                          style: TextStyle(
                            fontFamily: 'Utsaah',
                            fontSize: 24,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'View More',
                          style: TextStyle(
                            fontFamily: 'Utsaah',
                            fontSize: 19,
                            color: const Color(0xfffe69ea),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 200.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11.0),
                                      color: const Color(0xb53a1155),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x1b000000),
                                          offset: Offset(2, 4),
                                          blurRadius: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 200.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      color: const Color(0xffb269e2),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 10,
                                    child: Text(
                                      'Sales',
                                      style: TextStyle(
                                        fontFamily: 'Nudista',
                                        fontSize: 19,
                                        color: const Color(0xffb269e2),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Positioned(
                                    top: 45,
                                    left: 10,
                                    child: Container(
                                      width: 180,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Today\'s',
                                            style: TextStyle(
                                              fontFamily: 'SF UI Text',
                                              fontSize: 22,
                                              color: const Color(0xffffffff),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'INR',
                                                style: TextStyle(
                                                    fontFamily: 'SF UI Text',
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0xffffffff),
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                '50,291.00',
                                                style: TextStyle(
                                                  fontFamily: 'SF UI Text',
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 75,
                                    left: 85,
                                    child: Container(
                                      child: Center(
                                        child: Row(
                                          children: <Widget>[
                                            SvgPicture.string(
                                              '<svg viewBox="0.0 0.0 12 12" ><path transform="translate(-11.0, -10.0)" d="M 16.45361328125 10 C 13.4415397644043 10 11 12.44154167175293 11 15.45361328125 C 11 18.46568489074707 13.4415397644043 20.90722846984863 16.45361328125 20.90722846984863 C 19.46568489074707 20.90722846984863 21.9072265625 18.46568489074707 21.9072265625 15.45361328125 C 21.9072265625 12.44154167175293 19.46568489074707 10 16.45361328125 10 Z M 18.55115509033203 15.03410530090332 C 18.38754653930664 15.19771575927734 18.12158012390137 15.19771575927734 17.95797157287598 15.03410530090332 L 16.87312316894531 13.94925689697266 L 16.87312316894531 17.97066688537598 C 16.87312316894531 18.20223426818848 16.6851806640625 18.39017486572266 16.45361328125 18.39017486572266 C 16.22204399108887 18.39017486572266 16.03410530090332 18.20223426818848 16.03410530090332 17.97066688537598 L 16.03410530090332 13.94925689697266 L 14.94925689697266 15.03410530090332 C 14.78564643859863 15.19771575927734 14.51967716217041 15.19771575927734 14.35606861114502 15.03410530090332 C 14.19246196746826 14.87049674987793 14.19246196746826 14.60453033447266 14.35606861114502 14.44092178344727 L 16.15660095214844 12.63954734802246 C 16.32020950317383 12.47593879699707 16.5861759185791 12.47593879699707 16.74978828430176 12.63954734802246 L 18.55115509033203 14.44092178344727 C 18.71476364135742 14.60453033447266 18.71476364135742 14.87049674987793 18.55115509033203 15.03410530090332 Z" fill="#21ce99" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                              height: 20,
                                              width: 20,
                                              fit: BoxFit.fill,
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text(
                                              '9,392.00 ',
                                              style: TextStyle(
                                                  fontFamily: 'SF UI Text',
                                                  fontSize: 18,
                                                  color:
                                                      const Color(0xff21ce99),
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 100,
                                    left: 10,
                                    child: Container(
                                      width: 180,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Yester.\'s',
                                            style: TextStyle(
                                              fontFamily: 'SF UI Text',
                                              fontSize: 22,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'INR',
                                                style: TextStyle(
                                                    fontFamily: 'SF UI Text',
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0xffffffff),
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                '50,291.00',
                                                style: TextStyle(
                                                  fontFamily: 'SF UI Text',
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 40,
                                    child: GestureDetector(
                                      onTap: () => print("see all"),
                                      child: Container(
                                        width: 120.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(55.0),
                                          color: const Color(0xffb269e2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x29000000),
                                              offset: Offset(0, 3),
                                              blurRadius: 6,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: SizedBox(
                                            width: 120.0,
                                            child: Text(
                                              'See More',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontSize: 18,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff04032b),
          primaryColor: Colors.white70,
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Invoice_create(),
                ),
              );
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  SvgPicture.string(
                    '<svg viewBox="0.0 0.0 25.5 20.0" ><path transform="translate(0.5, 0.0)" d="M 0 0 L 16.5 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(8.5, 6.67)" d="M 16.5 0 L 0 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(0.0, 13.33)" d="M 0 0 L 17 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(9.0, 20.0)" d="M 16.5 0 L 0 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(22.0, 0.0)" d="M 0 0 L 1 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(3.0, 6.67)" d="M 1 0 L 0 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(22.0, 13.33)" d="M 0 0 L 1 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(3.0, 20.0)" d="M 1 0 L 0 0" fill="none" fill-opacity="1" stroke="#ffffff" stroke-width="4" stroke-opacity="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  SvgPicture.string(
                    '<svg viewBox="0.0 0.0 20.0 20.0" ><path  d="M 16.25043487548828 20 C 15.50005531311035 20 14.99948883056641 19.5005054473877 14.99948883056641 18.7501392364502 L 14.99948883056641 7.50028133392334 C 14.99948883056641 6.749915599822998 15.50005531311035 6.250421047210693 16.25043487548828 6.250421047210693 L 18.75015830993652 6.250421047210693 C 19.4993953704834 6.250421047210693 20 6.749915599822998 20 7.50028133392334 L 20 18.7501392364502 C 20 19.5005054473877 19.4993953704834 20 18.75015830993652 20 L 16.25043487548828 20 Z M 8.750158309936523 20 C 7.999780178070068 20 7.500314712524414 19.5005054473877 7.500314712524414 18.7501392364502 L 7.500314712524414 1.249859690666199 C 7.500314712524414 0.5006186962127686 7.999780178070068 0 8.750158309936523 0 L 11.24988269805908 0 C 12.00026035308838 0 12.49972534179688 0.5006186962127686 12.49972534179688 1.249859690666199 L 12.49972534179688 18.7501392364502 C 12.49972534179688 19.5005054473877 12.00026035308838 20 11.24988269805908 20 L 8.750158309936523 20 Z M 1.249881982803345 20 C 0.5006458163261414 20 0 19.5005054473877 0 18.7501392364502 L 0 13.75070190429688 C 0 13.00033664703369 0.5006458163261414 12.49971866607666 1.249881982803345 12.49971866607666 L 3.749606609344482 12.49971866607666 C 4.499984264373779 12.49971866607666 5.000590801239014 13.00033664703369 5.000590801239014 13.75070190429688 L 5.000590801239014 18.7501392364502 C 5.000590801239014 19.5005054473877 4.499984264373779 20 3.749606609344482 20 L 1.249881982803345 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 45.0,
                      height: 46.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffd19111),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: SvgPicture.string(
                        '<svg viewBox="0.0 0.0 19.6 22.5" ><path transform="translate(-1.0, 0.0)" d="M 19.21969985961914 0 L 2.401515483856201 0 C 1.560606241226196 0 1 0.5632016062736511 1 1.408003926277161 L 1 22.52806282043457 L 5.204546451568604 19.71205520629883 L 8.007576942443848 22.52806282043457 L 10.81060791015625 19.71205520629883 L 13.61363983154297 22.52806282043457 L 16.41666984558105 19.71205520629883 L 20.6212158203125 22.52806282043457 L 20.6212158203125 1.408003926277161 C 20.6212158203125 0.5632016062736511 20.06061172485352 0 19.21969985961914 0 Z M 16.41666984558105 14.08003902435303 L 5.204546451568604 14.08003902435303 L 5.204546451568604 11.26403141021729 L 16.41666984558105 11.26403141021729 L 16.41666984558105 14.08003902435303 Z M 16.41666984558105 8.448023796081543 L 5.204546451568604 8.448023796081543 L 5.204546451568604 5.632015705108643 L 16.41666984558105 5.632015705108643 L 16.41666984558105 8.448023796081543 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        SvgPicture.string(
                          '<svg viewBox="0.0 0.0 30.0 30.0" ><path  d="M 26.25021171569824 30 L 26.25021171569824 0 L 30 0 L 30 30 L 26.25021171569824 30 Z M 0 30 L 0 0 L 3.749788999557495 0 L 3.749788999557495 30 L 0 30 Z M 20.62552833557129 20.62553215026855 L 20.62552833557129 0 L 24.37531471252441 0 L 24.37531471252441 20.62553215026855 L 20.62552833557129 20.62553215026855 Z M 11.24936771392822 20.62553215026855 L 11.24936771392822 0 L 18.75063323974609 0 L 18.75063323974609 20.62553215026855 L 11.24936771392822 20.62553215026855 Z M 5.624683856964111 20.62553215026855 L 5.624683856964111 0 L 9.374473571777344 0 L 9.374473571777344 20.62553215026855 L 5.624683856964111 20.62553215026855 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: // Adobe XD layer: 'graph-line-6' (group)
                    Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 35.0,
                              height: 28.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: const Color(0x5effffff),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              child: SvgPicture.string(
                                '<svg viewBox="0.0 7.3 20.6 8.6" ><path transform="translate(-3.5, -1.19)" d="M 3.5 17.09179496765137 L 8.423493385314941 10.6690845489502 L 12.34698677062988 16.09179496765137 L 15.61656379699707 12.83816814422607 L 18.88614082336426 16.09179496765137 L 24.11746597290039 8.499998092651367" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
