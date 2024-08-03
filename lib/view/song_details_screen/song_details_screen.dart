
import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/library_screen/library_card.dart';
import 'package:spotify/view/track_view_screen/track_view_screen.dart';

class SongDetailsScreen extends StatefulWidget {
  const SongDetailsScreen({
    super.key,
    required this.imageUrl,
    required this.subText,
  });
  final String imageUrl;
  final String subText;

  @override
  State<SongDetailsScreen> createState() => _SongDetailsScreenState();
}

class _SongDetailsScreenState extends State<SongDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 14),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConstants.greyMain),
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: Colors.transparent,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: ColorConstants.mainWhite,
                              ),
                              hintText: "Find in playlist",
                              hintStyle: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorConstants.greyMain),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Sort",
                            style: TextStyle(
                                color: ColorConstants.mainWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 42),
                    Center(
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.imageUrl)),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      widget.subText,
                      style: TextStyle(
                          color: ColorConstants.mainWhite.withOpacity(0.5)),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          ImageConstants.LOGO_PNG,
                          height: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Spotify",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "2,236,181 saves •2h59min",
                      style: TextStyle(
                          color: ColorConstants.mainWhite.withOpacity(0.5),
                          fontSize: 12),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 25,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorConstants.greyMain),
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiLxAyAMUfD-DgWDBDPhljC8KcOva61u870w&s"))),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.add_circle_outline_outlined,
                          color: ColorConstants.mainWhite.withOpacity(0.5),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_circle_down_outlined,
                          color: ColorConstants.mainWhite.withOpacity(0.5),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.more_vert,
                          color: ColorConstants.mainWhite.withOpacity(0.5),
                        ),
                        Spacer(),
                        Icon(
                          Icons.shuffle_rounded,
                          color: ColorConstants.spotifyGreen,
                          size: 38,
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.play_circle_fill,
                          color: ColorConstants.spotifyGreen,
                          size: 38,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: DummyDb.libraryCard.length,
                      itemBuilder: (context, index) {
                        return LibraryCard(
                          libraryCard: DummyDb.libraryCard[index],
                          titleName: DummyDb.titleName[index].toString(),
                          subName: DummyDb.subName[index].toString(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TrackViewScreen(),));},
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
      ),
    );
  }
}