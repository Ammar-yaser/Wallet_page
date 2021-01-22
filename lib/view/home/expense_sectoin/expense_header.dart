import 'package:flutter/material.dart';
import 'package:complex1/exports/configs.dart';

class ExpenseHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              'Monthly Expenses',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    boxShadow: AppColors.shadow,
                    borderRadius: BorderRadius.circular(10)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
              SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    boxShadow: AppColors.shadow,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
