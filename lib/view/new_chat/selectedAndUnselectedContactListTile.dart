import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/model/Cubits/cubit/selected_cubits_cubit.dart';
import 'package:whatsapp_clone/view/contants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

class selectedAndUnselectedContactListTile extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedCubitsCubit, SelectedCubitsState>(
      builder: (context, state) {
        bool currentIsSelected = state is SelectedCubitsUpdate
            ? (state).selectedContacts.contains(name)
            : false;
        return ListTile(
          leading: Stack(clipBehavior: Clip.none, children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: backgroundColor,
              child: SvgPicture.asset(
                width: 32,
                img,
              ),
            ),
            currentIsSelected
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
          title: Text(name,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          subtitle: Text(subname,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
        );
      },
    );
  }
}
