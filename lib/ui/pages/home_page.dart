import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _pageController;
  int _navigationIndex = 0;

  List<String> _bottomNavigationItemsTitles = [
    'Desafios', 'Vencedores', 'Notificações', 'Definições',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _pageController = TabController(
      vsync: this,
      length: _bottomNavigationItemsTitles.length,
    );
  }


  Widget _buildCustomToolbar(){
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 1,
              color: Colors.black12
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.account_circle, size: 50,),

          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Massango', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                ),

                Text('10.000Kzs', style: TextStyle(
                    fontSize: 12
                ),)
              ],
            ),
          ),

          Spacer(),
          Icon(Icons.notifications, size: 24,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(
          Icons.adjust,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _navigationIndex,
        onTap: (index) {
          setState(() {
            _navigationIndex = index;
            _pageController.animateTo(index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text(_bottomNavigationItemsTitles.elementAt(0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart,),
              title: Text(_bottomNavigationItemsTitles.elementAt(1))),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications,),
              title: Text(_bottomNavigationItemsTitles.elementAt(2))),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,),
              title: Text(_bottomNavigationItemsTitles.elementAt(3))),
        ],
      ),
      body: Column(
        children: <Widget>[
          _buildCustomToolbar(),
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height-128,
      child: TabBarView(
          controller: _pageController,
          children: [
            Container(child: Center(child: Text('Hello'),)),
            Container(child: Center(child: Text('He32424llo'),)),
            Container(child: Center(child: Text('H34645645645ello'),)),
          ]),
    )

    /*      TabBarView(
            controller: _pageController,
              children: [
            Container(child: Center(child: Text('Hello'),)),
            Container(child: Center(child: Text('He32424llo'),)),
            Container(child: Center(child: Text('H34645645645ello'),)),
          ])*/

        ],
      ),
    );
  }
}
