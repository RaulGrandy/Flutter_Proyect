import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_projecto/temas/informacion.dart';
import './item_temas.dart';
import '../temas/Tema.dart';

class temascarousel extends StatelessWidget {
  List<Tema>temas;

  temascarousel(this.temas);
  
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(


      ),
      
      items: this.temas.map((e) => Itemtemas(e)).toList(),
    );
  
  }
}