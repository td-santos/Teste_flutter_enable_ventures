import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 4, color: Colors.white)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Olá, ',
                  style:TextStyle(fontSize: 22,fontWeight: FontWeight.w300, letterSpacing: 1),
                ),
                Text('Nome',
                  style:TextStyle(fontSize: 22,fontWeight: FontWeight.w600, letterSpacing: 1),
                )
              ],
            ),
            Container(
              width: 60,
            )
          ],
        ),
      ),
    );
  }
}
