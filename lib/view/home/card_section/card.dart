import 'package:flutter/material.dart';
import 'package:complex1/exports/configs.dart';

import 'card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Card Selected',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              width: SizeConfig.getWidth(context),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                boxShadow: AppColors.shadow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 110,
                    bottom: -200,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white38,
                        boxShadow: AppColors.shadow,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: -300,
                    top: -100,
                    bottom: -100,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white38,
                        boxShadow: AppColors.shadow,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 15,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          boxShadow: AppColors.shadow,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  CardDetails()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
