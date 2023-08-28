import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Emirhan Arslantaş"),
            accountEmail: const Text("emirhan.arslantas@outlook.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/ben.jpg'),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(image: AssetImage('images/istanbulBg.jpg'),fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Giriş Yap'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Konum'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.travel_explore_outlined),
            title: const Text('Gezi Oluştur'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Çıkış Yap'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}