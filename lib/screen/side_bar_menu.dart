import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';


class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
     // backgroundColor: Colors.transparent,
      child: ListView(
           padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(popularPlantsImage1,width: 90,height: 90,),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.green),
            accountName: const Text(userName),
            accountEmail: const Text(eMail),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
           const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
          ),
        ],
      ),
    );
  }
}
