// import 'package:flutter/material.dart';

// class ImageCircular extends StatelessWidget {
//   final String imageUri;
//   final double width;
//   final double height;

//   const ImageCircular({
//     Key? key,
//     required this.imageUri,
//     required this.width,
//     required this.height,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//           border: Border.all(
//               width: 4, color: Theme.of(context).scaffoldBackgroundColor),
//           boxShadow: [
//             BoxShadow(
//                 spreadRadius: 2,
//                 blurRadius: 10,
//                 color: Colors.black.withOpacity(0.1),
//                 offset: Offset(0, 10))
//           ],
//           shape: BoxShape.circle,
//           image: DecorationImage(
//               fit: BoxFit.cover,
//               image: NetworkImage(
//                 imageUri,
//               ))),
//     );
//   }
// }
