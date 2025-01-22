import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodnamamain/global_blocs/internet/internet_cubit.dart';
import 'package:foodnamamain/utils/routes.dart';

void main(List<String> args) {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(),
        )
      ],
      child: const MaterialApp(
        title: "Foodnama",
        initialRoute: '/', // first navigator route
        onGenerateRoute: GenerateRoutePageSystem.getKnownRoutes,
      ),
    );
  }
}


//MaterialApp