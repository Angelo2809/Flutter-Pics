import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';



class App extends StatefulWidget{
  @override
  AppState createState(){
    return AppState();
  }
}


class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images=[];

  AppState(){
    print('AppState criado com sucesso!');
  }

  void fetchImage() async{
    print('fetch on');
    counter++;
    var response = await get(
      Uri.parse('http://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(
      json.decode(response.body));
    setState((){
      images.add(imageModel);
    });
  }


  @override
  Widget build(BuildContext context) {
    print('Objeto Widget criado.');
    return MaterialApp(
      home: Scaffold(
        //body: Text('$counter'),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Imagens!'),
        ),
      ),
    );
  }
}
