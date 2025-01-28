import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/view/contants.dart';

class contactListTile extends StatelessWidget {
  contactListTile({
    super.key,
    required this.name,
    required this.subname,
    required this.img,
    required this.backgroundColor,
    required this.ontap,
  });
  final String name, subname, img;
  final Color backgroundColor;
  Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child: SvgPicture.asset(
            width: 32,
            img,
          ),
        ),
        title: Text(name,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        subtitle: Text(subname,
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class selectedAndUnselectedContactListTile extends StatefulWidget {
  selectedAndUnselectedContactListTile({
    super.key,
    required this.name,
    required this.subname,
    required this.img,
    required this.backgroundColor,
    this.isSelected = false,
  });
  final String name, subname, img;
  final Color backgroundColor;
  bool isSelected;
  @override
  State<selectedAndUnselectedContactListTile> createState() =>
      _selectedAndUnselectedContactListTileState();
}

class _selectedAndUnselectedContactListTileState
    extends State<selectedAndUnselectedContactListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(clipBehavior: Clip.none, children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: widget.backgroundColor,
          child: SvgPicture.asset(
            width: 32,
            widget.img,
          ),
        ),
        widget.isSelected
            ? Positioned(
                right: 5,
                bottom: -2,
                child: CircleAvatar(
                    radius: 11,
                    backgroundColor: darkGreen,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    )),
              )
            : SizedBox(height: 1)
      ]),
      title: Text(widget.name,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
      subtitle: Text(widget.subname,
          style: TextStyle(
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold)),
    );
  }
}
