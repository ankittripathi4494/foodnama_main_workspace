import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';
import 'package:foodnamamain/utils/images_list.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  ProfileScreen({super.key, required this.arguments});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBarsWidgets.appBarVer2(
        title: Text(widget.arguments!.containsKey('title')
            ? widget.arguments!['title']
            : "Profile"),
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
