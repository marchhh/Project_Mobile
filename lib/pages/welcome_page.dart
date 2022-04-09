import 'package:flutter/material.dart';
import 'home_page.dart';

class WelcomePage extends StatefulWidget {
  static const routeName = '/welcome';
  const WelcomePage({Key? key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Text('M-Keycap shop',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/keywel.png'),
                    fit: BoxFit.fill
                )
            ),
            child: SafeArea(
                child: Center(
                    child: Stack(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  [
                                    const SizedBox(
                                      height: 145.0,
                                    ),
                                    const SizedBox(
                                      height: 145.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text('ยินดีต้อนรับเข้าสู่ M-Keycap shop',style: TextStyle(fontSize : 30.0,color: Colors.yellow,fontWeight:FontWeight.bold),)
                                      ,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 100.0),
                                      child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                              HomePage.routeName,);
                                          },
                                          icon:Icon(Icons.shopping_bag_outlined) ,
                                          label: Text(' คลิกเพื่อเลือกดูสินค้า',style: TextStyle(fontSize : 27.0,color: Colors.white,fontWeight:FontWeight.bold),)),
                                      ),
                                  ]
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
