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
  SizedBox gap = const SizedBox(height:16);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gap,
        Text("U & I"),
        gap,
        Text("우리 처음 만난 날"),
        gap,
        Text("2021.11.23"),
        gap,
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        gap,
        Text("D+365")
      ],
    );
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