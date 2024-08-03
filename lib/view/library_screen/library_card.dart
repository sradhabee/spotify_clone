
import 'package:flutter/material.dart';

import 'package:spotify/utils/constants/color_constants.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({
    super.key, required this.libraryCard, required this.titleName, required this.subName,
  });
  final String libraryCard;
  final String titleName;
  final String subName;

  @override
  Widget build(BuildContext context) {
    return  Container(
         margin: EdgeInsets.all(8),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.bgBlack),
          child: Row(
            children: [
              Image.network(fit: BoxFit.cover,libraryCard),
              SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titleName,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14,fontWeight: FontWeight.w400),),
                   Text(subName,style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 12,fontWeight: FontWeight.w600)),
                ],
              )
            ],
          ),
    
      );
    }
  }
