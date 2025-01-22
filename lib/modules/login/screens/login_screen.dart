import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodnamamain/global_blocs/internet/internet_cubit.dart';
import 'package:foodnamamain/global_blocs/internet/internet_state.dart';
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
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.disconnected) {
          Timer(Durations.short4, () {
            Navigator.pushReplacementNamed(context, '/no-internet');
          });
        }
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBarsWidgets.appBarVer2(
          title: Text(widget.arguments?['title'] ?? ''),
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
      ),
    );
  }
}
