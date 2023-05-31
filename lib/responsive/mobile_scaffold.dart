import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard_playground/responsive/constants.dart';
import 'package:flutter_responsive_dashboard_playground/util/my_box.dart';
import 'package:flutter_responsive_dashboard_playground/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (contextn, index) {
                    return const MyBox();
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (contextn, index) {
                  return const MyTile();
                }),
          ),
        ],
      ),
    );
  }
}
