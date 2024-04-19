import 'package:admin_panel/constant.dart';
import 'package:admin_panel/my_card.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          "التبرعات",
        ),
        centerTitle: true,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: const [
            MyCard(
              name: "آية حمودة",
              phone: "0987463675",
              type: "تبرع بالمسكن",
              location: "منطقة الحمدانية",
              icon: Icon(
                Icons.error_rounded,
                color: Colors.red,
              ),
              status: "تم الرفض",
            ),
            MyCard(
              name: "ماهر الاحمد",
              phone: "0987463675",
              type: "تبرع بالوقت",
              location: "الموكامبو",
              icon: Icon(
                Icons.stream,
                color: Colors.orangeAccent,
              ),
              status: "قيد المعالجة",
            ),
            MyCard(
              name: "مها الياسين",
              phone: "0987463675",
              type: "تبرع بالوقت",
              location: "الاشرفية",
              icon: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
              status: "تمت المعالجة",
            ),
            MyCard(
              name: "محمود سليم",
              phone: "0987463675",
              type: "تبرع بالغذاء",
              location: "الزهراء",
              icon: Icon(
                Icons.stream,
                color: Colors.orangeAccent,
              ),
              status: "قيد المعالجة",
            ),
            MyCard(
              name: "محمد عبد الرحيم",
              phone: "0987463675",
              type: "تبرع بالمال",
              location: " حلب الجديدة",
              icon: Icon(Icons.stream, color: Colors.orangeAccent),
              status: "قيد المعالجة",
            ),
            MyCard(
              name: "لين الخالد",
              phone: "0987463675",
              type: "تبرع باللباس",
              location: "منطقة الحمدانية",
              icon: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
              status: "تم الرفض",
            ),
            MyCard(
              name: "ياسين الحسن",
              phone: "0987463675",
              type: "تبرع بالمسكن",
              location: "بستان القصر",
              icon: Icon(
                Icons.error_rounded,
                color: Colors.red,
              ),
              status: "تم الرفض",
            ),

          ],
        ),
      ),
    );
  }
}
