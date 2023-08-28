import 'package:flutter/material.dart';
import 'package:trav/screens/filtered_screen.dart';
import 'package:trav/screens/post_screen.dart';
import 'package:trav/widgets/home_app_bar.dart';
import 'package:trav/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Map<String, dynamic>> _allPlaces = [
    {"id": 1, "name": "Galata Kulesi", "image_path": "images/galata_kulesi.jpg", "location": "41.025990, 28.974620", "description": "Panoramik İstanbul manzarasına sahip tarihi kule.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 2, "name": "Ayasofya", "image_path": "images/ayasofya.jpg", "location": "41.008610, 28.980159", "description": "Tarihi bir cami ve müze.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 3, "name": "Rumeli Hisarı", "image_path": "images/rumeli_hisarı.jpg", "location":  "41.090468, 29.051491", "description": "İstanbul Boğazı üzerindeki tarihi bir kaledir.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 4, "name": "Kız Kulesi", "image_path": "images/kiz_kulesi.jpg", "location": "41.021899, 29.001355", "description": "İstanbul Boğazı üzerindeki tarihi kule.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 5, "name": "Kapalı Çarşı", "image_path": "images/kapali_carsi.jpg", "location": "41.010485, 28.968148", "description": "İstanbul'un tarihi ve ünlü çarşısıdır. El işlemeleri, takılar, deri ürünleri ve daha birçok şey bulabileceğiniz bir yerdir.", "Class": "Kültürel", "Favoriler": "False"},
    {"id": 6, "name": "Mısır Çarşısı", "image_path": "images/misir_carsisi.jpg", "location": "41.016855, 28.970259", "description": "Baharatların, kuruyemişlerin, çeşitli gıda ürünlerinin ve hediyelik eşyaların satıldığı tarihi bir çarşıdır. Renkli atmosferiyle ünlüdür.", "Class": "Kültürel", "Favoriler": "False"},
    {"id": 7, "name": "Ortaköy Camii", "image_path": "images/ortakoy_camii.jpg", "location": "41.048917, 29.026594", "description": "İstanbul Boğazı'nın kıyısında bulunan tarihi bir camiidir. Mimari zarafeti ve boğaz manzarasıyla tanınır.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 8, "name": "Sultan Ahmet Camii", "image_path": "images/sultan_ahmet_camii.jpg", "location": "41.005500, 28.976927", "description": "İstanbul'un en ünlü camilerinden biridir. Mavi mozaikleri ve büyüleyici mimarisiyle tanınır. Ayasofya ile birlikte Sultanahmet Meydanı'nda yer alır.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 9, "name": "Taksim Meydanı", "image_path": "images/taksim_meydani.jpg", "location": "41.036667, 28.985000", "description": "İstanbul'un en ünlü meydanlarından biridir. Alışveriş, eğlence ve restoranlarla dolu bir bölgedir. Aynı zamanda İstiklal Caddesi'ne giden başlangıç noktasıdır.", "Class": "Kültürel", "Favoriler": "False"},
    {"id": 10, "name": "Topkapı Sarayı", "image_path": "images/topkapi_sarayi.jpg", "location": "41.011420, 28.983373", "description": "Osmanlı İmparatorluğu'nun hükümet merkezi olan ve şu anda bir müze olarak kullanılan tarihi bir saraydır. Saray, zengin koleksiyonu ve etkileyici bahçeleriyle ünlüdür.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 11, "name": "Yerebatan Sarnıcı", "image_path": "images/yerebatan_sarnici.jpg", "location": "41.008437, 28.977321", "description": "İstanbul'un en büyük yer altı sarnıcıdır. Tarih ve mistisizm severler için ilgi çekici bir mekandır. Sütunları ve suyun altında yansıyan ışıklarıyla dikkat çeker.", "Class": "Tarihi", "Favoriler": "False"},
    {"id": 12, "name": "Belgrad Ormanı", "image_path": "images/belgrad_ormani.jpg", "location": "41.162060, 29.078570", "description": "İstanbul'da yer alan büyük bir ormandır. Doğa yürüyüşleri ve piknik için popüler bir yerdir.", "Class": "Doğal", "Favoriler": "False"},
    {"id": 13, "name": "Atatürk Arboretumu", "image_path": "images/ataturk_arboretumu.jpg", "location": "41.160171, 29.104169", "description": "İstanbul'da yer alan geniş bir arboretumdur. Farklı bitki türlerini keşfetmek için ideal bir yerdir.", "Class": "Doğal", "Favoriler": "False"},
    {"id": 14, "name": "Çamlıca Tepesi", "image_path": "images/camlica_tepesi.jpg", "location": "41.020369, 29.029156", "description": "İstanbul'un en yüksek noktası olan Çamlıca Tepesi, muhteşem İstanbul manzarası sunar. Piknik alanları ve çay bahçeleri bulunur.", "Class": "Doğal", "Favoriler": "False"},
    {"id": 15, "name": "Gülhane Parkı", "image_path": "images/gulhane_parki.jpg", "location": "41.011305, 28.983313", "description": "Topkapı Sarayı'nın yanında yer alan tarihi bir parktır. Yeşillikleri, tarihi kalıntıları ve güzel peyzajıyla ziyaretçileri cezbeder.", "Class": "Doğal", "Favoriler": "False"},
  ];

  var category = [
    'Doğal',
    'Kültürel',
    'Tarihi',
    'Favoriler'
  ];

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
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: _allPlaces.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                String cityName = _allPlaces[index]["name"];
                                String imagePath = _allPlaces[index]["image_path"];
                                String location = _allPlaces[index]["location"];
                                String description = _allPlaces[index]["description"];
                                int id = _allPlaces[index]["id"];

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
                                width: 160,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(_allPlaces[index]["image_path"]),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (_allPlaces[index]["Favoriler"] == "True") {
                                            _allPlaces[index]["Favoriler"] = "False";
                                          } else {
                                            _allPlaces[index]["Favoriler"] = "True";
                                          }
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          _allPlaces[index]["Favoriler"] == "True"
                                              ? Icons.bookmark
                                              : Icons.bookmark_border_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        _allPlaces[index]["name"],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for(int i = 0; i < category.length; i++)
                          InkWell(
                            onTap: (){
                              switch (i) {
                                case 0:
                                  final List<Map<String, dynamic>> dogal = _allPlaces.where((place) => place['Class'] == 'Doğal').toList();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FilteredPage(dogal),
                                    ),
                                  );
                                  break;
                                case 1:
                                  final List<Map<String, dynamic>> kulturel = _allPlaces.where((place) => place['Class'] == 'Kültürel').toList();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FilteredPage(kulturel),
                                    ),
                                  );
                                  break;
                                case 2:
                                  final List<Map<String, dynamic>> tarihi = _allPlaces.where((place) => place['Class'] == 'Tarihi').toList();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FilteredPage(tarihi),
                                    ),
                                  );
                                  break;
                                case 3:
                                  final List<Map<String, dynamic>> tarihi = _allPlaces.where((place) => place['Favoriler'] == 'True').toList();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FilteredPage(tarihi),
                                    ),
                                  );
                                  break;
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.27,
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  category[i],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _allPlaces.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              String cityName = _allPlaces[index]["name"];
                              String imagePath = _allPlaces[index]["image_path"];
                              String location = _allPlaces[index]["location"];
                              String description = _allPlaces[index]["description"];
                              int id = _allPlaces[index]["id"];
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                    id: id ,
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
                                  image: AssetImage(_allPlaces[index]["image_path"]),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _allPlaces[index]["name"],
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

