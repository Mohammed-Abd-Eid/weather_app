import 'package:flutter/material.dart';

Widget title({
  required String text,
  required double size,
  required FontWeight? weight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: Colors.black,
    ),
  );
}

Widget text({
  required String text,
  double size = 14,
  Color? color = Colors.grey,
}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w500),
  );
}

List<Widget> itemWeek() {
  return [
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
    Column(
      children: [
        text(text: "Friday", color: Colors.black),
        Image.asset(
          "assets/img/1.png",
          height: 40,
          width: 40,
        ),
        title(text: "28", size: 20, weight: FontWeight.normal),
      ],
    ),
  ];
}

Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300:
      return Image.asset('assets/img/1.png');
    case >= 300 && < 400:
      return Image.asset('assets/img/2.png');
    case >= 500 && < 600:
      return Image.asset('assets/img/3.png');
    case >= 600 && < 700:
      return Image.asset('assets/img/4.png');
    case >= 700 && < 800:
      return Image.asset('assets/img/5.png');
    case == 800:
      return Image.asset('assets/img/6.png');
    case > 800 && <= 804:
      return Image.asset('assets/img/7.png');
    default:
      return Image.asset('assets/img/7.png');
  }
}
