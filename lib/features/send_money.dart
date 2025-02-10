import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SendMoneyScreen extends StatelessWidget {
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> sendMoney(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        await Dio().post('https://jsonplaceholder.typicode.com/posts', data: {
          "amount": amountController.text,
        });
        Fluttertoast.showToast(msg: "Transaction Successful!");
        Navigator.pop(context);
      } catch (e) {
        Fluttertoast.showToast(msg: "Transaction Failed!");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Send Money')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter amount';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => sendMoney(context),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
