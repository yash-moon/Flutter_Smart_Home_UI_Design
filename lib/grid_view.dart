import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home_ui/appliance_box.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List<ApplianceBox> items = [
    ApplianceBox(
      title: 'Bedroom',
      boxInfo: '2 Devices',
    ),
    ApplianceBox(
      title: 'Living Room',
      image: SvgPicture.asset('assets/sofa.svg'),
      boxInfo: '7 Devices',
    ),
    ApplianceBox(
      title: 'Kitchen',
      image: SvgPicture.asset('assets/fridge.svg'),
      boxInfo: '5 Devices',
    ),
    ApplianceBox(
      title: 'Bedroom',
      boxInfo: '2 Devices',
    ),
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 20, 18, 18),
      child: StaggeredGridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: items,
        staggeredTiles: [
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 210),
          StaggeredTile.extent(1, 210),
          StaggeredTile.extent(1, 150),
        ],
      ),
    );
  }
}
