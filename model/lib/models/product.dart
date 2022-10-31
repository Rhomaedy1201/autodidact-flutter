import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  @required
  String imageUrl;
  @required
  int harga;
  @required
  String deskripsi;

  Product(this.judul, this.imageUrl, this.harga, this.deskripsi);
}
