import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final String imageUrl;
  final Text text;

  const CustomContainer({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(this.imageUrl),
            fit: BoxFit.cover,

          )
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors:[
                  Colors.black.withOpacity(1 ),
                  Colors.black.withOpacity(.4)
                ]
            )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
    this.text,
            SizedBox(height: 50,),
            Container(
             height: 50,
             margin: EdgeInsets.symmetric(horizontal: 10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: const Color(0xFF444444)

             ),
              child: Center(child: Text("تسوق الان",style: TextStyle(color: Colors.white,fontSize: 20))),
            )

          ],
        ),
      ),
    );
  }
}
