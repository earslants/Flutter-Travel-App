import 'package:flutter/material.dart';
import 'package:trav/screens/image_view_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class PostBottomBar extends StatelessWidget {

  final int id;
  final String description;
  final String cityName;
  final String location;
  final String imagePath;

  const PostBottomBar({
    Key? key,
    required this.id,
    required this.description,
    required this.cityName,
    required this.location,
    required this.imagePath,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cityName,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageViewPage(id: id),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.cover,
                              opacity: 0.4,
                            ),
                          ),
                          child: const Text(
                            "Galeri",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: (){
                    launch('https://www.google.com/maps/dir/?api=1&destination=$location');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}