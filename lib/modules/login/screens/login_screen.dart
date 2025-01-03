import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/utils/images_list.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  LoginScreen({super.key, required this.arguments});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBarsWidgets.appBarVer2(
        title: Text(widget.arguments!['title']),
      ),
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
