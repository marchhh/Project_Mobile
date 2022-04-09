import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../product/products_item.dart';

class ItemDetail extends StatefulWidget {
  static const routeName = '/ItemDetail';
  const ItemDetail({Key? key}) : super(key: key);
  @override
  _ItemDetailState createState() => _ItemDetailState();
}
class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as ProductItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('M-Keycap Shop',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('M-Keycap Shop',style:GoogleFonts.kanit(fontSize: 30.0)),
            Image.asset('assets/images/${item.image}',),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ชื่อสินค้า : ''${item.name}' ,style: GoogleFonts.kanit(fontSize: 25.0)),
                  Text('ราคา : '   '${item.price} ''บาท',style:GoogleFonts.kanit(fontSize: 25.0)),
                  Text('จำนวนสินค้า : '   '${item.amount} ''ชิ้น',style:GoogleFonts.kanit(fontSize: 25.0)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                          },
                          icon:Icon(Icons.add_shopping_cart_outlined) ,
                          label: Text(' คลิกเพื่อต้องการซื้อสินค้า',style: TextStyle(fontSize : 23.0,color: Colors.white,fontWeight:FontWeight.bold),)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
