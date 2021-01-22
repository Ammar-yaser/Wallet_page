import 'package:flutter/material.dart';
import 'package:complex1/exports/configs.dart';
import 'charts.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 20),
      child: Row(
        children: [
          Flexible(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: expenses
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                AppColors.chartColors[expenses.indexOf(e)],
                          ),
                          SizedBox(width: 10),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Charts(),
          ),
        ],
      ),
    );
  }
}
