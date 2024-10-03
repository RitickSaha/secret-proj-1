import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';
import 'package:lemmehandle/Data_models/Product_models/inventory_products.dart';

TextStyle subStyle = new TextStyle( fontFamily: 'Utsaah',
  fontSize: 15,
  color: const Color(0xffffffff),
  fontWeight: FontWeight.w700,);
class Invoice_create extends StatefulWidget {
  @override
  _Invoice_createState createState() => _Invoice_createState();
}

class _Invoice_createState extends State<Invoice_create> {
  bool _gstChkboxVisible = false;
   List<Inventory_Products> datalist=new List<Inventory_Products>();
  int i;
  void _gstChkbxChanged(bool value) => setState(() => _gstChkboxVisible = value);

  @override
  Widget build(BuildContext context) {
    datalist.add(new Inventory_Products(192, "Astonish 2xBlue\nToren Denim Jeans",4999.00,3999.90));
    return Scaffold(
      backgroundColor: const Color(0xff04032b),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            children: <Widget>[
              //Head SubHead
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Invoice',
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
                margin: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  'Customer\'s details',
                  style: TextStyle(
                    fontFamily: 'Utsaah',
                    fontSize: 25,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xff070647),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.amber, width: 1),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white30, width: 2),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Customer's Full Name",
                          icon: Icon(
                            Icons.person_outline,
                            color: Colors.white70,
                          ),
                          hintStyle: new TextStyle(
                            color: Colors.white60,
                          )),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xff070647),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.amber, width: 1),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white30, width: 2),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Address of Customer - If any",
                          icon: Icon(
                            Icons.person_pin,
                            color: Colors.white70,
                          ),
                          hintStyle: new TextStyle(
                            color: Colors.white60,
                          )),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xff070647),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.amber, width: 1),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white30, width: 2),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Contact Number - If any",
                          icon: Icon(
                            Icons.phone_forwarded,
                            color: Colors.white70,
                          ),
                          hintStyle: new TextStyle(
                            color: Colors.white60,
                          )),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff070647),
              ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child:  CheckboxListTile(
                        value: _gstChkboxVisible,
                        onChanged: _gstChkbxChanged,
                        title: new Text(
                          'Do he/she has GST Number?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        ),
                  ),
                  _gstChkboxVisible ? Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          cursorColor: Colors.white,
                          decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.white30, width: 2),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Enter GST-IN",
                              hintStyle: new TextStyle(
                                color: Colors.white60,
                              )),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ): new Container(),
                ],
              ),
            ),
          ),
              Container(
                color: Colors.white12,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    dividerThickness: 10,
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          '#',
                          style: TextStyle( fontFamily: 'Utsaah',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Items',
                          style: TextStyle(fontFamily: 'Utsaah',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Quantity/\nUnits',
                          style: TextStyle(fontFamily: 'Utsaah',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Price',
                          style: TextStyle(fontFamily: 'Utsaah',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Sum',
                          style: TextStyle(fontFamily: 'Utsaah',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text('1.',
                            style: subStyle,
                          ),
                          ),
                          DataCell(
                              Container(
                                color: Colors.blueGrey,
                            child: Column(
                              children: <Widget>[
                                Text('${datalist.elementAt(0).products_Code}', style: subStyle, textAlign: TextAlign.start,),
                                Text('${datalist.elementAt(0).product_Name}', style: subStyle,),
                              ],
                            ),
                          )),
                          DataCell(Text('4', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price}', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price*4}', style: subStyle,)),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text('1.',
                            style: subStyle,
                          ),
                          ),
                          DataCell(Column(
                            children: <Widget>[
                              Text('${datalist.elementAt(0).products_Code}', style: subStyle, textAlign: TextAlign.start,),
                              Text('${datalist.elementAt(0).product_Name}', style: subStyle,),
                            ],
                          )),
                          DataCell(Text('4', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price}', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price*4}', style: subStyle,)),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text('1.',
                            style: subStyle,
                          ),
                          ),
                          DataCell(Column(
                            children: <Widget>[
                              Text('${datalist.elementAt(0).products_Code}', style: subStyle, textAlign: TextAlign.start,),
                              Text('${datalist.elementAt(0).product_Name}', style: subStyle,),
                            ],
                          )),
                          DataCell(Text('4', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price}', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price*4}', style: subStyle,)),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text('1.',
                            style: subStyle,
                          ),
                          ),
                          DataCell(Column(
                            children: <Widget>[
                              Text('${datalist.elementAt(0).products_Code}', style: subStyle, textAlign: TextAlign.start,),
                              Text('${datalist.elementAt(0).product_Name}', style: subStyle,),
                            ],
                          )),
                          DataCell(Text('4', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price}', style: subStyle,)),
                          DataCell(Text('${datalist.elementAt(0).product_Price*4}', style: subStyle,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
