import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';
import 'package:foodnamamain/utils/images_list.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  DashboardScreen({super.key, required this.arguments});

  @override
  State<DashboardScreen> createState() => _DashboarScreenState();
}

class _DashboarScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBarsWidgets.appBarVer4(
        title: Text(widget.arguments!.containsKey('title')
            ? widget.arguments!['title']
            : "Dashboard"),
      ),
      drawer: MyCustomDrawer.getDrawer(),
      body: Center(
        child: ImageWidget.assetImageWidget(
            urlString: ImageAssetList.splashAssetLogo,
            widthSize: 80,
            heightSize: 80,
            backgroundColor: Colors.red),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FlutterBarcodeScanner.scanBarcode(
                  "0xffff0000", "Cancel", true, ScanMode.QR)
              .then((c) {
            print(c);
          });
        },
      ),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
