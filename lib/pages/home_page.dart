import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.pinkAccent,
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.white54))),
        child: BottomNavigationBar(
          currentIndex: _page,
          onTap: (page) {
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Clients")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text("Orders")),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text("Products")),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page){
          setState(() {
            _page = page;
          });
        },
        children: <Widget>[
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
