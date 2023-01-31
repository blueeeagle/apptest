import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfluencerCard extends StatelessWidget {
  const InfluencerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 280,
      width: 165,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [

              Container(
                height: 200,
                width: 180,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right:15,
                child: Container(
                    width: 24,
                    height: 24 ,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(.6),
                      //    borderRadius: BorderRadius.circular(5),

                    ),
                    child:  Icon(Icons.favorite_border,color: Colors.white,size:14 ,)
                ),
              ),

            ],
          ),
          SizedBox(height: 15,),
          Text("Hari krishna",style: GoogleFonts.roboto(fontSize: 10,color: Colors.white,letterSpacing: 2),),
          SizedBox(height: 5,),

          Text("150 k Followers",style: GoogleFonts.roboto(fontSize: 15,color: Colors.white,letterSpacing: 2),),

        ],

      ),
    );
  }
}
