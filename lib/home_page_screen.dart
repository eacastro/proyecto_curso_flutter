import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/api/api.dart';
import 'package:proyecto_platzi_curso_flutter/custom_gradient_button.dart';
import 'package:proyecto_platzi_curso_flutter/models/photos.dart';

class MyHomePage extends StatelessWidget {
  final API api = API();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platzi'),
      ),
      body: FutureBuilder<List<Photos>>(
        future: api.getPhotos(),
        builder: (BuildContext context, AsyncSnapshot<List<Photos>> snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage(snapshot.data[index].thumbnailUrl),
                    ),

                    title: Text(
                      snapshot.data[index].id.toString(),
                    ),
                    subtitle: Text('Descripción del álbum ${snapshot.data[index].albumId}'),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
