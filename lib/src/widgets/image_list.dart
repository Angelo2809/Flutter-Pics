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
        //return Image.network(images[index].url);
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.cyan),
          ),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                child: Image.network(images[index].url),
                padding: const EdgeInsets.only(bottom: 8.0), 
              ),
              Text(images[index].title),
            ],
          ),
        );
      },
    );
  }
}