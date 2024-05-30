import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return SafeArea(
      child: Stack(
        children: [
          PhotoViewGallery.builder(
              itemCount: widget.images.length,
              pageController: controller,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(widget.images[index]),
                  initialScale: PhotoViewComputedScale.contained * .85,
                );
              }),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 22.sp,
                )),
          )
        ],
      ),
    );
  }
}
