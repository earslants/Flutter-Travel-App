import 'package:flutter/material.dart';
import 'package:trav/widgets/post_app_bar.dart';
import 'package:trav/widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget {

  final int id;
  final String imagePath;
  final String description;
  final String cityName;
  final String location;

  const PostScreen({Key? key, required this.id,required this.imagePath, required this.description, required this.cityName, required this.location,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(
          id: id,
          description: description,
          cityName: cityName,
          location: location,
          imagePath: imagePath,
        ),
      ),
    );
  }
}