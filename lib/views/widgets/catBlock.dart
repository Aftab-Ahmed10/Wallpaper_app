import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/category.dart';

class CatBlock extends StatelessWidget {
  String categoryName;
  String categoryImgSrc;
  CatBlock(
      {super.key, required this.categoryName, required this.categoryImgSrc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryScreen(
                    catName: categoryName, catImgUrl: categoryImgSrc)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  height: 50, width: 100, fit: BoxFit.cover, categoryImgSrc),
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              left: 30,
              top: 15,
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
