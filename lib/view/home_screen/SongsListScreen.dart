




import 'package:flutter/material.dart';

import 'package:spotify/utils/constants/color_constants.dart';


class SongsListScreen extends StatelessWidget {
  const SongsListScreen({super.key, required this.mainTitle, required this.songPosters, required this.subTexts, required this.lastTexts});
  final String mainTitle;
  final List<String>songPosters;
  final List< String> subTexts;
  final List< String> lastTexts;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainTitle,
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.bgBlack,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(songPosters[index]),
                      ),
                    ),
                    width: 140,
                    height: 140,
                  ),
                  SizedBox(height: 2),
                  Text(
                    subTexts[index],
                    style: TextStyle(
                      color: ColorConstants.mainWhite.withOpacity(0.5),
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    lastTexts[index],
                    style: TextStyle(
                      color: ColorConstants.mainWhite.withOpacity(0.5),
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemCount: songPosters.length,
          ),
        ),
      ],
    );
  }
}