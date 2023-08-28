import 'package:flutter/material.dart';

class ImageViewPage extends StatefulWidget {

  final int id;
  const ImageViewPage({Key? key, required this.id,}) : super(key: key);

  @override
  State<ImageViewPage> createState() => ImageViewPageState();
}

class ImageViewPageState extends State<ImageViewPage> {

  List<Map<String, dynamic>> images = [
    {"id": 1, "image_path": ["images/galata_kulesi.jpg", "images/galata_kulesi_1.jpg", "images/galata_kulesi_2.jpg", "images/galata_kulesi_3.jpg"]},
    {"id": 2, "image_path": ["images/ayasofya.jpg", "images/ayasofya_1.jpg", "images/ayasofya_2.jpg", "images/ayasofya_3.jpg"]},
    {"id": 3, "image_path": ["images/rumeli_hisari.jpg", "images/rumeli_hisari_1.jpg", "images/rumeli_hisari_2.jpg", "images/rumeli_hisari_3.jpg"]},
    {"id": 4, "image_path": ["images/kiz_kulesi.jpg", "images/kiz_kulesi_1.jpg", "images/kiz_kulesi_2.jpg", "images/kiz_kulesi_3.jpg"]},
    {"id": 5, "image_path": ["images/kapali_carsi.jpg", "images/kapali_carsi_1.jpg", "images/kapali_carsi_2.jpg", "images/kapali_carsi_3.jpg"]},
    {"id": 6, "image_path": ["images/misir_carsisi.jpg", "images/misir_carsisi_1.jpg", "images/misir_carsisi_2.jpg", "images/misir_carsisi_3.jpg"]},
    {"id": 7, "image_path": ["images/ortakoy_camii.jpg", "images/ortakoy_camii_1.jpg", "images/ortakoy_camii_2.jpg", "images/ortakoy_camii_3.jpg"]},
    {"id": 8, "image_path": ["images/sultan_ahmet_camii.jpg", "images/sultan_ahmet_camii_1.jpg", "images/sultan_ahmet_camii_2.jpg", "images/sultan_ahmet_camii_3.jpg"]},
    {"id": 9, "image_path": ["images/taksim_meydani.jpg", "images/taksim_meydani_1.jpg", "images/taksim_meydani_2.jpg", "images/taksim_meydani_3.jpg"]},
    {"id": 10, "image_path": ["images/topkapi_sarayi.jpg", "images/topkapi_sarayi_1.jpg", "images/topkapi_sarayi_2.jpg", "images/topkapi_sarayi_3.jpg"]},
    {"id": 11, "image_path": ["images/yerebatan_sarnici.jpg", "images/yerebatan_sarnici_1.jpg", "images/yerebatan_sarnici_2.jpg", "images/yerebatan_sarnici_3.jpg"]},
    {"id": 12, "image_path": ["images/belgrad_ormanı.jpg", "images/belgrad_ormanı_1.jpg", "images/belgrad_ormanı_2.jpg", "images/belgrad_ormanı_3.jpg"]},
    {"id": 13, "image_path": ["images/ataturk_arboretumu.jpg", "images/ataturk_arboretumu_1.jpg", "images/ataturk_arboretumu_2.jpg", "images/ataturk_arboretumu_3.jpg"]},
    {"id": 14, "image_path": ["images/camlica_tepesi.jpg", "images/camlica_tepesi_1.jpg", "images/camlica_tepesi_2.jpg", "images/camlica_tepesi_3.jpg"]},
    {"id": 15, "image_path": ["images/gulhane_parki.jpg", "images/gulhane_parki_1.jpg", "images/gulhane_parki_2.jpg", "images/gulhane_parki_3.jpg"]},
  ];

  @override
  Widget build(BuildContext context) {

    List<String> imagePaths = images.firstWhere((item) => item['id'] == widget.id)['image_path'] ?? [];
    return Scaffold(
      body: PageView.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, pagePosition) {
            return Image.asset(
              imagePaths[pagePosition],
              fit: BoxFit.cover,
            );
          }
          ),
    );
  }
}