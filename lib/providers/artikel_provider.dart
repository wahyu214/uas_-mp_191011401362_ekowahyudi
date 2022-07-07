import 'package:flutter/cupertino.dart';
import 'package:uas/models/detail_artikel_model.dart';
import 'package:uas/models/artikel_model.dart';
import 'package:uas/services/artikel_service.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _ArtikelService = ArtikelService();
  ArtikelModel artikelModel = ArtikelModel();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  // Show List Resep Data
  showListArtikel() async {
    artikelModel = await _ArtikelService.getArtikel();
    notifyListeners();
  }

  // Show Detail Resep Data
  showDetailArtikel(String? id) async {
    detailArtikelModel = await _ArtikelService.getDetailArtikel(key: id);
    notifyListeners();
  }
}

class ArtikelDetailProvider with ChangeNotifier {
  final ArtikelService _ArtikelService = ArtikelService();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  showDetailArtikel(String? id) async {
    // detailResepM odel = await _ResepService.getDetailResep(key: id);
    print('id $id');
    notifyListeners();
  }
}
