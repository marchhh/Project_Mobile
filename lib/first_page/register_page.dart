import 'package:flutter/material.dart';
import '../model/Users.dart';
import 'start.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Register extends StatefulWidget {
  static const routeName = '/register';
  const Register({Key? key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  Users user = Users(phone: '', password: '', repassword: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครสมาชิก',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wall.png'),
                fit: BoxFit.fill
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/register.png",width: 200,height: 200,),
                Text('สมัครสมาชิกของ M-Keycap Shop',style: TextStyle(fontSize:30.0,color: Colors.black,fontWeight:FontWeight.bold)),
                const SizedBox(
                  height: 50.0,
                ),
                Text("ชื่อผู้ใช้",style: TextStyle(fontSize:23.0,color: Colors.black,fontWeight:FontWeight.bold),),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณากรอกชื่อผู้ใช้!"),
                  onSaved: (String? phone){
                    user.phone = phone!;
                  },
                ),
                SizedBox(height: 25,),
                Text("รหัสผ่าน",style: TextStyle(fontSize:23.0,color: Colors.black,fontWeight:FontWeight.bold),),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณากรอกรหัสผ่าน!"),
                  obscureText: true,
                  onSaved: (String? password) {
                    user.password = password!;
                  },
                ),
                SizedBox(height: 25,),
                Text("ยืนยันรหัสผ่าน",style: TextStyle(fontSize:23.0,color: Colors.black,fontWeight:FontWeight.bold),),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณายืนยันรหัสผ่าน!"),
                  obscureText: true,
                  onSaved: (String? repassword) {
                    user.repassword = repassword!;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const SizedBox(
                    height: 10.0,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("สมัครสมาชิก",style: TextStyle(fontSize:25.0,color: Colors.white,fontWeight:FontWeight.bold),),
                    onPressed: (){
                      if(formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        Navigator.pushNamed(context,
                          Start.routeName,);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}