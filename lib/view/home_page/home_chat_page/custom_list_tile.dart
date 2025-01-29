import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/view/contants.dart';

class cutomListTileForPerson extends StatelessWidget {
  const cutomListTileForPerson({
    super.key,
    required this.name,
    required this.subtitle,
    required this.ontap,
  });
  final String name, subtitle;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 110, 138, 161),
          radius: 30,
          child: SvgPicture.asset('assets/person-non.svg', width: 40),
        ),
        title: Text(name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: blackColor)),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.done_all_outlined),
                SizedBox(width: 3),
                Text(subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey)),
              ],
            ),
            Divider(height: 7),
          ],
        ),
      ),
    );
  }
}
