import 'package:flutter/material.dart';
import 'package:sena_aplicacion/Widgets/background.dart';
import 'package:sena_aplicacion/widgets/cardTable.dart';
import 'package:sena_aplicacion/widgets/pageTitle.dart';

// ignore: camel_case_types
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [Background(), _Homebody()],
    ));
  }
}

class _Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}