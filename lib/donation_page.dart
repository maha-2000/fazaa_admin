import 'package:admin_panel/constant.dart';
import 'package:admin_panel/my_card.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: const [
            MyCard(
              name: "آية حمودة",
              phone: "0987463675",
              type: "",
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
              location: " الشيخ نجار",
              icon: Icon(
                Icons.stream,
                color: Colors.orangeAccent,
              ),
              status: "قيد المعالجة",
            ),
            MyCard(
              name: "محمد عبد الرحيم",
              phone: "0987463675",
              type: "طوفان",
              location: "بستان القصر",
              icon: Icon(Icons.stream, color: Colors.orangeAccent),
              status: "قيد المعالجة",
            ),
          ],
        ),
      ),
    );
  }
}
