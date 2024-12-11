import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/modules/login/screens/login_screen.dart';
import 'package:foodnamamain/utils/images_list.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CachedNetworkImage(
          fadeInCurve: Curves.bounceIn,
          fadeOutCurve: Curves.bounceOut,
          alignment: Alignment.topLeft,
          repeat: ImageRepeat.repeatY,
          imageUrl: ImageNetworkList.splashNetworkLogo,
          fit: BoxFit.fill,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider),
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(20))),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          progressIndicatorBuilder: (context, url, progress) =>
              const CircularProgressIndicator(),
          errorWidget: (context, child, loadingProgress) {
            return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(20))),
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              child: const Center(
                child: Text(
                  "Something Error",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 30),
                ),
              ),
            );
          },
        ),
      ), // blank Area
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        },
      ),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
