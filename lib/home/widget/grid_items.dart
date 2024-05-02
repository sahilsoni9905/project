import 'package:flutter/material.dart';
import 'package:intel_traffic/common/active_cases.dart';
import 'package:intel_traffic/common/complaint_screen.dart';
import 'package:intel_traffic/home/screens/complaint_raise_screen.dart';
import 'package:intel_traffic/home/screens/profileScreen.dart';
import 'package:intel_traffic/home/widget/Category_grid_items.dart';
import 'package:intel_traffic/utils.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    void changeScreenToActiveCase() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => ActiveCaseScreen(),
        ),
      );
    }

    void changeScreenToComplaint() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => ComplainPage(),
        ),
      );
    }

    void changeScreenToProfile() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => ProfileScreen(),
        ),
      );
    }

    final List<Function> list = [
      changeScreenToProfile,
      changeScreenToActiveCase,
      changeScreenToComplaint,
      changeScreenToActiveCase,
      changeScreenToActiveCase,
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7),
      itemCount: 5,
      itemBuilder: (context, index) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return GestureDetector(
              onTap: () {
                list[index]();
              },
              child: CategoryGridItems(
                imageUrl: gridImageLink[index],
                text: gridName[index],
                size: constraints,
              ),
            );
          },
        );
      },
    );
  }
}
