
import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/library_screen/library_card.dart';
import 'package:spotify/view/session_screen/session_screen.dart';
import 'package:spotify/view/track_view_screen/track_view_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset(ImageConstants.profile_png),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Your Library",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add, color: ColorConstants.mainWhite, size: 36),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstants.greyMain),
                        ),
                        child: Center(
                          child: Text(
                            "Playlists",
                            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstants.greyMain),
                        ),
                        child: Center(
                          child: Text(
                            "Artists",
                            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstants.greyMain),
                        ),
                        child: Center(
                          child: Text(
                            "Albums",
                            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstants.greyMain),
                        ),
                        child: Center(
                          child: Text(
                            "Podcasts and shows",
                            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SessionScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: ColorConstants.greyMain),
                          ),
                          child: Center(
                            child: Text(
                              "Sessions",
                              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.double_arrow_rounded, color: ColorConstants.mainWhite),
                    SizedBox(width: 5),
                    Text(
                      "Recently Played",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.dashboard_customize_outlined, color: ColorConstants.mainWhite),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: DummyDb.libraryCard.length,
                    itemBuilder: (context, index) {
                      return LibraryCard(
                        libraryCard: DummyDb.libraryCard[index],
                        titleName: DummyDb.titleName[index].toString(),
                        subName: DummyDb.subName[index].toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrackViewScreen(),));
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 3, 28),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiuQc3hfCrqjRG51i51CMgeZh2x4UPcMDblzBsT_1kqL8gLoeOkk9zvNi2KBz7OFWx7J8&usqp=CAU"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Angaaron (From 'Pushpa)",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Shreya Ghoshal",
                          style: TextStyle(
                              color: ColorConstants.mainWhite.withOpacity(0.5),
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_circle_outline_outlined,
                      color: ColorConstants.mainWhite.withOpacity(0.5),
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.play_arrow_rounded,
                      color: ColorConstants.mainWhite,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.more_vert,
                      color: ColorConstants.mainWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

