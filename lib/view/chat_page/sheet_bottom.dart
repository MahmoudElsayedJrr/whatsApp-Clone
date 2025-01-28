import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/chat_page/button_bottom_sheet.dart';

class sheetBottom extends StatelessWidget {
  const sheetBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        height: MediaQuery.of(context).size.height / 3.3,
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 6,
          itemBuilder: (context, index) {
            return ButtonBotttomSheet(
              color: buttons[index].color,
              name: buttons[index].name,
              icon: buttons[index].icon,
              ontap: buttons[index].ontap,
            );
          },
        ),
      ),
    );
  }
}

List<ButtonBotttomSheet> buttons = [
  ButtonBotttomSheet(
      name: 'Documents',
      color: Colors.blue,
      icon: Icons.description_outlined,
      ontap: () {}),
  ButtonBotttomSheet(
      name: 'Camera',
      color: Colors.pinkAccent,
      icon: Icons.camera_alt_outlined,
      ontap: () {}),
  ButtonBotttomSheet(
      name: 'Gallery',
      color: Colors.purpleAccent,
      icon: Icons.photo_outlined,
      ontap: () {}),
  ButtonBotttomSheet(
      name: 'Audio',
      color: Colors.orange.shade300,
      icon: Icons.audio_file_outlined,
      ontap: () {}),
  ButtonBotttomSheet(
      name: 'Location',
      color: Colors.green,
      icon: Icons.location_on_outlined,
      ontap: () {}),
  ButtonBotttomSheet(
      name: 'Contacts',
      color: Colors.blueAccent,
      icon: Icons.person_2_outlined,
      ontap: () {}),
];
