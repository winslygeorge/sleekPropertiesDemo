import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/property/property_bloc.dart';
import '../blocs/property/property_event.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger property loading
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PropertyBloc>().add(LoadProperties());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Color(0xff2196f3),
          size: 50.0,
        ),
      ),
    );
  }
}
