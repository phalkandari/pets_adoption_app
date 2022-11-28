import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PetListPage extends StatelessWidget {
  const PetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/add');
        },
        child: Icon(Icons.add),
      ),
      body: null,
    );
  }
}
