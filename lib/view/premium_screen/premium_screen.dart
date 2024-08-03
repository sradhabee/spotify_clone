import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dummy_db.dart';

import 'package:spotify/utils/constants/color_constants.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/premium_screen/premium_container.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 215,
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,image:NetworkImage(DummyDb.bgUrl[0]))
                      
                    ),
                      
                   
                  ),
                 Container(
                  child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Image.asset(ImageConstants.sSPOTIFY_LOGO,color: ColorConstants.mainWhite,height: 24,),
                            Text("Premium",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorConstants.mainWhite),),
                            
                          ],
                        ),
                      Text("Listen without limits.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorConstants.mainWhite)),
                             Text("Try 3 months of",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorConstants.mainWhite)),
                              Text("Premium for 59/-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorConstants.mainWhite))
                    ],
                  ),
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [ColorConstants.mainBlack,Colors.transparent]
                       
                    )
                  ),
                 )
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstants.bgBlack
                ),
                child: Row(
                  children: [
                    Icon(Icons.notifications_on_outlined,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("Limited time offer",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: ColorConstants.mainWhite,
                ),
                child: Text("Get Premium Individual",style: TextStyle(color: ColorConstants.mainBlack,fontSize: 18,fontWeight: FontWeight.w500),),
              ),
               SizedBox(height: 15,),
               Text("Premium Individual only.59/- for 3 months,then 119/- per month after. Offer only available if you haven't tried Premium before.",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 14),),
               Text("Terms apply.",style: TextStyle(
                decoration: TextDecoration.underline,decorationColor: ColorConstants.greyMain,
                color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 14)),
                 Text("Offer ends August 25,2024.",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.5),fontSize: 14)),
                 Container(
                  decoration: BoxDecoration(color: ColorConstants.bgBlack,
                  borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Text("Why join Premium?",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 20,fontWeight: FontWeight.bold)),
                      Divider(),
                      Row(
                        children: [
                          Icon(Icons.queue_music,color: ColorConstants.mainWhite,size: 25,),
                          SizedBox(width: 10,),
                          Text("Ad-free music listening",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                           
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.download_for_offline_outlined,color: ColorConstants.mainWhite,size: 25),
                          SizedBox(width: 10,),
                          Text("Download to listen offline",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                        ],
                      ),
                      Row(
                        children: [
                           
                          Icon(Icons.shuffle_outlined,color: ColorConstants.mainWhite,size: 25),
                          SizedBox(width: 10,),
                          Text("Play songs in any order",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                          
                        ],
                      ),
                       Row(
                        children: [
                           
                          Icon(Icons.headset_outlined,color: ColorConstants.mainWhite,size: 25),
                          SizedBox(width: 10,),
                          Text("High audio quality",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                          
                        ],
                      ),
                       Row(
                        children: [
                           
                          Icon(Icons.people_outline,color: ColorConstants.mainWhite,size: 25),
                          SizedBox(width: 10,),
                          Text("Listen with friends in real time",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                          
                        ],
                      ),
                       Row(
                        children: [
                           
                          Icon(Icons.addchart_outlined,color: ColorConstants.mainWhite,size: 25),
                          SizedBox(width: 10,),
                          Text("Organise listening queue",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14)),
                          SizedBox(height: 28,),
                          
                        ],
                      ),
                    ],
                  ),
                 ),
                 SizedBox(height: 15,),
                 Text("Available plans",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(height: 12,),
                 PremiumContainer(heading:"Individual" , frstPrice: '59/-for 3 months', scndPrice: '119/-month after', descpText1: '• 1 Premium account', descpText2: '• Cancel anytime', cntText: 'Get Premium Individual', lastText: 'Premium individual only.59/- for 3 months, then 119/- per months after. Offer only available if you havent tried Premium before. Terms apply.Offer ends August 25,2024', descpText3: "• Subscribe or one-time payment",),
                 SizedBox(height: 20,),
                  PremiumContainer(heading: 'Mini', frstPrice: '25/- for 1 week', scndPrice: '259/-month after', descpText1: '• 1 mobile-only Premium account.', descpText2: '• Offline listening of up to 30 songs on 1 device', cntText: 'Get Premium Mini', lastText: 'Terms apply.', descpText3: '• One-time payment',),
                  SizedBox(height: 20,),
                   PremiumContainer(heading: 'Family', frstPrice: '179/- for 2 months', scndPrice: '179/-month after', descpText1: '• Upto 6 Premium accounts.', descpText2: '• Cancel anytime', cntText: 'Get Premium Family', lastText: '179/- for 2 months, then 179/- per month after.Offer only available if you have not tried Premium before. For upto 6 family members residing at the same address. Terms apply.', descpText3: '• Control content marked as explicit',),
                   SizedBox(height: 20,),
                   PremiumContainer(heading: 'Duo', frstPrice: '149/- for 2 months', scndPrice: '149/-month after', descpText1: '• 2 Premium accounts.', descpText2: '• Cancel anytime', cntText: 'Get Premium Family', lastText: '149/- for 2 months, then 149/- per month after.Offer only available if you have not tried Premium before. For upto 6 family members residing at the same address. Terms apply.', descpText3: '• Subscribe or one-time payment',),
                   SizedBox(height: 20,),
                   PremiumContainer(heading: 'Student', frstPrice: '59/- for 2 months', scndPrice: '59/-month after', descpText1: '• 1 verified Premium account.', descpText2: '• Cancel anytime', cntText: 'Get Premium Family', lastText: '59/- for 2 months, then 59/- per month after.Offer only available if you have not tried Premium before. For upto 6 family members residing at the same address. Terms apply.', descpText3: '• Subscribe or one-time payment',),
                   SizedBox(height: 20,),
                  
                  
                   
          
          
            ],
          ),
        ),
      ) ,
    );
  }
}
