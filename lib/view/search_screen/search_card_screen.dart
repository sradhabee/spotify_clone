
// import 'package:flutter/material.dart';
// import 'package:spotify/utils/constants/color_constants.dart';

// class searchCardScreen extends StatelessWidget {
//   const searchCardScreen({
//     super.key,
//     required this.searchText,
//     required this.colors,
//     required this.searchUrl,
//   });

//   final String searchText;
//   final Color colors;
//   final String searchUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 8,  ),
//       height: 300,
//       width: 250,
//       decoration: BoxDecoration(
//         color: colors,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       margin: EdgeInsets.all(8),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             searchText,
//             style: TextStyle(
//               color: ColorConstants.mainWhite,
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Spacer(),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               ClipRect(
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   widthFactor: 0.8, 
//                   child: SizedBox(
//                     height: 60,
//                     width: 60,
//                     child: Transform.rotate(
//                       angle: 0.3, 
//                       child: Image.network(
//                         searchUrl,
                        
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constants.dart';

class searchCardScreen extends StatelessWidget {
  const searchCardScreen({
    super.key,
    required this.searchText,
    required this.colors,
    required this.searchUrl,
  });

  final String searchText;
  final Color colors;
  final String searchUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8,top: 5),
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            searchText,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          ClipRect(
            child: Align(
              alignment: Alignment.center,
              widthFactor: 0.60, 
              child: Transform.rotate(
                angle: 0.4, 
                child: Image.network(
                  searchUrl,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}