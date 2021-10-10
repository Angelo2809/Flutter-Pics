import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;

  const ImageList(this.images);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index){
        //return Text(images[index].url);
      return Image.network(images[index].url);
      },
    );
  }
}