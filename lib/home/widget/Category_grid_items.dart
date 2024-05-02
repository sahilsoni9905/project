import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryGridItems extends StatelessWidget {
  const CategoryGridItems(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.size})
      : super(key: key);

  final String text;
  final String imageUrl;
  final BoxConstraints size;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(10), // Same rounded corners for decoration
          gradient: LinearGradient(
            // Gradient background in grey
            colors: [
              Colors.grey.shade200,
              Colors.grey.shade300,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: size.maxHeight *
                  0.5, // Adjust the height of the image as needed
            ),
            SizedBox(height: 8), // Add spacing between image and text
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
