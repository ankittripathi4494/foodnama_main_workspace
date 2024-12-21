import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';
import 'package:foodnamamain/utils/images_list.dart';

// ignore: must_be_immutable
class CustomerListScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  CustomerListScreen({super.key, required this.arguments});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBarsWidgets.appBarVer2(
        title: Text(widget.arguments!.containsKey('title')
            ? widget.arguments!['title']
            : "Customer List"),
      ),
      drawer: MyCustomDrawer.getDrawer(),
      body: Center(
        child: ImageWidget.assetImageWidget(
            urlString: ImageAssetList.splashAssetLogo,
            widthSize: 80,
            heightSize: 80,
            backgroundColor: Colors.red),
      ),
      floatingActionButton: const SizedBox.shrink(),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
