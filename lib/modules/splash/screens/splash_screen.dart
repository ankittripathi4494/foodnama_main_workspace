// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';
import 'package:foodnamamain/modules/login/screens/login_screen.dart';
import 'package:foodnamamain/utils/images_list.dart';

class SplashScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  SplashScreen({super.key, this.arguments});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      drawer: MyCustomDrawer.getDrawer(),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWidget.assetImageWidget(
                  urlString: ImageAssetList.splashAssetLogo,
                  widthSize: 50,
                  heightSize: 50),
              ImageWidget.networkImageWidget(
                  urlString: ImageNetworkList.splashNetworkLogo,
                  widthSize: 50,
                  heightSize: 50),
              ImageWidget.assetImageWidget(
                  urlString: ImageAssetList.splashAssetLogo,
                  widthSize: 50,
                  heightSize: 50),
              ImageWidget.assetImageWidget(
                  urlString: ImageAssetList.splashAssetLogo,
                  widthSize: 50,
                  heightSize: 50),
            ],
          ),
        ),
      ), //

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/login2', arguments: {
            // "title": "Page not found",
            "inputs": {"input1": "Ankit"}
          });
        },
      ),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
