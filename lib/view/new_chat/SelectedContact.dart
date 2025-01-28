import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/contants.dart';

class SelectedContact extends StatelessWidget {
  const SelectedContact({
    super.key,
    required this.name,
    required this.ontap,
  });
  final String name;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 197, 197, 197),
                child: Icon(Icons.person, size: 25, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: ontap,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: darkGreen,
                    child: Icon(Icons.close, size: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 65,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
