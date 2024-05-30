import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageViewDetails extends StatefulWidget {
  const ImageViewDetails(
      {super.key, required this.index, required this.images});
  final int index;
  final List<String> images;
  @override
  State<ImageViewDetails> createState() => _ImageViewDetailsState();
}

class _ImageViewDetailsState extends State<ImageViewDetails> {
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhotoViewGallery.builder(
            itemCount: widget.images.length,
            pageController: controller,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(widget.images[index]),
                initialScale: PhotoViewComputedScale.contained * .85,
              );
            })
      ],
    );
  }
}
