import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../product/products_item.dart';
import 'detail_item_page.dart';


class ItemList extends StatefulWidget {
  static const routeName = '/item_list_pages';
  const ItemList({Key? key}) : super(key: key);
  @override
  _ItemListState createState() => _ItemListState();
}
class _ItemListState extends State<ItemList> {
  var items = [
    ProductItem(
        id: 1,
        name: 'คีย์บอร์ด Tsunami Outemu MK-03 TKL',
        price: '฿690',
        image: 'key1.jpg',
        amount: '24'
    ),
    ProductItem(
        id: 2,
        name: 'คีย์บอร์ด Keychron Q1 Knob Hot Swap',
        price: '฿6,590',
        image: 'key2.jpg',
        amount: '5'
    ),
    ProductItem(
        id: 3,
        name: 'คีย์บอร์ด Akko PC75B Year of Tiger 2022',
        price: '฿4,190',
        image: 'key3.jpg',
        amount: '13'
    ),
    ProductItem(
        id: 4,
        name: 'คีย์บอร์ดไร้สาย Keydous NJ80',
        price: '฿4,590',
        image: 'key4.jpg',
        amount: '18'
    ),
    ProductItem(
        id: 5,
        name: 'คีย์บอร์ด Leopold FC900R Mechanical Keyboard',
        price: '฿4,390',
        image: 'key5.jpg',
        amount: '42'
    ),
    ProductItem(
        id: 6,
        name: 'คีย์บอร์ด Akko 5108S World Tour Tokyo OSA',
        price: '฿3,490',
        image: 'key6.jpg',
        amount: '6'
    ),
    ProductItem(
        id: 7,
        name: 'คีย์บอร์ด Womier K66 V2 Hot Swap RGB 65%',
        price: '฿2,590',
        image: 'key7.jpg',
        amount: '17'
    ),
    ProductItem(
        id: 8,
        name: 'คีย์บอร์ด Logitech G213 Prodigy(TH)',
        price: '1,390',
        image: 'key8.jpg',
        amount: '27'
    ),
    ProductItem(
        id: 9,
        name: 'คีย์บอร์ด Loga Yaksa PRO Printstream TKL(EN)',
        price: '฿3,490',
        image: 'key9.jpg',
        amount: '13'
    ),
    ProductItem(
        id: 10,
        name: 'คีย์บอร์ดไร้สาย Keychron K6 Wireless Mechanical',
        price: '฿3,890',
        image: 'key10.jpg',
        amount: '28'
    ),
    ProductItem(
        id: 11,
        name: 'คีย์บอร์ด Ducky One 2 Rosa Special Edition',
        price: '฿3,990',
        image: 'key11.jpg',
        amount: '34'
    ),
    ProductItem(
        id: 12,
        name: 'คีย์บอร์ดไร้สาย Logitech G913 TKL LIGHTSPEED',
        price: '฿6,590',
        image: 'key12.jpg',
        amount: '14'
    ),
    ProductItem(
        id: 13,
        name: 'คีย์บอร์ด Steelseries Apex 7 TKL Ghost(EN)',
        price: '฿7,290',
        image: 'key13.jpg',
        amount: '19'
    ),
    ProductItem(
        id: 14,
        name: 'คีย์บอร์ด Glorious GMMK PRO Pre-Built ANSI Set',
        price: '฿12,990',
        image: 'key14.jpg',
        amount: '3'
    ),
    ProductItem(
        id: 15,
        name: 'คีย์บอร์ดไร้สาย Skyloong GK68XS Custom',
        price: '฿2,590',
        image: 'key15.jpg',
        amount: '5'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/black.png'),
                    fit: BoxFit.fill
                )
            ),
            child: SafeArea(
              child: Center(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index){
                      var item = items[index];
                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child:
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context,
                                ItemDetail.routeName,
                                arguments: item);
                          },
                          child:Padding(
                            padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/${item.image}',
                                    width: 150.0,
                                    height: 150.0,),
                                  SizedBox(width: 8.0,),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item.name,
                                            style: GoogleFonts.kanit(fontSize: 23.0)),
                                        Text('${item.price} ''บาท',
                                            style: GoogleFonts.kanit(fontSize: 23.0)),
                                      ]
                                  )
                                ]
                            ),

                          ),
                        ),
                      );
                    }
                ),
              ),
            )
        )
    );
  }
}
