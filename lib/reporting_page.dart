import 'package:admin_panel/constant.dart';
import 'package:admin_panel/my_card.dart';
import 'package:flutter/material.dart';

class ReportingPage extends StatelessWidget {
  const ReportingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "البلاغات"
        ),
        centerTitle: true,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: const [
            MyCard(
              name: "فاطمة بيطار",
              phone: "0987463675",
              type: "حريق منزلي",
              location: "الشهباء القديمة",
              icon: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
              status: "تمت المعالجة",
            ),
            MyCard(
              name: "رؤى كنيفاتي ",
              phone: "0987463675",
              type: "خراب بسبب الزلزال",
              location: "المحافظة",
              icon: Icon(
                Icons.error_rounded,
                color: Colors.red,
              ),
              status: "تم الرفض",
            ),
            MyCard(
              name: "احمد فياض",
              phone: "0987463675",
              type: "مساعدة مالية ضرورية",
              location: "الزبدية",
              icon: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
              status: "تمت المعالجة",
            ),
            MyCard(
              name: "محمود سليم",
              phone: "0987463675",
              type: "حريق في مكان العمل",
              location: "الشيخ نجار",
              icon: Icon(
                Icons.stream,
                color: Colors.orangeAccent,
              ),
              status: "قيد المعالجة",
            ),
          ],
        ),
      ),
    );
  }
}
