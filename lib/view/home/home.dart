import 'package:flutter/material.dart';
import 'card_section/card.dart';
import 'expense_sectoin/expense.dart';
import 'wallet_header/wallet_header.dart';
import 'package:complex1/exports/configs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 15),
              WalletHeader(),
              Expanded(
                child: CardSection(),
              ),
              Expanded(
                child: ExpenseSection(),
              )
              
            ],
          ),
        )
      ),
    );
  }
}