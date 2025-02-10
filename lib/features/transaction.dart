import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  Future<List<dynamic>> fetchTransactions() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction History')),
      body: FutureBuilder<List<dynamic>>(
        future: fetchTransactions(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('₹${snapshot.data![index]['id']}'),
                subtitle: Text(snapshot.data![index]['title']),
              );
            },
          );
        },
      ),
    );
  }
}
