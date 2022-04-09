import 'package:flutter/material.dart';
import 'item_list_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homeItem';
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var _selectedBottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M-Keycap Shop',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'ร้านค้า',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_basket_outlined),
            label: 'รายการ',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: _selectedBottomNavIndex == 0
          ? ItemList()
          : Container(
        child: Center(
          child: Text('รายการสั่งซื้อสินค้า',
              style: Theme.of(context).textTheme.headline1),
        ),
      ),
    );
  }
}
