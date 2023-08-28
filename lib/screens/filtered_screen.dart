import 'package:flutter/material.dart';
import 'package:trav/screens/post_screen.dart';
import 'package:trav/widgets/home_app_bar.dart';
import 'package:trav/widgets/nav_bar.dart';

class FilteredPage extends StatelessWidget {

  final List<Map<String, dynamic>> filteredData;

  const FilteredPage(this.filteredData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      drawer: const NavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final place = filteredData[index];
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              String cityName = place["name"];
                              String imagePath = place["image_path"];
                              String location = place["location"];
                              String description = place["description"];
                              int id = place["id"];

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                    id: id,
                                    cityName: cityName,
                                    imagePath: imagePath,
                                    location: location,
                                    description: description,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(place["image_path"]),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  place["name"],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}