import 'package:flutter/material.dart';
import 'Banner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home.dart';
void main() => runApp(main0());

class main0 extends StatelessWidget {
  // const main0({super.key});
  List<Map<String, dynamic>> arrayTest = [
    {
      'url':'https://media.zid.store/cdn-cgi/image/f=auto/https://media.zid.store/7c5475b0-26d7-4fbc-a0c0-fec766eab698/0e683151-ca99-4833-a306-e578ed9e9083.jpg',
      'name':'كرسي استرخاء'
    },
    {
      'url':'https://eg-rv.homzmart.net/catalog/product/s/0/s05_copy_1.jpg',
      'name':'كرسي استرخاء'
    },

    {
      'url':'https://cdn.salla.sa/xXae/KRm62g990mUnfNy6P2PQwsj5dXH5C4t8h66ba9X6.jpg',
      'name':'2كرسي استرخاء'
    },

    {
      'url':'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
      'name':'2كرسي استرخاء'
    },    {
      'url':'https://media.zid.store/cdn-cgi/image/f=auto/https://media.zid.store/7c5475b0-26d7-4fbc-a0c0-fec766eab698/0e683151-ca99-4833-a306-e578ed9e9083.jpg',
      'name':'كرسي استرخاء'
    },
    {
      'url':'https://eg-rv.homzmart.net/catalog/product/s/0/s05_copy_1.jpg',
      'name':'كرسي استرخاء'
    },

    {
      'url':'https://cdn.salla.sa/xXae/KRm62g990mUnfNy6P2PQwsj5dXH5C4t8h66ba9X6.jpg',
      'name':'2كرسي استرخاء'
    },

    {
      'url':'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
      'name':'2كرسي استرخاء'
    },


];

  final List<String> listIMage = [
    'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
    'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
    'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
    'https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: const Color(0xFF414141),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text("Home"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color(0xFF1F1F1F),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("0"),),
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  CustomContainer(imageUrl: "https://athome-eg.com/image/cache/catalog/Dining-Chair-DC03-550x550.jpg",text: Text("اهلا بك .",
          
                    style: GoogleFonts.cairo(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
          
          
                  )),
                  SizedBox(height: 10,),
                  Expanded(
                child: SingleChildScrollView( 
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(1),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: arrayTest.map(
                      (e) => Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(e['url']),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(1),
                                  Colors.black.withOpacity(.4)
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(e['name'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                SizedBox(height: 90),
                                Container(
                                  height: 40,
                                  margin: EdgeInsets.symmetric(horizontal: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFffffff),
                                  ),
                                  child: Center(
                                      child: Text("تسوق الان",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
      theme: ThemeData(
        primaryColor: Color(0xFF6527BE),
        textTheme: GoogleFonts.tajawalTextTheme(Theme.of(context).textTheme).copyWith(
          bodyText1: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
