import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CharacterItem extends StatelessWidget {
  final String name;
  final Image image;
  final String height;
  final String date;

  CharacterItem(this.name, this.image, this.height, this.date);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                image,
                Text(
                  height,
                  style: TextStyle(
                    fontSize: 10
                  )
                ),
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: 10
                    ),
                  )
              ],
            ),
          )

        ],
      ),
    );
  }
}
