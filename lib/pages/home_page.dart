
import "package:flutter/material.dart";
import 'package:shop_app_flutter/pages/cart_page.dart';
import 'package:shop_app_flutter/widgets/product_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentpage = 0;

  List<Widget> pages = const [ ProductList(),Cartpage()];

 @override
 Widget build(BuildContext context) {
  return Scaffold(
     body: IndexedStack(
      index: currentpage,
      children: pages,
     ),
     bottomNavigationBar: BottomNavigationBar(
      iconSize: 35,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      onTap: (value) {
        setState(() {
          currentpage = value;
        });
      },
      currentIndex: currentpage,
      items: const [
        BottomNavigationBarItem(
          icon:Icon(Icons.home), 
          label: '',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.shopping_cart),
          label: '',
        ),    
      ],
    ),
  );
  }
}
           