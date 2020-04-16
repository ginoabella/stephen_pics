import 'package:flutter/material.dart';

import 'package:pic/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildImage(images[index]);
      },
    );
  }

  Widget _buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          SizedBox(height: 8),
          Text(image.title),
        ],
      ),
    );
  }
}
