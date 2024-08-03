import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/view/search_screen/search_card_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
         leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        
        backgroundColor: Colors.transparent,
        title: Text("Search",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 25,fontWeight: FontWeight.w500),),
        actions: [Icon(Icons.camera_alt_outlined,color: ColorConstants.mainWhite,size: 28,),SizedBox(width: 14,)],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(color: ColorConstants.mainWhite,
              borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(Icons.search,color: Color.fromARGB(255, 64, 58, 58),size: 28,),
                  SizedBox(width: 10,),
                  Text("What do you want to listen to?",style: TextStyle(color: Color.fromARGB(255, 64, 58, 58),fontWeight: FontWeight.bold,fontSize: 18),)
                ],
              ),
            ),
            SizedBox(height: 12,),
            Text("Browse all",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Expanded(
              child: GridView.builder(
                itemCount: DummyDb.searchText.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                
                crossAxisCount: 2,childAspectRatio: 2), itemBuilder: (context, index) {
                return searchCardScreen(searchText: DummyDb.searchText[index], colors: DummyDb.colors[index], searchUrl: DummyDb.searchUrl[index],);
              },),
            )
          ],
        ),
      ),
    );
  }
}

