import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wall_pic_app/ui/router/router.dart';

import '../../../config/constans.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.imageUrl,
    required this.favorite,
    required this.colors,
    required this.id,
  }) : super(key: key);

  final String imageUrl, favorite, id;
  final List<String> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: HexColor('#333333'),
      ),
      child: Column(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(15.0),
          //   child: FadeInImage.memoryNetwork(
          //     imageScale: 0.5,
          //     placeholder: kTransparentImage,
          //     image: imageUrl,
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              // fit: BoxFit.contain,
              // imageBuilder: (context, imageProvider) =>
              //     Container(
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           // invertColors: gray,
              //           image: imageProvider,
              //           fit: BoxFit.contain,
              //           // colorFilter: freeOrder
              //           //     ? ColorFilter.mode(gray, BlendMode.color)
              //           //     : null,
              //         ),
              //       ),
              //     ),
              errorWidget: (context, url, error) => Container(
                height: 100.h,
                color: HexColor('#333333'),
                child: Image.asset(
                  "assets/images/placeholder_image.png",
                  color: Colors.white,
                  // width: 60.w,
                  // height: 60.h,
                ),
              ),

              placeholder: (context, url) => Container(
                  width: 120.h,
                  color: HexColor('#333333'),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/icons/placeholder.svg',
                    color: Colors.white,
                    height: 60.h,
                  )
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/favorite.svg',
                      height: 14,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      favorite,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/view.svg',
                      height: 18,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      favorite,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
