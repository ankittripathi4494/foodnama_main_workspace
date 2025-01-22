// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodnamamain/global_blocs/internet/internet_cubit.dart';
import 'package:foodnamamain/global_blocs/internet/internet_state.dart';
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
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.connected) {
          Timer(Durations.short4, () {
            Navigator.pushReplacementNamed(context, '/login');
          });
        } else if (state == InternetState.disconnected) {
          Timer(Durations.short4, () {
            Navigator.pushReplacementNamed(context, '/no-internet');
          });
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ImageWidget.assetImageWidget(
                urlString: ImageAssetList.splashAssetLogo,
                widthSize: 50,
                heightSize: 50),
          ),
        ), //
      ),
    );
  }
}
