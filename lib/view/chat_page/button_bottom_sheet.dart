import 'package:flutter/material.dart';

class ButtonBotttomSheet extends StatelessWidget {
  const ButtonBotttomSheet({
    super.key,
    required this.name,
    required this.color,
    required this.icon,
    required this.ontap,
  });
  final String name;
  final Color color;
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 27,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          ),
          SizedBox(height: 5),
          Text(name,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
