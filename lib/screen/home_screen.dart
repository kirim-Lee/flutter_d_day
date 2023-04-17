import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DDay(),
          _CoupleImage()
        ],
      )),
    );
  }
}

// 디데이 계산 위젯
class _DDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('DDay Widget');
  }
}

// 커플 이미지 위젯
class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
          "asset/img/middle_img.png",
          height: MediaQuery.of(context).size.height / 2
      ),
    );
  }
}