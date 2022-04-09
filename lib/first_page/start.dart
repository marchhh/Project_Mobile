import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_620710689/first_page/register_page.dart';
import 'login.dart';


class Start extends StatefulWidget {
  static const routeName = '/home';
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('M-Keycap shop', style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        body:Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/black.png'),
                    fit: BoxFit.fill
                )
            ),
            child: SafeArea(
                child: Center(
                    child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset("assets/images/keystart2.png"),
                                Text('M-Keycap shop',style: TextStyle(fontSize : 40.0,color: Colors.white,fontWeight:FontWeight.bold),),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton.icon(onPressed: (){
                                      Navigator.pushNamed(context,
                                        Register.routeName,);
                                    }, icon:Icon(Icons.assignment_ind) ,
                                        label: Text(' สมัครสมาชิก',style: TextStyle(fontSize : 30.0,color: Colors.white,fontWeight:FontWeight.bold),)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton.icon(onPressed: (){
                                      Navigator.pushNamed(context,
                                        LoginPage.routeName,);
                                    }, icon:Icon(Icons.login) ,
                                        label: Text(' เข้าสู่ระบบ',style: TextStyle(fontSize : 30.0,color: Colors.white,fontWeight:FontWeight.bold),)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
