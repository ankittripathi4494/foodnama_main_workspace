import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodnamamain/global_blocs/internet/internet_cubit.dart';
import 'package:foodnamamain/global_blocs/internet/internet_state.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/image_widget.dart';
import 'package:foodnamamain/utils/images_list.dart';

//! calls when internet is not found
// ignore: must_be_immutable
class NoInternetScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  NoInternetScreen({super.key, required this.arguments});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.connected) {
          Timer(Durations.short4, () {
            Navigator.pushReplacementNamed(context, '/');
          });
        }
      },
      child: Scaffold(
        body: Center(
          child: ImageWidget.assetImageWidget(
              urlString: ImageAssetList.noInternetImageLogo,
              widthSize: 200,
              heightSize: 200,
              backgroundColor: Colors.transparent),
        ),
      ),
    );
  }
}
