import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 15,),
          _myTitle(context)
        ],
      ),
    );
  }
  Widget _myTitle (BuildContext context) {
    return SizedBox(
          width: double.maxFinite,
          child: Text(
            'MY PORTFOLIO',
            style: TextStyle(
              fontSize: 30.0,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.w300
            ),
            ),
        );
  }
}