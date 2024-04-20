import 'package:admin_panel/constant.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String phone;
  final String type;
  final String location;
  final Icon icon;
  final String status;

  const MyCard({
    super.key,
    required this.name,
    required this.phone,
    required this.type,
    required this.location,
    required this.icon,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40,right: 16,left: 16),
          child: Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(phone,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(type,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(location,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Container(
                child: icon,
              ),
              Text(status),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                  onPressed: () {},
                  child: const Text(
                    "More info",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
