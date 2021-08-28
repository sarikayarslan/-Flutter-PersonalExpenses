import 'package:flutter/material.dart';
import 'transaction.dart';

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

//create new class for "home" property of MaterialApp()
class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Column(
              children: transactions.map((tx) {
                return Card(
                    child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        tx.amount.toString() +"₺",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.green),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          tx.date.toString(),
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
