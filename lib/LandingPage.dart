import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lattice_scanner_app/BottomNavigationPages/ActivityPage.dart';
import 'package:lattice_scanner_app/BottomNavigationPages/ProfilePage.dart';
import 'package:lattice_scanner_app/QRScanner.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'BottomNavigationPages/HomePage.dart';
import 'Constants/consts.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;


  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ActivityPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset("Images/LatticesemiconLogo.png",width: 150,)),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: primaryColor),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon:  FaIcon(
                  FontAwesomeIcons.userCircle,
                ),
                onPressed: () {



                },
              )
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chartLine),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'Profile',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 225,
              child: Carousel(
                autoScroll: true,
                activateIndicatorColor: Colors.white,
                indicatorBarColor: Colors.white,
                // widgets
                items: [
                  Image.asset("Images/Lattice_banner_1.jpg",fit: BoxFit.fill,),
                  Image.asset("Images/Lattice_banner_2.jpg",fit: BoxFit.fill,),
                  Image.asset("Images/Lattice_banner_3.png",fit: BoxFit.fill,),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: (){

          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) {
              return QRScanner();
            }),
          );

        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(FontAwesomeIcons.qrcode,color: primaryColor,size: 35,),
        ),

      ),


    );
  }


}
