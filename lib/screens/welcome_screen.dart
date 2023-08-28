import 'package:flutter/material.dart';
import 'package:trav/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7,)),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "İstanbul'a",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Hoş geldiniz!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Bu büyülü şehirde tarih, kültür ve keşif dolu bir maceraya hazır ol. İstanbul'un eşsiz güzellikleri, muhteşem manzaraları ve tarihi mekanları seni bekliyor. Bu uygulama ile İstanbul'un gizli hazinelerini keşfedebilir ve unutulmaz anılara şahitlik edebilirsin. Hazır mısın? İstanbul'un renkli dünyasına adım at ve kendini bu büyülü şehirde kaybet. Unutulmaz bir seyahate başlamak için haydi keşfe çık!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>HomePage(),
                    ));
                  },
                    child: Ink(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}