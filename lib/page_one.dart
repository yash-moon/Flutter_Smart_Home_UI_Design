import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home_ui/custom_nav_bar.dart';
import 'package:smart_home_ui/grid_view.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202227),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35, left: 25),
            child: Text(
              'Home Sweet Home 🖐🏻',
              style: TextStyle(
                fontFamily: 'SF Rounded',
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/lightning.png',
                  scale: 0.99,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '11,5',
                            style: TextStyle(
                              fontFamily: 'SF Rounded',
                              fontSize: 54,
                              color: Colors.white.withOpacity(0.78),
                              fontWeight: FontWeight.w200,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Kwh',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white.withOpacity(0.7),
                              fontFamily: 'SF Rounded',
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Power usage for today',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.72,
                          color: Colors.white.withOpacity(0.14),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: 413,
            height: 106,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/profile_pic.png',
                ),
                Container(
                  padding: EdgeInsets.only(left: 2, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Name',
                        style: TextStyle(
                          fontFamily: 'SF Rounded',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white.withOpacity(0.25),
                          ),
                          Text(
                            'Notting Hill London',
                            style: TextStyle(
                              fontFamily: 'SF Rounded',
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.25),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //

                Container(
                  width: 77,
                  height: 29,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.01, 0.13),
                      end: Alignment(0.97, 0.84),
                      colors: [Color(0xff79fd7b), Color(0xff3dcd98)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'OWNER',
                      style: TextStyle(
                        fontFamily: 'SF Rounded',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black.withOpacity(0.72),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //
          Expanded(
            child: MyGridView(),
          ),
          //
        ],
        //
      ),
      // Borrom bar
      floatingActionButton: Transform.scale(
        scale: 1,
        child: Transform.translate(
          offset: Offset(0, 18),
          child: GestureDetector(
            onTap: () {
              print('FAB tapped');
            },
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [Color(0xff7afc79), Color(0xff3ccb97)],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 18,
                    color: Color(0xff7afc79).withOpacity(0.26),
                  )
                ],
              ),
              child: SvgPicture.asset(
                'assets/spark.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: ClipPath(
          clipper: NavbarClipper(),
          child: BottomAppBar(
            elevation: 0,
            color: Color(0xff3f4144).withOpacity(0.31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      color: Colors.white.withOpacity(0.1),
                      size: 30,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(0.1),
                      size: 30,
                    ),
                    onPressed: null),
                //
                SizedBox(
                  height: 80,
                  width: 60,
                ),
                IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white.withOpacity(0.1),
                      size: 30,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white.withOpacity(0.1),
                      size: 30,
                    ),
                    onPressed: null),
              ],
            ),
          ),
        ),
      ),
      //
    );
  }
}
