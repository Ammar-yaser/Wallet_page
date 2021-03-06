import 'package:flutter/material.dart';

import 'expense_chart.dart';
import 'expense_header.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ExpenseHeader(),
          Expanded(child: PieChart()),
        ],
      ),
    );
  }
}


