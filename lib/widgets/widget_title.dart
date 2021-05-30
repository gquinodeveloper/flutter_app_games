import 'package:flutter/material.dart';

class WidgetTitle extends StatelessWidget {
  const WidgetTitle({Key key, this.title, this.horizontal}) : super(key: key);
  final title;
  final horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.0, horizontal: horizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.grey[300],
              ),
            ),
            child: Icon(Icons.dashboard, size: 15.0),
          ),
        ],
      ),
    );
  }
}
