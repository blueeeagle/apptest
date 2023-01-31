
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Container(
            width: 40,
            height: 40 ,
            alignment: Alignment.center,

            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.circular(5)
            ),
            child:   Icon(Icons.menu,size: 24,color: Colors.white,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Container(
              width: 40,
              height: 40 ,

              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.circular(5)
              ),
              child:   ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",fit: BoxFit.cover,))
          ),
        )
      ],
    );
  }
}
