import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexpenses/widgets/user_transactions.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home: MyHomePage() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class MyHomePage extends StatelessWidget {
  //String titleInput = "";
  //String amountInput = "";
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text("Merhaba"),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
