import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/contants.dart';
import 'package:whatsapp_clone/view/new_chat/SelectedContact.dart';
import 'package:whatsapp_clone/view/new_chat/new_chat_Page.dart';
import 'package:whatsapp_clone/view/new_chat/selectedAndUnselectedContactListTile.dart';

class NewAddGroupPage extends StatefulWidget {
  const NewAddGroupPage({super.key});

  @override
  State<NewAddGroupPage> createState() => _NewAddGroupPageState();
}

List<selectedAndUnselectedContactListTile> groups = [];

class _NewAddGroupPageState extends State<NewAddGroupPage> {
  @override
  void initState() {
    super.initState();
    groups.clear();
    print(groups.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddGroupAppBar(),
      body: Column(
        children: <Widget>[
          Visibility(
            visible: groups.isNotEmpty,
            child: Card(
              elevation: 7,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
              ),
              child: Container(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: groups.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SelectedContact(
                        name: groups[index].name,
                        ontap: () {
                          setState(() {
                            SelectContacts[index].isSelected = false;
                            groups.removeAt(index);
                            print(groups);
                            print(SelectContacts[index].isSelected);
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (!SelectContacts[index].isSelected) {
                    setState(() {
                      SelectContacts[index].isSelected = true;
                      groups.add(SelectContacts[index]);
                      print(groups.length);
                      print(SelectContacts[index].isSelected);
                    });
                  }
                },
                child: selectedAndUnselectedContactListTile(
                  name: SelectContacts[index].name,
                  subname: SelectContacts[index].subname,
                  img: SelectContacts[index].img,
                  backgroundColor: SelectContacts[index].backgroundColor,
                ),
              );
            },
          ))
        ],
      ),
    );
  }

  AppBar AddGroupAppBar() {
    return AppBar(
      backgroundColor: darkGreen,
      iconTheme: IconThemeData(color: Colors.white),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('New Group',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Text('Add Participants',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300)),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            )),
      ],
    );
  }
}

List<selectedAndUnselectedContactListTile> SelectContacts = [
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Mahmoud Elsayed',
    subname: 'Dodo Moto',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
  selectedAndUnselectedContactListTile(
    name: 'Nadiir Magdy',
    subname: 'Elrgollla',
    img: 'assets/person-non.svg',
    backgroundColor: Colors.grey,
  ),
];
