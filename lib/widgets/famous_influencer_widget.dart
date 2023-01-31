
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FamousInfluencerWidget extends StatelessWidget {
   FamousInfluencerWidget({Key? key,this.imageUrl,this.name}) : super(key: key);

  String ? imageUrl;
  String ? name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 70,
          height: 70,

          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(40)

          ),
          child: ClipRRect(

            child: Image.network(imageUrl!,fit: BoxFit.fill,),borderRadius: BorderRadius.circular(40),),
        ),
        SizedBox(height: 10,),
        Text(name!,style: GoogleFonts.roboto(fontSize: 10,color: Colors.white,letterSpacing: 2),),

      ],
    );;
  }
}
