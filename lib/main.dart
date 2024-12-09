import 'package:flutter/material.dart';
import 'pages/root.dart';
import 'theme/color.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/property/property_bloc.dart';
import 'blocs/repositories/property_repository.dart';
import 'pages/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sleek Properties',
      home: BlocProvider(
        create: (_) => PropertyBloc(PropertyRepository()),
        child: LoadingScreen(),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Real Estate App',
  //     theme: ThemeData(
  //       primaryColor: AppColor.primary,
  //     ),
  //     home: const RootApp(),
  //   );
  // }
}
