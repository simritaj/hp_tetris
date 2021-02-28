import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:hp_tetris/pages/linkedpages/purchased.dart';

class Scanning extends StatefulWidget {
  @override
  _ScanningState createState() => _ScanningState();
}

class _ScanningState extends State<Scanning> {
  String _scanBarcode;
  String productID;

  startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            "#ff6666", "Cancel", true, ScanMode.QR)
        .listen((barcode) => print(barcode));
  }

  Future<String> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      return barcodeScanRes;
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return "None";
    }

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  Widget getProductCard() {
    String id;
    if (productID == null)
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
            color: Color.fromARGB(255, 243, 243, 243),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'No Product Scanned.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            )),
      );
    else
      id = '$productID';

    return Card(
      color: Color.fromARGB(255, 243, 243, 243),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Your product: HP Elite Dragonfly Notebook PC',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Product ID: $id',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '''
              The HP Elite Dragonfly gives a new level of freedom to those on-the-go. This beautifully designed, ultralight business convertible laptop in a stunning dragonfly blue finish features an ultrabright display and advanced security to help keep you safe and productive wherever the day takes you.
              ''',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget getButton() {
    if (productID != null) {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: FlatButton.icon(
            color: Colors.amber,
            onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Purchased()),
                    );
                  },
            icon: Icon(Icons.apps),
            label: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              child: Text(
                'Redeem for blocks now!',
                style: TextStyle(fontSize: 20),
              ),
            )),
      );
    } else
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        title: Text('Scan details'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 120, 157, 219),
      body: SafeArea(
        child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: FlatButton.icon(
                    color: Color.fromARGB(255, 81, 129, 212),
                    onPressed: () async {
                      String scanned = await scanBarcodeNormal();
                      //print(scanned);
                      setState(() {
                        productID = scanned;
                      });
                    },
                    icon: Icon(Icons.center_focus_weak,
                        color: Color.fromARGB(255, 243, 243, 243)),
                    label: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Start scan',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 243, 243, 243)),
                      ),
                    )),
              ),
              getProductCard(),
              getButton(),
            ],
          ),
        ),
      ),
    );
  }
}
