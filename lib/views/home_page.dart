import 'package:demo/controller/home_controller.dart';
import 'package:demo/widgets/app_bar.dart';
import 'package:demo/widgets/famous_influencer_widget.dart';
import 'package:demo/widgets/influencer_card.dart';
import 'package:demo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends GetView<HomeScreenController> {
  HomePage({Key? key}) : super(key: key);

  List a = ["https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80","https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GetBuilder<HomeScreenController>(builder: (HomeScreenController controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(

              slivers:[
                SliverToBoxAdapter(child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    AppHeader(),
                    SizedBox(height: 15,),
                    Text(controller.welcomeMsg,style: GoogleFonts.roboto(fontSize: 32,color: Colors.white,letterSpacing: 2),),
                    SizedBox(height: 5,),
                    Text(controller.userName,style: GoogleFonts.roboto(fontSize: 32,color: Colors.white,letterSpacing: 2),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[200],
                            ),
                            child: TextFieldWidget(),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 40,
                          height: 40,

                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.6),
                              borderRadius: BorderRadius.circular(10),

                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: [
                                  0.1,
                                  0.4,

                                ],
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.purple,

                                ],
                              )




                          ),
                          child:   Icon(LineIcons.fill,color: Colors.white,),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Famous Influencer",style: GoogleFonts.roboto(fontSize: 14,color: Colors.white,letterSpacing: 2),),

                        Text("View all",style: GoogleFonts.roboto(fontSize: 10,color: Colors.orange,letterSpacing: 2),),

                      ],
                    ),
                    SizedBox(height: 15,),

                  ],
                ),),
                SliverToBoxAdapter(
                  child: Container(
                    height: 100,
                    child: ListView.builder(
                        itemCount: controller.models.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index){

                          return FamousInfluencerWidget(imageUrl:controller.models[index].imageUrl,name: controller.models[index].name,);
                        }),
                  ),
                ),
                SliverToBoxAdapter(child: Column(children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Browse Influencer",style: GoogleFonts.roboto(fontSize: 14,color: Colors.white,letterSpacing: 2),),


                      Text("view all",style: GoogleFonts.roboto(fontSize: 10,color: Colors.orange,letterSpacing: 2),),

                    ],
                  ),
                  SizedBox(height: 15,),

                ],),),
                SliverToBoxAdapter(
                    child:Row(
                      children: [

                        Column(children: [
                          InfluencerCard(),

                          InfluencerCard(),
                          SizedBox(height: 30,),
                          InfluencerCard(),
                          SizedBox(height: 30,),
                        ],),SizedBox(width: 20,),
                        Column(children: [
                          SizedBox(height: 30,),
                          InfluencerCard(),

                          InfluencerCard(),
                          SizedBox(height: 30,),
                          InfluencerCard(),
                        ],)
                      ],
                    )
                )
              ]
          ),
        );
      },

      )
    );
  }
}
