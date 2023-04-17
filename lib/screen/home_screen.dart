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
    SizedBox gap = const SizedBox(height:16);
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        gap,
        Text("U & I", style: textTheme.displayLarge,),
        gap,
        Text("우리 처음 만난 날", style: textTheme.bodyLarge,),
        gap,
        Text("2021.11.23", style: textTheme.bodyMedium,),
        gap,
        IconButton(
            iconSize: 60,
            onPressed: () {},
            icon: const Icon(Icons.favorite, color: Colors.red)
        ),
        gap,
        Text("D+365", style: textTheme.displayMedium)
      ],
    );
  }
}

// 커플 이미지 위젯
class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
          child: Image.asset(
              "asset/img/middle_img.png",
              height: MediaQuery.of(context).size.height / 2
          ),
        ),
    );
  }
}