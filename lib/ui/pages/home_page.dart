import 'package:flutter/material.dart';
import 'package:zero/ui/tabs/challenges_tab.dart';
import 'package:zero/ui/tabs/winners_tab.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _pageController;
  int _navigationIndex = 1;

  List<String> _bottomNavigationItemsTitles = [
    'Desafios', 'Vencedores', 'Definições',
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
      initialIndex: _navigationIndex,
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
          //TODO: replace with user image
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/profile'),
            child: Icon(Icons.account_circle, size: 45,),
          ),

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
          _loadIconsFromImage('notification.png')
        ],
      ),
    );
  }

  ImageIcon _loadIconsFromImage(String path){
    return ImageIcon(AssetImage(path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: _loadIconsFromImage("leaderboard.png"),
              title: Text(_bottomNavigationItemsTitles.elementAt(1))),
          BottomNavigationBarItem(
            icon: _loadIconsFromImage('ball.png'),
            title: Text(_bottomNavigationItemsTitles.elementAt(0),),
          ),
          BottomNavigationBarItem(
              icon: _loadIconsFromImage('settings.png'),
              title: Text(_bottomNavigationItemsTitles.elementAt(2))),
        ],
      ),
      body: Column(
        children: <Widget>[
          _buildCustomToolbar(),
          Expanded(
            flex: 2,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                WinnersTab(),
                ChallengesTab(),
                Container(child: Center(child: Text('Settings'),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
