import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DDay(
            firstDay: firstDay,
            onHeartPressed: onHeartPressed,
          ),
          _CoupleImage()
        ],
      )),
    );
  }

  void onHeartPressed () {
    setState(() {
      firstDay = firstDay.subtract(const Duration(days: 1));
    });
  }
}

// 디데이 계산 위젯
class _DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  const _DDay({
    required this.onHeartPressed,
    required this.firstDay
  });

  @override
  Widget build(BuildContext context) {
    SizedBox gap = const SizedBox(height:16);

    final TextTheme textTheme = Theme.of(context).textTheme;
    final DateTime now = DateTime.now();

    return Column(
      children: [
        gap,
        Text("U & I", style: textTheme.displayLarge,),
        gap,
        Text("우리 처음 만난 날", style: textTheme.bodyLarge,),
        gap,
        Text("${firstDay.year}.${firstDay.month}.${firstDay.day}", style: textTheme.bodyMedium,),
        gap,
        IconButton(
            iconSize: 60,
            onPressed: onHeartPressed,
            icon: const Icon(Icons.favorite, color: Colors.red)
        ),
        gap,
        Text("D+${now.difference(firstDay).inDays + 1}", style: textTheme.displayMedium)
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