import 'package:flutter/material.dart';

import '../../utils/constant_heights.dart';
import '../../widgets/textWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextWidget(
        'Sign Up',
        ConstantHeights.heading3,
        FontWeight.bold,
        const Color(0XFFFFFFFF),
      ),
    );
  }
  Widget sample(){
    return Container();
  }
}
