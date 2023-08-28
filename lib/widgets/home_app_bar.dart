import 'package:flutter/material.dart';

import '../screens/filtered_screen.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {

  final List<Map<String, dynamic>> _allPlaces = [
    {"id": 1, "name": "Galata Kulesi", "image_path": "images/galata_kulesi.jpg", "location": "41.025990, 28.974620", "description": "Panoramik İstanbul manzarasına sahip tarihi kule.", "Class": "Tarihi"},
    {"id": 2, "name": "Ayasofya", "image_path": "images/ayasofya.jpg", "location": "41.008610, 28.980159", "description": "Tarihi bir cami ve müze.", "Class": "Tarihi"},
    {"id": 3, "name": "Rumeli Hisarı", "image_path": "images/rumeli_hisarı.jpg", "location":  "41.090468, 29.051491", "description": "İstanbul Boğazı üzerindeki tarihi bir kaledir.", "Class": "Tarihi"},
    {"id": 4, "name": "Kız Kulesi", "image_path": "images/kiz_kulesi.jpg", "location": "41.021899, 29.001355", "description": "İstanbul Boğazı üzerindeki tarihi kule.", "Class": "Tarihi"},
    {"id": 5, "name": "Kapalı Çarşı", "image_path": "images/kapali_carsi.jpg", "location": "41.010485, 28.968148", "description": "İstanbul'un tarihi ve ünlü çarşısıdır. El işlemeleri, takılar, deri ürünleri ve daha birçok şey bulabileceğiniz bir yerdir.", "Class": "Kültürel"},
    {"id": 6, "name": "Mısır Çarşısı", "image_path": "images/misir_carsisi.jpg", "location": "41.016855, 28.970259", "description": "Baharatların, kuruyemişlerin, çeşitli gıda ürünlerinin ve hediyelik eşyaların satıldığı tarihi bir çarşıdır. Renkli atmosferiyle ünlüdür.", "Class": "Kültürel"},
    {"id": 7, "name": "Ortaköy Camii", "image_path": "images/ortakoy_camii.jpg", "location": "41.048917, 29.026594", "description": "İstanbul Boğazı'nın kıyısında bulunan tarihi bir camiidir. Mimari zarafeti ve boğaz manzarasıyla tanınır.", "Class": "Tarihi"},
    {"id": 8, "name": "Sultan Ahmet Camii", "image_path": "images/sultan_ahmet_camii.jpg", "location": "41.005500, 28.976927", "description": "İstanbul'un en ünlü camilerinden biridir. Mavi mozaikleri ve büyüleyici mimarisiyle tanınır. Ayasofya ile birlikte Sultanahmet Meydanı'nda yer alır.", "Class": "Tarihi"},
    {"id": 9, "name": "Taksim Meydanı", "image_path": "images/taksim_meydani.jpg", "location": "41.036667, 28.985000", "description": "İstanbul'un en ünlü meydanlarından biridir. Alışveriş, eğlence ve restoranlarla dolu bir bölgedir. Aynı zamanda İstiklal Caddesi'ne giden başlangıç noktasıdır.", "Class": "Kültürel"},
    {"id": 10, "name": "Topkapı Sarayı", "image_path": "images/topkapi_sarayi.jpg", "location": "41.011420, 28.983373", "description": "Osmanlı İmparatorluğu'nun hükümet merkezi olan ve şu anda bir müze olarak kullanılan tarihi bir saraydır. Saray, zengin koleksiyonu ve etkileyici bahçeleriyle ünlüdür.", "Class": "Favoriler"},
    {"id": 11, "name": "Yerebatan Sarnıcı", "image_path": "images/yerebatan_sarnici.jpg", "location": "41.008437, 28.977321", "description": "İstanbul'un en büyük yer altı sarnıcıdır. Tarih ve mistisizm severler için ilgi çekici bir mekandır. Sütunları ve suyun altında yansıyan ışıklarıyla dikkat çeker.", "Class": "Doğal"},
    {"id": 12, "name": "Belgrad Ormanı", "image_path": "images/belgrad_ormani.jpg", "location": "41.162060, 29.078570", "description": "İstanbul'da yer alan büyük bir ormandır. Doğa yürüyüşleri ve piknik için popüler bir yerdir.", "Class": "Doğal"},
    {"id": 13, "name": "Atatürk Arboretumu", "image_path": "images/ataturk_arboretumu.jpg", "location": "41.160171, 29.104169", "description": "İstanbul'da yer alan geniş bir arboretumdur. Farklı bitki türlerini keşfetmek için ideal bir yerdir.", "Class": "Doğal"},
    {"id": 14, "name": "Çamlıca Tepesi", "image_path": "images/camlica_tepesi.jpg", "location": "41.020369, 29.029156", "description": "İstanbul'un en yüksek noktası olan Çamlıca Tepesi, muhteşem İstanbul manzarası sunar. Piknik alanları ve çay bahçeleri bulunur.", "Class": "Doğal"},
    {"id": 15, "name": "Gülhane Parkı", "image_path": "images/gulhane_parki.jpg", "location": "41.011305, 28.983313", "description": "Topkapı Sarayı'nın yanında yer alan tarihi bir parktır. Yeşillikleri, tarihi kalıntıları ve güzel peyzajıyla ziyaretçileri cezbeder.", "Class": "Doğal"},
  ];

  bool isExpanded = false;
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocus = FocusNode();

  @override
  void dispose() {
    searchController.dispose();
    searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),

          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isExpanded
                    ? Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                          controller: searchController,
                          focusNode: searchFocus,
                          onSubmitted: (value) {
                            List<Map<String, dynamic>> filteredData = _allPlaces.where((place) => place['name'].toString().toLowerCase().contains(value.toLowerCase())).toList();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FilteredPage(filteredData),
                              ),
                            );
                          }, // Arama butonu her değiştiğinde.
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isExpanded = false;
                            searchController.clear();
                            searchFocus.unfocus();
                          });
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
                    : InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = true;
                    });
                    searchFocus.requestFocus();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
